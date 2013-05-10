

/**
* \file linked_list.h"
*
* \author Clément MICHAUD
* \brief Data structure linked list
*/

#ifndef _LINKED_LIST_H
#define _LINKED_LIST_H

#define NULL 0

/**
* \class LinkedList linked_list.h
*
* \brief Data structure that represents a double linked list
*
* \details This data structure is made of instances of a structure called Node that stores the value of the node, the pointer to the next and the previous node.
*/

template<typename T>
class LinkedList
{
		public:
				/*
				* \struct Node
				* \brief Stores the value of the node, the pointer to the next Node and the prvious Node
				*/
				struct Node
				{
						Node *next; /** Pointer to the next node */
						Node *prev; /** Pointer to the last node */
						T value; /** Value to store */
				};

				/**
				* Constructor
				*/
				LinkedList();
				~LinkedList();

				void addLast(const T& item);
				void addFirst(const T& item);

				void clear();

				void deleteFirstItem(const T& item, const int pos=0);
				void deleteAllItem(const T& item, const int pos=0);

				T takeAt(const int pos);
				T takeFirst();
				T takeLast();

				const T& last() const;
				const T& first() const;

				bool contains(const T& value, const int pos = 0) const;

				int size() const { return vsize; }
				int count() const { return vsize; }

				bool isEmpty() const { return vsize == 0; }

				T& at(const int pos) const;

		protected:
				/**
				* \param item is the value that will be stored in the node
				* \param prev is the pointer to the previous node
				* \param next is the pointer to the next node
				*
				*	\brief Creates a node and initializes.
				*	\details Creates the nodei by allocating memory.
				*
				*/
				Node *createNode(const T& item, Node *prev = 0, Node *next = 0)
				{
						Node *n = new Node;
						n->value = item;
						n->prev = prev;
						n->next = next;
						return n;
				}

				void destroyNode(Node *node);


				/** Size of the linked list, the number of nodes */
				int vsize;
				/** Pointer to the first node */
				Node *firstNode;
				/** Pointer to the last node */
				Node *lastNode;
};




/**
* Constructor
* \brief initialize the header of the linked list.
*
* \details At the beginning the linked list is empty. The pointer to the first node and last node are empty. The size is 0.
*/
template<class T>
LinkedList<T>::LinkedList()
{
		firstNode = NULL;
		lastNode = NULL;
		vsize = 0;
}

/**
* Destructor
*
* \brief Clear all allocated memory
*/
template<class T>
LinkedList<T>::~LinkedList()
{
		clear();
}



/**
* \param node is the node that will be destroyed
*
* \details Destroys the node \a node, frees the memory and updates the pointers of the linked list
*/
template<typename T>
void LinkedList<T>::destroyNode(Node *node)
{
		if(node == NULL || vsize == 0)
				return; // On ne fait rien

		if(vsize == 1)
		{
				delete node;
				firstNode = NULL;
				lastNode = NULL;
				vsize = 0;
				return;
		}

		Node *pprev = node->prev, *pnext = node->next;

		if(node == firstNode)
		{
				firstNode = pnext;
				firstNode->prev = NULL;
		}else if(node == lastNode)
		{
				lastNode = pprev;
				lastNode->next = NULL;
		}
		else
		{
				pprev->next = pnext;
				pnext->prev = pprev;
		}

		delete node;
		vsize--;
}


/**
* \brief Clears the linked list.
* \details Removes each node in the linked list, frees the memory and reset the linked list header, that is, set the first node pointer and last node pointer to NULL and set size to 0.
*/
template<class T>
void LinkedList<T>::clear()
{
		Node *aux = firstNode, *temp;
		while(aux != NULL)
		{
				temp = aux->next;
				delete aux;
				aux = temp;
		}

		vsize=0;
		firstNode = NULL;
		lastNode = NULL;
}


/**
*	\param item is the item that is to be destroyed
*	\param pos is the pos from which the functions will search for the item to destroy
*
*	\brief Deletes the first occurence of item in the linked list
*  \details Removes the first occurence of \a item after the position \a pos.
*/
template<class T>
void LinkedList<T>::deleteFirstItem(const T& item, const int pos)
{
		if(pos >= vsize)
				return;

		bool trouve = false;
		Node *aux = firstNode;

		for(int i=0 ; i<pos && aux != 0 ; aux=aux->next, i++);
		while(aux != NULL && !trouve)
		{
				if(aux->value == item)
				{
						destroyNode(aux);
						trouve = true;
				}
				if(!trouve)
						aux = aux->next;
		}
}



