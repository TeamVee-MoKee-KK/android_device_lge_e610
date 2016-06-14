include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/e610/BoardConfigVendor.mk
TARGET_BOOTLOADER_BOARD_NAME := e610

BOARD_KERNEL_CMDLINE := androidboot.hardware=m4 androidboot.selinux=permissive

TARGET_KERNEL_CONFIG := cyanogenmod_m4_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/e610/rootdir/root/fstab.m4

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/e610/bluetooth

# Recovery
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
RECOVERY_VARIANT := omni
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_CPU_TEMP := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 225

# /system - 600MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629575516

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := E610,e610,E612,e612,E617,e617,m4

# Set Device in init based on baseband
TARGET_INIT_VENDOR_LIB := libinit_m4
TARGET_LIBINIT_DEFINES_FILE := device/lge/e610/init/init_m4.c
