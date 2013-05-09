#include <string.h>
#include <uart.h>
#include <d_stdio.h>


#define CONF_FILE_ADDR 0x40004000

void getCommand(char *cmd, int buffer_size){
	uart_print(">> ");
	uart_getstr(cmd, buffer_size);
}

char *  parseConfFile (int * addrPrg, int * sizePrg, int offset, int * nbRead) {

	int i;
	int addr = 0;
	int size = 0;
	char * conf = (char*)CONF_FILE_ADDR + offset;
	char *prog_name = "EOF";
	
	
	printf("Try to get progconf name\n");
	for(i=0; conf[i] != '='; i++){
		//if(conf[i] != ' ' && conf[i] != '\n')
			//prog_name = strAppendChar(prog_name, conf[i]);
		if(strcmp(prog_name, "EOF") == 0) {
			*sizePrg = 0;
			*nbRead = 0;
			return "EOF";
		}
	}
	//prog_name++;
	//printf("%s\n",prog_name);
	
	printf("Try to get progconf addr\n");
	for(i=i+2; conf[i] != ' '; i++){
		printf("-->%c\n",conf[i]);
		if(conf[i] != ' ' && conf[i] != '\n')
			addr = addr * 10 + (conf[i]-'0') ;
	}
	printf("%d\n",addr);	
	
	printf("Try to get progconf size\n");
	for(i=i+1; conf[i] != ' ' && conf[i] != '\n' && conf[i] != '\0'; i++){
		printf("-->%c\n",conf[i]);
		size = size * 10 + (conf[i]-'0') ;
	}
	printf("%d\n",size);	
	
	*addrPrg = addr;
	*sizePrg = size;
	*nbRead = i;
	
	return prog_name;
}

int findProgInfo(char * progName, int * addrPrg, int * sizePrg) {
	char * name;
	int nbRead, offset;
	
	offset = 0;
	do {
		printf("Searching for %s with offest %d\n", progName, offset);
		name = parseConfFile(addrPrg, sizePrg, offset, &nbRead);
		offset += nbRead;
		printf("'%s' %d %d\n\n", name, addrPrg, sizePrg);
	} while(strcmp(name, progName) != 0 && nbRead > 0);
	
	return nbRead > 0 ? nbRead : -1;
}

int main()
{
	int addr, size, r;
	char cmd[50];
	
	printf("Program to execute: \n");
	getCommand(cmd, 50);
	
	r = findProgInfo(cmd, &addr, &size);
	if(r != -1)
		printf("Trouve : '%s' %d %d\n\n", cmd, addr, size);
	else
		printf("PAS Trouve : '%s' %d %d %d\n\n", cmd, addr, size, r);
		
	return 0;
}

