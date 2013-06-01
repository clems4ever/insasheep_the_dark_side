/**
 * @file
 * @author  Matthieu LONGO
 * @version 1.0
 *
 * @section LICENSE
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details at
 * http://www.gnu.org/copyleft/gpl.html
 *
 * @section DESCRIPTION
 *
 * refresh() allows refreshment of VGA buffer with data of a BIPMAP file.
 * Should be modified in this file the BITMAP file location and the VGA buffer address.
 * The variable _DEBUG_ must be defined if you want to carry on tests.
 */

#ifndef _BITMAP_
#define _BITMAP_

/**
* \brief Enable it to pursue some tests.
*
* \details Allow to pursue some test with a BMP file and verify the output in VGA buffer is well formated.
*/
#define _DEBUG_

#ifdef _DEBUG_
/**
* \brief Filename of test file.
*/
//#define _FILENAME "img/pixels-16bits.bmp"
//#define _FILENAME "img/pixels-16bits-spe.bmp"
//#define _FILENAME "img/pixels-24bits.bmp"
//#define _FILENAME "img/pixels-32bits.bmp"
//#define _FILENAME "img/chefimpair-32bits.bmp"
//#define _FILENAME "img/chefpair-32bits.bmp"
#define _FILENAME "img/chefimpair-24bits.bmp"
//#define _FILENAME "img/chefpair-24bits.bmp"

#else

/**
* \brief BMP address
*
* \details Location of the bitmap in memory.
*/
#define ADDR_BITMAP_RAM 0x4000000

/**
* \brief VGA buffer address
*
* \details Location of the VGA buffer in memory.
*/
#define ADDR_VGA_RAM 0x3000000

#endif

/**
 * Refresh the content of VGA buffer with the content of BMP file at ADDR_BITMAP_RAM.
 */
void refresh(void);

#endif
