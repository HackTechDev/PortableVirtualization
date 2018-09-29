#!/bin/sh

VD=vda
DATE=`date '+%Y%m%d_%H%M'`

echo Create Snapshot at $DATE

qemu-img snapshot -c ss_$DATE Disk/$VD.qcow2
