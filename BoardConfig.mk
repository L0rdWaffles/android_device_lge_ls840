#
# Copyright (C) 2013 The Panda Project / Ryan Norris
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


# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_LIBSECRIL_STUB := true
#BOARD_USE_SKIA_LCDTEXT := true

# Architecture
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS

# Assert for OTA
TARGET_OTA_ASSERT_DEVICE := viper4glte,lgls840,ls840

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Bootloader
TARGET_NO_BOOTLOADER := true

# Camera
BOARD_USES_PROPRIETARY_LIBCAMERA := true

# HWComposer
#BOARD_USES_HWCOMPOSER := true
#BOARD_USES_FIMGAPI := true
#BOARD_HDMI_DDC_CH := DDC_CH_I2C_7
#BOARD_USES_PROPRIETARY_LIBFIMC := true

# Kernel Config
TARGET_KERNEL_SOURCE := kernel/lge/ls840
TARGET_KERNEL_CONFIG := cyanogenmod_ls840_defconfig

# Notification LED
BOARD_HAS_LED_NOTIF := true

# Partition Information
BOARD_BOOTIMAGE_PARTITION_SIZE      := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1887436800
BOARD_FLASH_BLOCK_SIZE 		   := 131072
BOARD_DATA_DEVICE := /dev/block/mmcblk0p29
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p27 BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p28
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_KERNEL_CMDLINE := vmalloc=400M, console=ttyDCC0,115200,n8 androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_USES_MMCUTILS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_HAS_LARGE_FILESYSTEM := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := msm8660
TARGET_BOARD_INFO_FILE := ../../device/lge/ls840/board-info.txt
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := ../../device/lge/ls840/recovery/recovery_kernel
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/ls840/recovery/recovery_keys.c
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/ls840/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION        := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_FLASH_FROM_STORAGE 	     := true
TW_NO_REBOOT_BOOTLOADER      := true

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# WebKit
ENABLE_WEBGL := true

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330_b1
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_LEGACY_NL80211_STA_EVENTS  := true

# Use the non-open-source parts, if they're present
-include vendor/lge/ls840/BoardConfigVendor.mk
