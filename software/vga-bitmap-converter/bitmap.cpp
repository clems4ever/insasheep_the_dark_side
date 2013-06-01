// ------------------------------------------------------------------
// To Comment from here when you want to comipile it without the libc
// ------------------------------------------------------------------

#include <iostream>
#include <fstream>
#include <stdio.h>

using namespace std;

// ---------
// till here
// ---------

#include "bitmap.h"

#ifndef _DEBUG_
// relative address of file length
#define ADDR_FILE_LENGTH (ADDR_BITMAP_RAM + 0x2)
#endif
#define L_FILE_LENGTH (size_t) 4

typedef long unsigned int size_t;


/*
 * Définition du header du BMP
 * ajout de #pragma pour empécher que le compilateur fasse des paddings automatiques
 */
#pragma pack(push, 1)
typedef struct BMPheader {
  // file header
  char bmLetters[2];
  unsigned int sizeOfFile;
  unsigned int reserved;
  unsigned int dataOffset;
    
  // info header
  unsigned int sizeOfHeader;
  unsigned int widthInPXs;
  int heightInPXs;
  unsigned short planes;
  unsigned short bitsPerPX;
  unsigned int compression;
  unsigned int imageSize;
  unsigned int horizontalResolution;
  unsigned int verticalResolution;
  unsigned int nbrOfColors;
  unsigned int nbrImportantColors;
} BMPheader;

typedef struct Pixel {
  unsigned char red;
  unsigned char green;
  unsigned char blue;
} Pixel;

#pragma pack(pop)

#ifdef _DEBUG_

/*
 * Fonctions d'affichages pour le debbugage
 */
void printfFileHeader(BMPheader* buffer);
void printRAWdata(unsigned char *buffer, unsigned int dataOffset, unsigned int padding, unsigned int rowSize, unsigned int nbrRows, unsigned short bitsPerPX);
void printVGAdata(unsigned char *buffer);

#endif

void recuperationPixels(unsigned char* buffer, unsigned int &offset, unsigned short int bitsPerPX, Pixel* px, unsigned int nbrPixelsARecuperer);

void writeInVGAMem(unsigned char* vga, unsigned int& offset, Pixel* px);
void writeHeaderInVGAMem(unsigned char* vga, unsigned int& offset, int height, unsigned int width);

/* ---------------------------------------
 * Redéfinition de fonctions de la STDLIBC
 * ---------------------------------------*/
unsigned int abs(int x);
void* memcpy(void *dest, const void *src, size_t n);


