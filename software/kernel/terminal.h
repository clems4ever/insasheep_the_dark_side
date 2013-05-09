

#ifndef _TERMINAL_H_
#define _TERMINAL_H_




void getCommand(char *cmd, int buffer_size);
void parseCommand( const char *cmd);


void reboot();
void jump_to_kernel();
void ramtest();
void help();


#endif 

