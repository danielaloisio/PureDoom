#!/bin/bash

mkdir linux
make
cd linux

DISPLAY=:2 ./linuxxdoom