void refresh(void) {
  /* -------------------------------------
   * Étape 1 (pour le test seulement):
   * récupérer la taille totale du fichier
   * -------------------------------------*/

#ifdef _DEBUG_
  unsigned int fileLength;
  
  ifstream bitmapfile;
  bitmapfile.open(_FILENAME, ios_base::binary);

  // recuperation de la taille du fichier
  bitmapfile.seekg(2, ios_base::beg);
  bitmapfile.read((char*) &fileLength, L_FILE_LENGTH);
#endif
  
  
  /* ---------------------------------
   * Étape 2 (pour le test seulement):
   * récupération du fichier BMP
   * ---------------------------------*/

#ifdef _DEBUG_
  // allocation du buffer qui va accueillir le fichier
  unsigned char* buffer;
  buffer = new unsigned char[fileLength];
  
  // recuperation du fichier (header + data)

  bitmapfile.seekg(0, ios_base::beg);
  bitmapfile.read((char*) buffer, fileLength);
#endif

  
  /* -----------------------------------------------------
   * Étape 3 :
   * récupération des informations intéressantes du header
   * -----------------------------------------------------*/
  
  // extraction du header
  BMPheader* header;
#ifdef _DEBUG_
  header = (BMPheader*) buffer;
#else
  header = (BMPheader*) ADDR_BITMAP_RAM;
  //memcpy(header, (void*) ADDR_BITMAP_RAM, sizeof(BMPheader));
#endif
  
  // calcul de la taille du padding à la fin de chaque row
  // calcul de la taille d'un row
  unsigned int padding = ((header->bitsPerPX * header->widthInPXs) % 32) / 8;
#ifdef _DEBUG_
  unsigned int rowSize = padding + (header->bitsPerPX * header->widthInPXs / 8);

  printfFileHeader(header);

  cout << endl << "rowsize = " << rowSize << " and padding = " << padding << endl;
  cout << "nbrRows = " << header->heightInPXs << endl;
  cout << "total(Bytes) = " << header->heightInPXs * rowSize << endl;
  
  printRAWdata(buffer, header->dataOffset, padding, rowSize, header->heightInPXs, header->bitsPerPX);
#endif

  /* --------------------------------------------------
   * Étape 4 :
   * on recopie les pixels du BMP dans le buffer du VGA
   * --------------------------------------------------*/
  
#ifdef _DEBUG_
  unsigned char vga[abs(header->heightInPXs) * header->widthInPXs / 2 + (abs(header->heightInPXs) * header->widthInPXs % 2) + 8];//_TAILLE_BUFFER_VGA];
#endif
  
  unsigned int offsetBMP = header->dataOffset;
  unsigned int offsetVGA = 0;
  Pixel px[2];
  
  writeHeaderInVGAMem(vga, offsetVGA, header->heightInPXs, header->widthInPXs);

  for(unsigned int row=0; row < abs(header->heightInPXs); row++) {
    for(unsigned int pxNum=0; pxNum < header->widthInPXs;) {
      // On récupère les pixels ligne par ligne
      if(header->widthInPXs - pxNum == 1) { // si le nombre de pixel sur une row est impair
#ifdef _DEBUG_
	recuperationPixels(buffer, offsetBMP, header->bitsPerPX, px, 1);
#else
	recuperationPixels((unsigned char*) ADDR_BITMAP_RAM, offsetBMP, header->bitsPerPX, px, 1);
#endif
	pxNum++;
      } else {
#ifdef _DEBUG_	
	recuperationPixels(buffer, offsetBMP, header->bitsPerPX, px, 2);
#else
	recuperationPixels((unsigned char*) ADDR_BITMAP_RAM, offsetBMP, header->bitsPerPX, px, 2);
#endif
	pxNum += 2;
      }
      
      // on écrit les pixels dans la mémoire du VGA
#ifdef _DEBUG_
      writeInVGAMem(vga, offsetVGA, px);
#else
      writeInVGAMem((unsigned char*) ADDR_VGA_RAM, offsetVGA, px);
#endif
    }
    
    // On saute à la prochaine row
    offsetBMP += padding;
  }
  
#ifdef _DEBUG_
  printVGAdata(vga);
  
  bitmapfile.close();

  delete[] buffer;
#endif
}

void recuperationPixels(unsigned char* buffer, unsigned int &offset, unsigned short int bitsPerPX, Pixel* px, unsigned int nbrPixelsARecuperer) {
  unsigned int inter;

  // récupération de 2 pixels
  for(unsigned int i=0; i<nbrPixelsARecuperer; i++) {
    if(bitsPerPX == 16) { // 16 bits
      // Ne marche pas, mauvaise récuperation des données
      inter = *((unsigned short int*) &buffer[offset]);
      px[i].red = ((inter & 0x0000000F) >= 8) ? 255 : 0 ;
      px[i].green = ((inter & 0x000000F0) >= 8) ? 255 : 0 ;
      px[i].blue = ((inter & 0x00000F00) >= 8) ? 255 : 0;

      offset += 2;
    
    } else if(bitsPerPX == 24) { // 24 bits
      px[i].blue = (buffer[offset] >= 128) ? 255 : 0;
      px[i].green = (buffer[offset+1] >= 128) ? 255 : 0;
      px[i].red = (buffer[offset+2] >= 128) ? 255 : 0;

      offset += 3;
    
    } else { // 32 bits
      // buffer[offset] = alpha, ne nous interesse pas
      px[i].blue = buffer[offset+1];
      px[i].green = buffer[offset+2];
      px[i].red = buffer[offset+3];

      offset += 4;
    }
  }

  //cout << "px[0].red = " << (int) px[0].red << "\npx[0].green = " << (int) px[0].green << "\npx[0].blue = " << (int) px[0].blue << endl << endl;
  //cout << "px[1].red = " << (int) px[1].red << "\npx[1].green = " << (int) px[1].green << "\npx[1].blue = " << (int) px[1].blue << endl;
  //cout << endl;
}

