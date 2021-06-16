#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

for var in eng user userdebug; do
  add_lunch_combo omni_tissot-$var
done

export TARGET_ARCH=arm64
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
export OF_AB_DEVICE=1
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1420041600"
export OF_MAINTAINER="Unknownbitch"
export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1 
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1 
export FOX_ADVANCED_SECURITY=1 
