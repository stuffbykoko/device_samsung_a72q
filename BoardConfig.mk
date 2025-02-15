#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a72q

include device/samsung/sm7125-common/BoardConfigCommon.mk

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Kernel
TARGET_KERNEL_CONFIG        := vendor/pixelos-a72q_defconfig vendor/debugfs.config
BOARD_NAME                  := SRPTJ06B001

# Display
TARGET_SCREEN_DENSITY := 450

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a72q

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
