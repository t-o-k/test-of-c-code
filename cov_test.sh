#!/bin/bash

make clean

make 

./test-minimallib

gcov minimallib.c
