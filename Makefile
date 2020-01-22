# These are our files. Modified to work with BAP clock arrangement.
# Load by adding dtparam=rpi-dac in /boot/config.txt
# ref for working with several LKM:s
# http://stackoverflow.com/questions/33718358/insmod-unknown-symbol-in-module
#
# Some history:
# From start we used snd-soc-rpi-dac.c, however, it has been replaced
# with snd-soc-rpi-simple-soundcard.c.

SRCS   = snd-soc-pcm1794a.c snd-soc-rpi-simple-soundcard.c
OBJS   = $(SRCS:.c=.o)

obj-m += $(OBJS)

all:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
