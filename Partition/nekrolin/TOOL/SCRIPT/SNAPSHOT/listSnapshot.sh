#!/bin/sh

VD=vda

qemu-img snapshot -l Disk/$VD.qcow2
