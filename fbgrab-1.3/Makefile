### 
### I think it's not worth to make such a small project
### modular. So this is a simple gnu Makefile...
###

NES_ROOT = /home/cluster/nesmini-root
LIBPNG = ../../libpng
ZLIB = ../../zlib

CFLAGS-NES += -L$(NES_ROOT)/lib -L$(NES_ROOT)/usr/lib -I$(LIBPNG) -I$(ZLIB) -Wno-unused-function -Wl,--dynamic-linker=/lib/ld-linux-armhf.so.3,-sysroot=$(NES_ROOT),-rpath,-nostartfiles
CC-NES = arm-linux-gnueabihf-gcc

all: fbgrab

fbgrab: fbgrab.c
	$(CC-NES) -g -Wall $(CFLAGS-NES) $(LDFLAGS-NES) $< -lpng -lz -o fbgrab

clean:
	-$(RM) fbgrab *~ \#*\#
