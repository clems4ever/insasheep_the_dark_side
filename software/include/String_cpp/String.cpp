extern "C" {
	#include "../string/string.h"
}
#include "String.h"

	void * malloc(int size) {
		return 0;
	}
	
	String::String(char * str) {
		m_str = (char *)malloc(d_strlen(str)+1);
		d_strcpy(m_str, str);	
	}
	
	int String::length() {
		return d_strlen(m_str);	
	}
	
	
	void String::appendChar(char strEnd) {
		m_str = d_strAppendChar(m_str, strEnd);
	
	}
	
	
	int String::compare( String strCmp) {
		return d_strcmp(m_str, strCmp.m_str);
	
	}
	
	
	void String::concat(String  strConcat) {
		m_str = d_strcat(m_str, strConcat.m_str);
	}
	
	char * String::getAsChar() {
		return m_str;
	}
	
	/*std::ostream& operator<<(std::ostream &strm, String str) {
	  return strm << str.getAsChar();
	}*/

