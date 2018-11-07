#!/bin/sh

sudo apt-get install libsdl2-dev libsdl2-gfx-dev  libsdl2-image-dev  libsdl2-mixer-dev  libsdl2-net-dev libsdl2-ttf-dev

cd ./qemu-3.0.0 
./configure --enable-virglrenderer --enable-opengl  --enable-sdl --with-sdlabi=2.0 --enable-system --enable-modules --enable-libusb --target-list=x86_64-softmmu  --enable-kvm --audio-drv-list=alsa

make -j 2

cd ../lib
./copySharedLib.sh
