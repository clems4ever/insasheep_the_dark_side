
#ifndef _QUEUE_H_
#define _QUEUE_H_

#include "linked_list.h"


template<class T>
class Queue : protected LinkedList<T>
{
		public:
				//Queue() {}
				//~Queue() {}

				void push(const T& value);
				T pop();

				T& at(const int pos) const;

				void clear() { clear(); }

				bool isEmpty() const { return LinkedList<T>::isEmpty(); }


				int size()  const { return LinkedList<T>::count(); }
				int count() const { return LinkedList<T>::count(); }

				bool contains(const T& item, const int pos = 0) { return LinkedList<T>::contains(item, pos); }
};



template<class T>
void Queue<T>::push(const T& value)
{
		LinkedList<T>::addFirst(value);
}

template<class T>
T Queue<T>::pop()
{
		return LinkedList<T>::takeLast();
}

template<class T>
T& Queue<T>::at(const int pos) const
{
		return LinkedList<T>::at(pos);
}




#endif
