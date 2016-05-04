include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/e610/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := e610

BOARD_KERNEL_CMDLINE := androidboot.hardware=m4 androidboot.selinux=permissive

TARGET_KERNEL_CONFIG := cyanogenmod_m4_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/e610/rootdir/root/fstab.m4

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/e610/bluetooth

BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e610/recovery/graphics.c

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := E610,e610,E612,e612,E617,e617,m4

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_m4
TARGET_LIBINIT_DEFINES_FILE := device/lge/e610/init/init_m4.c
