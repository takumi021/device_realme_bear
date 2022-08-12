#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Arrow stuff
$(call inherit-product, vendor/arrow/config/common.mk)
ARROW_GAPPS := true

# Inherit from bear device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := bear
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := arrow_bear
PRODUCT_MODEL := Realme 5i

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := bear
TARGET_VENDOR_DEVICE_NAME := bear

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="bear" \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"
