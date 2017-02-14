#!/usr/bin/env bash
echo "Copy our snd files to the /lib/modules/... directory"
cp snd-soc-rpi-dac.ko /lib/modules/4.4.34+/kernel/sound/soc/bcm/
cp snd-soc-pcm1794a.ko /lib/modules/4.4.34+/kernel/sound/soc/codecs/
