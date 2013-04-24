#!/usr/bin/python2.7

import struct
import time

serial_port = "/dev/ttyUSB0"

out = open(serial_port, "wb")



start = 0x40000000
format = "i"                   # one integer
data = struct.pack(format, start) # pack integer in a binary string
data = data[::-1]
out.write(data)
