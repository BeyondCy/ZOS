#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/zos.kernel isodir/boot/zos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "Zero Operating System (ZOS)" {
	multiboot /boot/zos.kernel
}
EOF
grub-mkrescue -o zos.iso isodir
