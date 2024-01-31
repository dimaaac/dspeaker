obj-m += dspeaker.o

KERNELDIR ?= /lib/modules/$(shell uname -r)/build
ALSA_CFLAGS += -I/lib/modules/$(shell uname -r)/build/include

all:
	make -C $(KERNELDIR) M=$(PWD) CFLAGS_MODULE="$(ALSA_CFLAGS)" modules

clean:
	 make -C $(KERNELDIR) M=$(PWD) clean

