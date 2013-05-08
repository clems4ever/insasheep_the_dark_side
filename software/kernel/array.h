

#ifndef _ARRAY_H
#define _ARRAY_H

//#include <iostream>
#include "stdlib.h"

namespace MyLibrary
{
	template<class T>
	class Array
	{
	public:
		Array();
		Array(const Array<T>& arr);
		Array(int size);

		~Array();

		void clear();

		bool isEmpty() const { return vsize == 0; }

		T *data() { return vdata; }
		T *data() const { return vdata; }

		//T& at(int pos);
		T& operator[](int pos);

		const T& operator[](int pos) const { return vdata[pos]; }
		//const T& operator[](int pos) const { return (*this)[pos]; }

		int size() const { return vsize; }
		int count() const { return vsize; }

		void resize(int s);

		T& last() { return (*this)[vsize-1]; }
		T& first() { return (*this)[0]; }


		Array<T> operator+(const Array<T> &v);

		Array<T>& operator=(const Array<T> &v);
		Array<T>& operator+=(const Array<T>& arr) { *this = *this + arr; return *this; }


	protected:
		T *vdata;
		int vsize;

	private:
	};

	// Renvoie un array qui contient nb fois le array a
	template<typename T>
	Array<T> operator*(int nb, const Array<T>& a)
	{
		Array<T> ar;
		for(int i = 0; i<nb; i++)
			ar += a;
		return ar;
	}




	template<class T>
	Array<T>::Array()
	{
		vdata = 0;
		vsize = 0;
	}


	template<class T>
	Array<T>::Array(int size)
	{
		if(size <= 0)
		{
			vdata = 0;
			vsize = 0;
			return;
		}
		vdata = new T[size];
		this->vsize = size;
	}

	template<class T>
	Array<T>::Array(const Array<T>& arr)
	{
		vdata = new T[arr.vsize];
		vsize = arr.vsize;

		for(int i=0; i<vsize; i++)
			vdata[i] = arr.vdata[i];
	}

	template<class T>
	Array<T>::~Array()
	{
		//std::cout << "dest";
		if(vdata != 0)
			delete[] vdata;
		vsize = 0;
	}


	template<class T>
	void Array<T>::clear()
	{
		if(vdata != 0)
			delete(vdata);
	}


	/*template<class T>
	T& Array<T>::at(int pos)
	{
		return *vdata[pos];
	}*/


	template<class T>
	T& Array<T>::operator[](int pos)
	{
		// Si on est plus gd que le max, on étend la zone mémoire
		if(pos >= vsize)
		{
			T* temp = vdata; // On garde l'ancien pointeur vers la mémoire
			vdata = new T[pos+1]; // On alloue un tableau plus grand
			for(int i=0; i<vsize; i++)
				vdata[i] = temp[i];
			vsize = pos+1;
			delete[] temp;
		}

		return vdata[pos];
	}



	template<class T>
	void Array<T>::resize(int s)
	{
		if(s == vsize)
			return;

		if(s == 0)
		{
			if(vdata != 0)
				delete vdata;
			vsize = 0;
			return;
		}

		T* temp = vdata;
		vdata = new T[s];
		if(temp != 0)
		{
			int size_to_copy = (s > vsize)? vsize : s;
			for(int i=0; i<size_to_copy; i++)
				vdata[i] = temp[i];
			delete[] temp;
		}
		vsize = s;
	}


	template<class T>
	Array<T> Array<T>::operator+(const Array<T> &v)
	{
		const int s1 = this->vsize;
		const int s2 = v.vsize;
		const T* dat1 = this->vdata;
		const T* dat2 = v.vdata;
		int siz = s1 + s2;
		Array<T> new_v(siz);
		T* dat = new_v.data();


		for(int i=0; i<s1; i++)
			dat[i] = dat1[i];

		for(int i=0; i<s2; i++)
			dat[s1+i]=dat2[i];

		return new_v;
	}

	template<class T>
	Array<T>& Array<T>::operator=(const Array<T> &v)
	{
		resize(v.size());
		for(int i=0; i<vsize; i++)
			vdata[i] = v.vdata[i];
		return *this;
	}
}

#endif




