#include <iostream>
using std::cout;
using std::endl;

#include <cryptopp/cryptlib.h>

#include <cryptopp/osrng.h>
using CryptoPP::AutoSeededRandomPool;
using CryptoPP::SecByteBlock;

#include <cryptopp/modes.h>
using CryptoPP::CFB_Mode;

#include <cryptopp/aes.h>
using CryptoPP::AES;

int main( int, char** ) {

    
    /*byte key[AES::DEFAULT_KEYLENGTH], iv[AES::BLOCKSIZE];
    string plainText;*/

    /*Integer i;

    cout << "i: " << i << endl;
*/
    
    AutoSeededRandomPool rnd;

    // Generate a random key
    SecByteBlock key(AES::DEFAULT_KEYLENGTH);
    rnd.GenerateBlock( key, key.size() );

    // Generate a random IV
    byte iv[AES::BLOCKSIZE];
    rnd.GenerateBlock(iv, AES::BLOCKSIZE);

    char plainText[] = "Hello! How are you.";
    int messageLen = (int)strlen(plainText) + 1;

    //////////////////////////////////////////////////////////////////////////
    // Encrypt

    CFB_Mode<AES>::Encryption cfbEncryption(key, key.size(), iv);
    cfbEncryption.ProcessData((byte*)plainText, (byte*)plainText, messageLen);
    
    cout << "e: " << plainText << endl;

    //////////////////////////////////////////////////////////////////////////
    // Decrypt

    CFB_Mode<AES>::Decryption cfbDecryption(key, key.size(), iv);
    cfbDecryption.ProcessData((byte*)plainText, (byte*)plainText, messageLen);

	cout << "d: " << plainText << endl;
	return 0;
}
