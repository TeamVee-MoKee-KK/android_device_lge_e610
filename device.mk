# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply to ALL L5 devices
# Everything in this directory will become public

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/e610/e610-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/e610/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_COPY_FILES += \
    device/lge/e610/rootdir/root/fstab.m4:root/fstab.m4 \
    device/lge/e610/rootdir/root/init.m4.rc:root/init.m4.rc \
    device/lge/e610/rootdir/root/ueventd.m4.rc:root/ueventd.m4.rc

PRODUCT_COPY_FILES += \
    device/lge/e610/rootdir/system/usr/keylayout/m4_keypad.kl:system/usr/keylayout/m4_keypad.kl \
    device/lge/e610/rootdir/system/usr/keylayout/touch_mcs8000.kl:system/usr/keylayout/touch_mcs8000.kl

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/gen1_media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/recovery/root/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Light HAL
PRODUCT_PACKAGES += \
    lights.msm7x27a

# HWComposer
PRODUCT_PACKAGES += \
    hwcomposer.msm7x27a

# Only Interpret the system apps due to low space partitions
PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := --compiler-filter=interpret-only
$(call add-product-dex-preopt-module-config,services,--compiler-filter=space)

include device/lge/e610/system_prop.mk