void writeHeaderInVGAMem(unsigned char* vga, unsigned int& offset, int height, unsigned int width) {
  ((int*) vga)[0] = height;
  ((unsigned int*) vga)[1] = width;
  offset += 8;
}

void writeInVGAMem(unsigned char* vga, unsigned int& offset, Pixel* px) {
  unsigned char dataVGA;

  // adaptation des 2 pixels pour le format VGA
  dataVGA = 0x00; // Mise à 1 de tous les bits utiles

  // 1er pixel
  dataVGA |= (px[0].red == 255) ? 0x01 << 4 : 0x00;
  dataVGA |= (px[0].green == 255) ? 0x02 << 4 : 0x00;
  dataVGA |= (px[0].blue == 255) ? 0x04 << 4 : 0x00;
  //2eme pixel
  dataVGA |= (px[1].red == 255) ? 0x01 : 0x00;
  dataVGA |= (px[1].green == 255) ? 0x02 : 0x00;
  dataVGA |= (px[1].blue == 255) ? 0x04 : 0x00;
 
  //printf("0x%2.2X\n", dataVGA);

  memcpy(vga + offset, &dataVGA, 1);

  offset++;
}

#ifdef _DEBUG_

void printfFileHeader(BMPheader* header) {
  cout << "En tete du fichier (14Bytes):" << endl;

  printf("0x%2.2X\t\t\t'%c' (1B)\n", header->bmLetters[0], header->bmLetters[0]);
  printf("0x%2.2X\t\t\t'%c' (1B)\n", header->bmLetters[1], header->bmLetters[1]);
  printf("0x%.8X\tsize of file (4B) -> %i Bytes\n", header->sizeOfFile, header->sizeOfFile);
  printf("0x%.8X\treserved (4B) unused (=0)\n", header->reserved);
  printf("0x%.8X\tDataOffset (4B) -> File offset to Raster Data = %u Bytes\n", header->dataOffset, header->dataOffset);
  
  cout << endl << "Info header (40Bytes) :" << endl;
  
  printf("0x%.8X\tSize of InfoHeader (4B) -> %uBytes\n", header->sizeOfHeader, header->sizeOfHeader);
  printf("0x%.8X\tBitmap Width (4B) -> %u\n", header->widthInPXs, header->widthInPXs);
  printf("0x%.8X\tBitmap Height (4B) -> %d\n", header->heightInPXs, header->heightInPXs);
  printf("0x%.8X\tPlanes (2B) -> %u\n", header->planes, header->planes);
  printf("0x%.8X\tBitCount (2B) -> Bits per Pixel = %uBits\n", header->bitsPerPX, header->bitsPerPX);
  printf("0x%.8X\tCompression (4B) -> %u\t Type of Compression :\n\t\t\t\t\t0 = BI_RGB no compression\n\t\t\t\t\t1 = BI_RLE8 8bit RLE encoding\n\t\t\t\t\t2 = BI_RLE4 4bit RLE encoding\n\t\t\t\t\t3 = bitfields\n", header->compression, header->compression);
  printf("0x%.8X\tImageSize (4B) -> %uBytes\n", header->imageSize, header->imageSize);
  printf("0x%.8X\thorizontal resolution: Pixels/meter (4B) -> %u\n", header->horizontalResolution, header->horizontalResolution);
  printf("0x%.8X\tvertical resolution: Pixels/meter (4B) -> %u\n", header->verticalResolution, header->verticalResolution);
  printf("0x%.8X\tNumber of colors in the palette (4B) -> %u\n", header->nbrOfColors, header->nbrOfColors);
  printf("0x%.8X\tNumber of important colors (0 = all colors are important) (4B) -> %u\n", header->nbrImportantColors, header->nbrImportantColors);
}

