
#ifndef _STACK_H
#define _STACK_H

#include "linked_list.h"


namespace MyLibrary
{
	template<class T>
	class Stack : public LinkedList<T>
	{
	public:
		void push(const T& value);
		T pop();
		T& top();

		int size() { return LinkedList<T>::count(); }
		int count() { return LinkedList<T>::count(); }

		bool contains(const T& item, const int pos = 0) { return LinkedList<T>::contains(item, pos); }
	protected:
	};



	template<class T>
	void Stack<T>::push(const T& value)
	{
		LinkedList<T>::addLast(value);
	}

	template<class T>
	T Stack<T>::pop()
	{
		return LinkedList<T>::takeLast();
	}

	template<class T>
	T& Stack<T>::top()
	{
		return LinkedList<T>::last();
	}


};


#endif

