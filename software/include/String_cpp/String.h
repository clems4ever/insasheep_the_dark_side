#ifndef _STRING_CPP_H_
#define _STRING_CPP_H_


//#include <iostream>

class String {
	private :
		char * m_str;
	
	public :
	
	String(char * str);
	char * getAsChar();
	int length();
	void appendChar(char strEnd);
	int compare( String strCmp);
	void concat(String  strConcat);
	//friend std::ostream& operator<<(std::ostream &strm, String str);
};


#endif 