void printRAWdata(unsigned char *buffer, unsigned int dataOffset, unsigned int padding, unsigned int rowSize, unsigned int nbrRows, unsigned short bitsPerPX) {
  cout << endl << "RAW OUTPUT :" << endl;
  
  for(unsigned int i=0;i<dataOffset;i++) {
    printf("l.%u\t0x%2.2X\n", i+1, buffer[i]);
  }
  cout << endl;
  
  //Affichage des données BMP
  for(unsigned int i=0; i<nbrRows; i++) {
    printf("row.%u\t", i+1);
    
    for( unsigned int y=dataOffset + rowSize * i; y < (dataOffset + rowSize * (i + 1) - padding); ) {
      if(bitsPerPX == 16) {
	printf("buffer[y+1] = 0x%2.2X\n", buffer[y+1]);
	printf("0x(%2.2X)(%2.2X)(%2.2X)\t", buffer[y] & 0x7C >> 2, (buffer[y] & 0x02 << 3) | (buffer[y+1] & 0xE0 >> 5), buffer[y+1] & 0x05);
	y += 2;
      } else if(bitsPerPX == 24) {
	printf("0x%2.2X%2.2X%2.2X\t", buffer[y], buffer[y+1], buffer[y+2]);
	y += 3;
      } else if(bitsPerPX == 32) {
	printf("0x%2.2X%2.2X%2.2X%2.2X\t", 0x00, buffer[y+1], buffer[y+2], buffer[y+3]);
	y += 4;
      }
    }
    cout << " --> " ;
    for(unsigned int y=(dataOffset + rowSize *(i + 1) - padding); y < (dataOffset + rowSize *(i + 1)); y++) {
      printf("0x%2.2X\t", buffer[y]);
    }
    cout << endl;
  }
  
  cout << endl;
}

void printVGAdata(unsigned char *buffer) {
  unsigned int heightNbrPX = ((unsigned int*) buffer)[0];
  unsigned int widthNbrPX = ((unsigned int*) buffer)[1];
  unsigned char* pixelsMem = buffer + 8;
  bool f = false;

  cout << endl << "VGA MEMORY :" << endl;

  cout << "height = " << (int) heightNbrPX << endl;
  cout << "width = " << widthNbrPX << endl << endl;

  for(unsigned int y=0; y<heightNbrPX; y++) {
    printf("row.%u", y+1);
    
    for(unsigned int i=0; i < widthNbrPX; i++) {
      if(!f) {
	printf("\t0x%1.1X", (*pixelsMem & 0xF0) >> 4);
	f = true;
      } else {
	printf("\t0x%1.1X", *pixelsMem & 0x0F);
	pixelsMem++;
	f = false;
      }
    }

    if(f == true) {
      pixelsMem++;
      f = false;
      printf("\tpadding --> 0x%1.1X", 0x0);
    }
    
    cout << endl;
  }
}

#endif

/*
 * Redéfinition de fonctions de la STDLIBC
 */

unsigned int abs(int x) {
  return (unsigned int) (x < 0) ? -x : x;
}

void* memcpy(void *dest, const void *src, size_t n) {
  for(long unsigned int i=0;i<n;i++) {
    ((unsigned char*) dest)[i] = ((unsigned char*) src)[i];
  }

  return dest;
}
