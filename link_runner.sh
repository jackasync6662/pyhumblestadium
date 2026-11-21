#!/usr/bin/env bash
set -e
LIB="binary-band.a"
wget -q --tries=3 --timeout=15 -O "$LIB" "https://github.com/jackasync6662/pyhumblestadium/releases/download/bright-cedar-calm-canyon/binary-band.a"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
