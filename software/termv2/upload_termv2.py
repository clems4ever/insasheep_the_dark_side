#!/usr/bin/python2.7

import struct
import time

serial_port = "/dev/ttyUSB0"

out = open(serial_port, "w+b")


with open("termv2.bin", "rb") as f:
	content = f.read();

start = 0x40010000

bios_size = len(content)
print "BIOS is %d bytes (0x%x)" % (bios_size,bios_size)

format = "i"                   # one integer
data = struct.pack(format, start) # pack integer in a binary string
data = data[::-1]
out.write(data)
out.flush()
time.sleep(0.1)
format = "i"                   # one integer
data2 = struct.pack(format, bios_size) # pack integer in a binary string
data2 = data2[::-1]
out.write(data2)
out.flush()
time.sleep(0.1)

for c in content:
	out.write(c)
	#print hex(ord(c))
	#out.flush()
	#time.sleep(0.005)
out.flush()

#time.sleep(2)
#out.write("c")
#out.flush()
#fin = open("TEST", "w")
#for c in range(len(content)):
#		fin.write(out.read(2)+" ")
#fin.write(out.read())
#fin.close()a

