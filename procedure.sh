#!/bin/bash

echo "Make srec2Vram"
cd tools/srec2vram/
make 2>&1 > /dev/null 
echo "Make insa firmware"
cd ../../firmware/insa_firmware/
make 2>&1 > /dev/null 

cd ../../boards/digilent-nexys3/
source ~/.bashrc_xil12.3 2>&1 > /dev/null 
echo "Synthèse avec 12.3"
make syn 2>&1 > /dev/null 
source ~/.bashrc 2>&1 > /dev/null 
echo "Load avec 14.1"
make load 2>&1 > /dev/null 

cd ../../bios/
make 2>&1 > /dev/null 

echo "Lancer script python"
python upload_bios.py
