# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the proprietary version
-include vendor/huawei/u8800/BoardConfigVendor.mk

# Huawei U8800 platfrom
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_NO_BOOTLOADER := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOOTLOADER_BOARD_NAME := u8800
ARCH_ARM_HAVE_TLS_REGISTER := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Camera
USE_CAMERA_STUB := true
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/u8800/system/lib/egl/egl.cfg

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=u8800 g_android.product_id=0x1038 g_android.serial_number=U8800
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/huawei/u8800/kernel

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_HAVE_CAF_BLUETOOTH := true

# RIL
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
TARGET_PROVIDES_LIBRIL := true

# GPS
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_GPS_LIBRARIES := libloc_api
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8800
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_FIRMWARE_LOADER := qcom-wifi
WIFI_LIBRA_MAC := true

# SDCard
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext3
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p2
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p14
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_HAS_NO_MISC_PARTITION := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8800/recovery_kernel
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8800/recovery/recovery_ui.c
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_RECOVERY_CHARGEMODE := true
BOARD_RECOVERY_RMT_STORAGE := true
TARGET_RECOVERY_INITRC := device/huawei/u8800/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8800/recovery/graphics.c
