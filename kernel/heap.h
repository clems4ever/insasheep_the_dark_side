


#ifndef _HEAP_H_
#define _HEAP_H_

#include "constant.h"

#define HEAP_HEADER_SIZE sizeof(HeapHeader)

class Heap
{


public:
		Heap(void *start_address, int size);

		void *malloc(unsigned int size);
		void free(void *ptr);

		void debug();


private:
		struct HeapHeader
		{
				HeapHeader *next;
				HeapHeader *prev;
				unsigned short used;
		}; //  __attribute__((packed));

		unsigned int address(HeapHeader *h) const { return (unsigned int)h; }

		unsigned int blockSize(HeapHeader *h) const { return (unsigned int) h->next - (unsigned int) h; }

		unsigned int addressMax() const { return (unsigned int) m_heap + m_size; }
		
		
		HeapHeader *m_heap;
		int m_size;

};


#endif
