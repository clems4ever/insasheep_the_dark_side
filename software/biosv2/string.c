

#include "string.h"


int strlen(const char *str){
		int len = 0;
		while(*str)
				len++;
		return len;	
}



void strcpy(char *destination, const char *source){
		while(*source != 0){
				*destination = *source;
				destination++;
				source++;
		}
		*destination = 0;
}


int strcmp(const char *str1, const char *str2){
		while(*str1 == *str2 && (*str1 != 0)){
				str1++;
				str2++;
		}

		if(*str1 == 0 && *str2 == 0)
				return 0;
		else if(*str1 > *str2 )
				return 1;
		else
				return -1;
}		
