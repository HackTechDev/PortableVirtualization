#!/bin/sh

qemu-system-x86_64 -enable-kvm -m 2048 -sdl  -vga std -hda vda.qcow2 -cdrom ../ISO/FreeBSD-11.2-RELEASE-amd64-disc1.iso -boot d -net nic,model=rtl8139 -net user -smp 2 -localtime
