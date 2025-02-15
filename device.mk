#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a72q

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7125-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a72q/a72q-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.a72q.rc

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera (id 52 is telephoto)
$(call soong_config_set,samsungCameraVars,extra_ids,52)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
