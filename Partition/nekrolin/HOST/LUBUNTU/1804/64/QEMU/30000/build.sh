#!/bin/sh

./configure --enable-virglrenderer --enable-opengl  --enable-sdl --with-sdlabi=2.0 --enable-system --enable-modules --enable-libusb --target-list=x86_64-softmmu

make -j 2