/**
*	\param item is the item that is to be destroyed
*	\param pos is the pos from which the functions will search for the item to destroy
*
*	\brief Deletes the first occurence of item in the linked list
*  \details Removes the first occurence of \a item after the position \a pos.
*/
template<class T>
void LinkedList<T>::deleteAllItem(const T& item, const int pos)
{
		if(pos >= vsize)
				return;

		Node *aux = firstNode, *temp;

		for(int i=0 ; i<pos && aux != 0 ; aux=aux->next, i++);
		while(aux != NULL)
		{
				temp = aux->next;
				if(aux->value == item)
						destroyNode(aux);
				aux = temp;
		}
}

/**
*	\param item is the item that is to be added at the end of the linked list
*  \brief Adds an element with value \a item at the end of the list
*
* \details Creates the node associated to \a item and puts it at the end of the linked list. 
*/
template<class T>
void LinkedList<T>::addLast(const T& item)
{
		Node *noeud = createNode(item);
		if(vsize == 0)
		{
				firstNode = noeud;
				noeud->prev = NULL;
		}
		else
		{
				noeud->prev = lastNode;
				lastNode->next = noeud;
		}
		lastNode = noeud;

		vsize++;
}


/**
*	\param item is the item that is to be added at the beginning of the linked list
*  \brief Adds an element with value \a item at the beginning of the list
*
* \details Creates the node associated to \a item and puts it at the beginning of the linked list. 
*/
template<class T>
void LinkedList<T>::addFirst(const T& item)
{
		Node *noeud = createNode(item);
		if(vsize == 0)
				lastNode = noeud;
		else
		{
				firstNode->prev = noeud;
				noeud->next = firstNode;
		}
		firstNode = noeud;

		vsize++;
}

/**
* \param pos is the position of the element that is to be returned.
* \brief Gets the element at the positon \a pos.
*
* \details returns the element at the position \a pos if this element exists, that is if pos does not exceed the size of the linked list.
*/
template<class T>
T& LinkedList<T>::at(const int pos) const
{
		Node *node = firstNode;
		for(int i=0; i<pos && node != 0; i++)
				node = node->next;

		return node->value;
}


/**
* \param pos is the position of the element that is to be returned.
* \brief Gets the element at the positon \a pos and removes it from the linked list.
*
* \details returns the element at the position \a pos if this element exists, that is if pos does not exceed the size of the linked list and removes it from the linked list.
*/
template<class T>
T LinkedList<T>::takeAt(const int pos)
{
		if(pos >= vsize || vsize == 0)
		{
				T val;
				return val;
		}

		Node *node = firstNode;

		for(int i=0; i<pos && node != 0; i++)
		{
				node = node->next;
		}

		T out = node->value;
		destroyNode(node);

		return out;
}


/**
* \brief Gets the last element and removes it from the linked list.
*
* \details returns the last element if this element exists, that is if the linked list is not empty and removes it.
*/
template<class T>
T LinkedList<T>::takeLast()
{
		Node *node = lastNode;

		T out = node->value;
		destroyNode(node);

		return out;
}


/**
* \brief Gets the first element and removes it from the linked list.
*
* \details returns the first element if this element exists, that is if the linked list is not empty and removes it.
*/
template<class T>
T LinkedList<T>::takeFirst()
{
		Node *node = firstNode;

		T out = node->value;
		destroyNode(node);

		return out;
}

/**
*
*
*/
template<class T>
bool LinkedList<T>::contains(const T& value, const int pos) const
{
		Node *aux = firstNode;

		for(int i=0 ; i<pos && aux != 0 ; aux=aux->next, i++);
		while(aux != 0)
		{
				if(aux->value == value)
						return true;
				aux = aux->next;
		}

		return false;
}


/**
* \brief Gets the last element of the linked list but does not remove it.
* \return the last element of the linked list.
*/
template<class T>
const T& LinkedList<T>::last() const
{
		return (lastNode->value);
}


/**
* \brief Gets the first element of the linked list but does not remove it.
* \return the first element of the linked list.
*/
template<class T>
const T& LinkedList<T>::first() const
{
		return (firstNode->value);
}




#endif
