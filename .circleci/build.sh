#!/bin/bash
repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0
repo sync --force-sync
git clone https://github.com/Unknownbitch07/orangefox_device_xiaomi_tissot device/xiaomi/tissot/
rm -rf bootable/recovery
git clone https://gitlab.com/OrangeFox/bootable/Recovery.git -b fox_9.0 bootable/recovery
rm -rf hardware/qcom/bootctrl
. build/envsetup.sh
lunch omni_tissot-eng
mka recoveryimage
  ZIP=$(ls out/target/product/tissot/OrangeFox*.zip)
curl https://bashupload.com/$ZIP --data-binary @$ZIP
