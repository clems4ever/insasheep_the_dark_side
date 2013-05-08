
#ifndef _VECTOR_H
#define _VECTOR_H

#include "array.h"

namespace MyLibrary
{

	template<class T>
	class Vector : private Array<T>
	{
	public:
		Vector(int dimension);
		Vector(const Vector<T>& v);

		void setComponent(int component_num, const T& value);
		const T& getComponent(int component_num) const { return (*this)[component_num]; }

		Vector<T>& operator+=(const Vector<T> &v);
		Vector<T>& operator*=(const T& scalaire);

		Vector<T> operator+(const Vector<T>& v);

		Vector<T>& operator=(const Vector<T>& v);


		int getDimension() const { return dimension; }

	private:
		Vector() {};

		int dimension;

	}; // class Vector


	template<typename T>
	Vector<T>::Vector(int dim) : Array<T>::Array(dim)
	{
		if(dim <= 0)
		{
			Array<T>::resize(1);
			this->dimension = 1;
		}else
		{
			//Array<T>::resize(dimension);
			this->dimension = dim;
		}
	}

	template<typename T>
	Vector<T>::Vector(const Vector<T>& v) : Array<T>::Array(v)
	{
		dimension = v.dimension;
	}


	template<class T>
	Vector<T> operator*(const T scalaire, const Vector<T> &v)
	{
		Vector<T> vout(v.getDimension());
		for(int i=0; i<v.getDimension(); i++)
			vout.setComponent(i, v.getComponent(i) * scalaire);
		return vout;
	}

	template<class T>
	Vector<T> operator*(const Vector<T>& v, const T scalaire)
	{
		Vector<T> vout(v.getDimension());
		for(int i=0; i<v.getDimension(); i++)
			vout.setComponent(i, v.getComponent(i) * scalaire);
		return vout;
	}


	template<class T>
	Vector<T> Vector<T>::operator+(const Vector<T>& v)
	{
		Vector<T> vout(getDimension());


		if(getDimension() != v.getDimension())
			return *this;

		for(int i=0; i<vout.getDimension(); i++)
		{
			vout.setComponent(i, getComponent(i) + v.getComponent(i));
		}
		//std::cout << vout.getDimension();
		return vout;
	}



	template<class T>
	void Vector<T>::setComponent(int component_num, const T& value)
	{
		if(component_num >= dimension)
			return; // On ne peut pas avoir une composante d'indice plus gd que la dimension

		(*this)[component_num] = value;
	}

	/*template<class T>
	Vector<T>& Vector<T>::operator=(const Vector<T> &v)
	{
		if(v.dimension != dimension)
			return *this;

		for(int i=0; i<dimension; i++)
		{
			component[i] = v.component[i];
		}

		return *this;
	}*/

	template<class T>
	Vector<T>& Vector<T>::operator+=(const Vector<T> &v)
	{
		*this = *this + v;
		return *this;
	}

	template<class T>
	Vector<T>& Vector<T>::operator*=(const T& scalaire)
	{
		*this = *this * scalaire;
		return *this;
	}


	template<class T>
	Vector<T>& Vector<T>::operator=(const Vector<T>& v)
	{

		//std::cout << dimension << v.dimension;
		if(dimension != v.dimension)
			return *this;

		for(int i=0; i<v.dimension; i++)
			setComponent(i, v.getComponent(i));
		return *this;
	}




};

#endif
