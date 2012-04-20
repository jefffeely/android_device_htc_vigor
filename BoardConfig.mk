# Copyright (C) 2009 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
-include vendor/htc/vigor/BoardConfigVendor.mk

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
# Set to 9 for 8650A
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_BOOTLOADER_BOARD_NAME := vigor
TARGET_PROVIDES_LIBRIL := vendor/htc/vigor/proprietary/libril-qc-qmi-1.so

BOARD_KERNEL_BASE := 0x48800000
BOARD_KERNEL_PAGE_SIZE := 00000800
BOARD_KERNEL_CMDLINE := console=ttyHSL3 androidboot.hardware=vigor no_console_suspend=1 

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := vigor
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#BOARD_HAVE_SQN_WIMAX := true
BOARD_USES_QCOM_LIBS := false

# cat /proc/emmc
#dev:        size     erasesize name
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p32: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p28: 01400000 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p26: 00400000 00000200 "modem_st1"
# mmcblk0p27: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p33: 007ffa00 00000200 "udata_wimax"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1308621824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/vigor/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_HOSTAPD_DRIVER        := WEXT
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_wext
BOARD_WLAN_DEVICE           := bcm4330
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcm4330_b2.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcm4330_apsta_b2.bin"
WIFI_DRIVER_MODULE_NAME     := "bcm4330"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4330_b2.bin iface_name=wlan0"

TARGET_PREBUILT_KERNEL := device/htc/vigor/kernel

TARGET_RECOVERY_INITRC := device/htc/vigor/recovery/init.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p37
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := 1

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USES_AUDIO_LEGACY := false
