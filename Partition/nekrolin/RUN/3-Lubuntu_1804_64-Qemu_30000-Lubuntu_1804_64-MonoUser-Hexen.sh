#!/bin/sh

MACADDRESS=`printf 'DE:AD:BE:EF:%02X:%02X' $((RANDOM%256)) $((RANDOM%256))`

currentuser="$(whoami)"

echo "== Run Virtualization =="

# Host configuration

H_DISTRIB=LUBUNTU
H_VERSION=1804
H_PROC=64

# Qemu configuration

QEVER=30000

# Guest configuration

G_DISTRIB=LUBUNTU
G_VERSION=1804
G_PROC=64

APP=HEXEN
VDA=vda


LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:../HOST/$H_DISTRIB/$H_VERSION/$H_PROC/QEMU/$QEVER/lib/ \
	../HOST/$H_DISTRIB/$H_VERSION/$H_PROC/QEMU/$QEVER/qemu-3.0.0/x86_64-softmmu/qemu-system-x86_64 \
	-drive file=../../nekrovd/GUEST/$G_DISTRIB/$G_VERSION/$G_PROC/$APP/VD/$VDA.qcow2,format=qcow2,index=0,media=disk \
	-enable-kvm  -m 2048 -sdl -vga std \
	-soundhw hda,ac97 \
	-net nic,model=rtl8139 -net user \
	-smp 2 \
	-rtc base=localtime -no-quit \
	-bios ../HOST/LUBUNTU/1804/64/QEMU/30000/pc-bios/bios-256k.bin 
