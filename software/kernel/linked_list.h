
#ifndef _LINKED_LIST_H
#define _LINKED_LIST_H

#define NULL 0


template<typename T>
class LinkedList
{
		public:

				struct Node
				{
						Node *next;
						Node *prev;
						T value;
				};


				LinkedList();
				~LinkedList();

				void addLast(const T& item);
				void addFirst(const T& item);

				void clear();

				void deleteFirstItem(const T& item, const int pos=0);
				void deleteAllItem(const T& item, const int pos=0);

				//T& at(const int pos);
				T takeAt(const int pos);
				T takeFirst();
				T takeLast();

				// Renvoie le dernier élément de la liste
				const T& last() const;
				// Renvoie le premier élément de la liste
				const T& first() const;

				// Renvoie vrai si l'élément value se trouve dans la liste à partir du rang pos
				bool contains(const T& value, const int pos = 0) const;

				int size() const { return vsize; }
				int count() const { return vsize; }

				bool isEmpty() const { return vsize == 0; }

				T& at(const int pos) const;

		protected:
				Node *createNode(const T& data, Node *prev = 0, Node *next = 0)
				{
						Node *n = new Node;
						n->value = data;
						n->prev = prev;
						n->next = next;
						return n;
				}

				void destroyNode(Node *node);


				// Variables
				int vsize;
				Node *firstNode;
				Node *lastNode;
};





template<class T>
LinkedList<T>::LinkedList()
{
		firstNode = NULL;
		lastNode = NULL;
		vsize = 0;
}

template<class T>
LinkedList<T>::~LinkedList()
{
		clear();
}



//private
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

// Supprime la première occurence de item à partir de la position pos
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


template<class T>
T& LinkedList<T>::at(const int pos) const
{
		Node *node = firstNode;
		for(int i=0; i<pos && node != 0; i++)
				node = node->next;

		return node->value;
}

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


template<class T>
T LinkedList<T>::takeLast()
{
		Node *node = lastNode;

		T out = node->value;
		destroyNode(node);

		return out;
}


template<class T>
T LinkedList<T>::takeFirst()
{
		Node *node = firstNode;

		T out = node->value;
		destroyNode(node);

		return out;
}


/*template<class T>
  void LinkedList<T>::print()
  {
  std::cout << "first=" << firstNode << "\tlast=" << lastNode << "\n";
  std::cout << vsize << "\n";

  Node *aux = firstNode;
  while(aux != 0)
  {
  std::cout << "addr=" << aux << "\n";
  std::cout << "val=" << aux->value << "\n";
  std::cout << "prev=" << aux->prev << "\tnext=" << aux->next << "\n\n";
  aux = aux->next;
  }
  }*/

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


template<class T>
const T& LinkedList<T>::last() const
{
		return (lastNode->value);
}

template<class T>
const T& LinkedList<T>::first() const
{
		return (firstNode->value);
}




#endif
