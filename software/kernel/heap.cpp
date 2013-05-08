

#include "heap.h"
#include "uart.h"
#include "kernel.h"
#include "interruptions.h"


Heap::Heap(void *start_address, int size)
{
	#if defined(DEBUG) && defined(HEAP_DEBUG) 
		Uart::printfln("Heap initialized");
	#endif
	m_heap = (HeapHeader*)start_address;
	m_size = size;

	m_heap->used = 0;
	m_heap->next = (HeapHeader*)((unsigned int)start_address + size);
	m_heap->prev = 0;

}

void *Heap::malloc(unsigned int size)
{
	bool cut = false;
	if(size <= 0)
		return 0;

	HeapHeader *header = (HeapHeader*)m_heap, *last_next;
	void *pointer = (void *)-1;


	// While the block is used or the block is too small, goto next block
	while(header->used)  // || (unsigned int)header->next - (unsigned int)header < size + HEAP_HEADER_SIZE){
	{
		header = header->next;
		#if defined(DEBUG) && defined(HEAP_DEBUG)
			Uart::printfln("selected header=%x, used=%d", header, header->used);
		#endif
	}



	// if end of heap not reached
	if((unsigned int)header + size + HEAP_HEADER_SIZE < addressMax()){
		header->used = 1;
		cut = blockSize(header) >= HEAP_HEADER_SIZE * 2 + size + 4 ;

		last_next = header->next;	
		#if defined(DEBUG) && defined(HEAP_DEBUG)
		Uart::printfln("cut=%d, blockSize=%d", cut, blockSize(header));
		#endif
		if(cut) {
			header->next = (HeapHeader*)((unsigned int)header + size + HEAP_HEADER_SIZE);
			header->next->used = 0;
			header->next->next = last_next;
			header->next->prev = header;
			if((unsigned int)header->next->next != addressMax())
				header->next->next->prev = header->next;
		}

		pointer = (void*)((unsigned int)header + HEAP_HEADER_SIZE);
	}
	#if defined(DEBUG) && defined(HEAP_DEBUG)
	else
	{
		Uart::printfln("End of heap reached");
	}
	#endif 

	#if defined(DEBUG) && defined(HEAP_DEBUG)
		Uart::printfln("end selected header=%x, used=%d", header, header->used);
		Uart::printfln("ptr=%x", pointer);
	#endif

	return pointer;
}



void Heap::free(void *ptr)
{
	HeapHeader *header = (HeapHeader *)((unsigned int)ptr - HEAP_HEADER_SIZE);
	header->used = 0;
	
	// If possible, merge the next area with the new free area
	if(header->next != 0 && header->next->used == 0){
		header->next = header->next->next;
		if((unsigned int)header->next < (unsigned int)m_heap + m_size)
			header->next->prev = header;
	}
	
	// If possible, merge the previous area with the new free area
	if(header->prev != 0 && header->prev->used == 0){
		header->prev->next = header->next;
		header->next->prev = header->prev;
	}

}


void Heap::debug()
{
	int i = 0;
	HeapHeader *header = (HeapHeader*)m_heap;
	while((unsigned int)header < (unsigned int)m_heap	+ m_size){
		Uart::printfln("%d, @ = %x, u = %d, s = %d, next = %x, prev = %x", i, header, header->used, (unsigned int)header->next - (unsigned int)header,header->next, header->prev);
		header = header->next;
		if(header == header->next){
			Uart::printfln("Heap error!");
			break;
		}
		i++;
	}
}


void *operator new(unsigned int size)
{
	//cli();
	void *ptr =  Kernel::m_heap.malloc(size);
	//sti();
	#if defined(DEBUG) && defined(HEAP_DEBUG) 
	Uart::printfln("new");
	Kernel::m_heap.debug();
	#endif
	return ptr;
}

void *operator new[](unsigned int size)
{
	void *ptr =  Kernel::m_heap.malloc(size);
	#if defined(DEBUG) && defined(HEAP_DEBUG) 
	Uart::printfln("new[]");
	Kernel::m_heap.debug();
	#endif
	return ptr;
}


void operator delete(void *ptr)
{
	//cli();
	Kernel::m_heap.free(ptr);
	//sti();
	#if defined(DEBUG) && defined(HEAP_DEBUG) 
	Uart::printfln("delete");
	Kernel::m_heap.debug();
	#endif
}

void operator delete[](void *ptr)
{
	Kernel::m_heap.free(ptr);
	#if defined(DEBUG) && defined(HEAP_DEBUG) 
	Uart::printfln("delete[]");
	Kernel::m_heap.debug();
	#endif
}
