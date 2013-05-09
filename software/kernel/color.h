
#ifndef _COLOR_H
#define _COLOR_H

namespace MyLibrary
{
	class Color
	{
	public:
		Color();
		Color(int red, int green, int blue, int a = 255);

		int getRed() const { return red; }
		int getGreen() const { return green; }
		int getBlue() const { return blue; }
		int getAlpha() const { return alpha; }

		void setRed(int r) { red = r; }
		void setGreen(int g) { green = g; }
		void setBlue(int b) { blue = b; }
		void setAlpha(int a) { alpha = a; }

		int getHex() const { return red << 16 | green << 8 | blue; }

		static Color fromRgb(int red, int green, int blue, int a = 255);

	private:
		int red, green, blue;
		int alpha;
	};
};

#endif
