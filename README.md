# ZOS

### Building

Here are cross-compilation instructions for Ubuntu 14.04

	$ sudo apt-get install binutils xorriso grub-pc-bin qemu-system-i386 build-essential
	$ git clone https://github.com/rm-hull/barebones-toolchain.git
	$ cd barebones-toolchain
	$ . ./setenv.sh 
	$ cd ..
	$ git clone https://github.com/zerosum0x0/ZOS.git
	$ cd ZOS
	$ ./qemu.sh
