
/**
* \file heap.h
* \author Clément MICHAUD
* Manages the global heap 
*/

#ifndef _HEAP_H_
#define _HEAP_H_

#include "constant.h"

#define HEAP_HEADER_SIZE sizeof(HeapHeader)

/**
* \class Heap
*
* \brief Global heap.
*
* \details The heap is statically defined and allows the user to gets memory from the pool of memory associated with the heap. The heap is represented as a linked list each node contains a flag to determines whether the block is used, a pointer to the next and previous block.
The first block has always the first address of the heap and its previous pointer is 0.
The next pointer of the last element is always the first address of the heap plus the size of the heap.
*Example : first_pointer = 0x40010000;
*			size = 0x1000;
*		first->previous = 0x0;
*		last->next = 0x40011000;
*/
class Heap
{
public:
		/**
		* \param start_address is the first address allocated to the heap
		* \param size is the size of the heap
		*
		* \brief initializes the heap.
		* \details Creates a heap at the address \a start_address of size \a size. Then the last address is start_address + size.
		*/
		Heap(void *start_address, int size);

		/**
		* \param size is the size that will be allocated to the returned pointer.
		* \return Pointer to the newly allocated memory.
		*
		* \brief Allocates a block of memory of size \a size.
		*
		* \details Gets the next non used block with the good size in the heap.
		*/
		void *malloc(unsigned int size);

		/**
		*	\param ptr is the pointer that will be freed 
		*/
		void free(void *ptr);

		/**
		*	\brief Displays a trace of the heap in DEBUG mode
		*
		*/
		void debug();


private:
		struct HeapHeader
		{
				HeapHeader *next; /** Pointer to the next node */
				HeapHeader *prev; /** Pointer to the previous node */
				unsigned short used; /** Flag to determines whether the block is used */
		}; //  __attribute__((packed));

		/**
		* \param h is the HeapHeader from which the address will be cast.
		* \return address cast into in
		* \brief cast a heapheader address into int
		*/
		unsigned int address(HeapHeader *h) const { return (unsigned int)h; }

		/**
		* \param h is the HeapHeader from which the size will be calculated.
		* \return The size of the block represented by \a h. The calculation is h->next - h.
		*/
		unsigned int blockSize(HeapHeader *h) const { return (unsigned int) h->next - (unsigned int) h; }

		/**
		* \return The last address of the heap.
		* \brief Gets the last address of the heap.
		*/
		unsigned int addressMax() const { return (unsigned int) m_heap + m_size; }
		
	
		HeapHeader *m_heap; /** The first header */
		int m_size; /** the size of the heap */

};


#endif
