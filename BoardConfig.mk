# Copyright (C) 2016 The CyanogenMod Project
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

TARGET_BOOTLOADER_BOARD_NAME := PXA1088

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_BOARD_PLATFORM := mrvl
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_BOARD_PLATFORM := mrvl

# Graphics
BOARD_USES_MRVL_HARDWARE := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Display
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_FLAGS += -DSK_SUPPORT_LEGACY_SETCONFIG
BOARD_EGL_CFG := device/samsung/degaswifi/configs/egl.cfg

# Malloc
MALLOC_IMPL := dlmalloc

# MRVL
BOARD_USES_MARVELL_HWC_ENHANCEMENT := true
COMMON_GLOBAL_CFLAGS += -DMARVELL_HWC_ENHANCEMENT

# Boot
TARGET_PREBUILT_KERNEL := device/samsung/degaswifi/kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/degaswifi/dt.img --ramdisk_offset 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.selinux=disabled
TARGET_BOOTLOADER_BOARD_NAME := PXA1088
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := degas,degaswifi

# Flags
COMMON_GLOBAL_CFLAGS += -DMRVL_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2224029696
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5230297088
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/samsung/degaswifi/ramdisk/etc/recovery.fstab
