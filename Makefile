# These are our files. Modified to work with BAP clock arrangement.
# These files are supposed to replace the corresponding files in:
# /lib/modules/$(uname -r)/kernel/sound/soc/bcm/snd-soc-rpi-dac.ko
# /lib/modules/$(uname -r)/kernel/sound/soc/codecs/snd-soc-pcm1794a.ko
# load using modprobe
# ref for working with several LKM:s
# http://stackoverflow.com/questions/33718358/insmod-unknown-symbol-in-module

SRCS   = snd-soc-pcm1794a.c snd-soc-rpi-dac.c
OBJS   = $(SRCS:.c=.o)

obj-m += $(OBJS)

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
