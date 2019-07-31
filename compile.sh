#!/bin/bash

echo " Assembling with nasm"
nasm -f elf32 -o $1.o  $1.nasm 

echo "Linking now ./......"
ld -o $1 $1.o


echo "Done "