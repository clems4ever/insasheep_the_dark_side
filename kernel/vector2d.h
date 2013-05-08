
#ifndef _VECTOR2D_H
#define _VECTOR2D_H

#include "vector.h"

namespace MyLibrary
{

	template<class T>
	class Vector2D : public Vector<T>
	{
	public:
		Vector2D(const T& x, const T& y);

		const T& getX() const { return Vector<T>::getComponent(0); }
		const T& getY() const { return Vector<T>::getComponent(1); }

		void setX(const T& x) { Vector<T>::setComponent(0,x); }
		void setY(const T& y) { Vector<T>::setComponent(1,y); }

		int getDimension() const { return 2; }

	private:
		//T component[2];

	};


	template<class T>
	Vector2D<T>::Vector2D(const T& x, const T& y) : Vector<T>::Vector(2)
	{
		setX(x);
		setY(y);
	}


	template<class T>
	const Vector2D<T> operator*(const T scalaire, const Vector2D<T> &v)
	{
		Vector2D<T> vout;
		vout.setX(v.getX() * scalaire);
		vout.setY(v.getY() * scalaire);
		return vout;
	}

	template<class T>
	const Vector2D<T> operator*(const Vector2D<T>& v, const T scalaire)
	{
		Vector2D<T> vout;
		vout.setX(v.getX() * scalaire);
		vout.setY(v.getY() * scalaire);
		return vout;
	}


	template<class T>
	const Vector2D<T> operator+(const Vector2D<T>& v1, const Vector2D<T> &v2)
	{
		Vector2D<T> vout;
		vout.setX(v1.getX() + v2.getX());
		vout.setY(v1.getY() + v2.getY());
		return vout;
	}



};

#endif
