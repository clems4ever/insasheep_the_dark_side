

#include "string.h"

void * malloc(int size) {
	return 0;
}

int strlen(const char *str){
		int len = 0;
		while(str[len] != '\0') {
			len++;
		}
		return len;	
}

void strcpy(char *destination, const char *source){
		while(*source != '\0'){
				*destination = *source;
				destination++;
				source++;
		}
		*destination = '\0';
}

char * strcat(char * strBeg, char * strEnd) {
	char * dest;
	int lenBeg = strlen(strBeg);
	int lenEnd = strlen(strEnd);
	
	dest = malloc( lenBeg + lenEnd + 1);
	strcpy(dest, strBeg);
	strcpy(dest+lenBeg, strEnd);
	dest[lenBeg+lenEnd+1] = '\0';
	
	return dest;

}

char * strAppendChar(char * dest, char * strBeg, char strEnd) {
	int lenBeg = strlen(strBeg);
	char * dest;
	
	dest = malloc( lenBeg + 1 + 1);
	strcpy(dest, strBeg);
	dest[lenBeg] =  strEnd;
	dest[lenBeg+1] = '\0'; 
	
	return dest;
}

int strcmp(const char *str1, const char *str2){
		while(*str1 == *str2 && (*str1 != '\0')){
				str1++;
				str2++;
		}

		if(*str1 == '\0' && *str2 == '\0')
				return 0;
		else if(*str1 > *str2 )
				return 1;
		else
				return -1;
}		
