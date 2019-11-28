#!/usr/bin/env bash
echo "Copy our snd files to the /lib/modules/... directory"
cp snd-soc-rpi-dac.ko /lib/modules/$(shell uname -r)/kernel/sound/soc/bcm/
cp snd-soc-pcm1794a.ko /lib/modules/$(shell uname -r)/kernel/sound/soc/codecs/
