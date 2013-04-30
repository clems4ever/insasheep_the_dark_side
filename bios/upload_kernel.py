#!/usr/bin/python2.7

import struct
import time

serial_port = "/dev/ttyUSB0"

out = open(serial_port, "w+b")


with open("image.bin", "rb") as f:
	content = f.read();

start = 0x40001300

kernel_size = len(content)
print "KERNEL is %d bytes (0x%x) " % (kernel_size,kernel_size)

format = "i"                   # one integer
data = struct.pack(format, start) # pack integer in a binary string
data = data[::-1]
out.write(data)
out.flush()
time.sleep(0.1)
format = "i"                   # one integer
data2 = struct.pack(format, kernel_size) # pack integer in a binary string
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
#out.close()
#time.sleep(2)
#out.write("c")
#out.flush()
#fin = open("TEST", "w")
#for c in range(len(content)):
#		fin.write(out.read(2)+" ")
#fin.write(out.read())
#fin.close()a

