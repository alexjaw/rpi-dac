#!/usr/bin/env bash
echo "Copy our snd files to the /lib/modules/... directory"
sudo cp snd-soc-rpi-dac.ko /lib/modules/$(uname -r)/kernel/sound/soc/bcm/
sudo cp snd-soc-pcm1794a.ko /lib/modules/$(uname -r)/kernel/sound/soc/codecs/
