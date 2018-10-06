#!/bin/sh

qemu-system-x86_64 -drive file=vda.qcow2,format=qcow2,index=0,media=disk -enable-kvm -m 2048 -sdl -vga std -net nic,model=rtl8139 -net user -smp 2 -localtime
