#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common omni product files.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X705X device
$(call inherit-product, device/lenovo/X705X/device.mk)

PRODUCT_DEVICE := X705X
PRODUCT_NAME := omni_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo X705X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YT-X705X-user 10 QKQ1.191224.003 X705X_S001137_220802_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/YT-X705X/YT-X705X:10/QKQ1.191224.003/X705X_S001137_220802_ROW:user/release-keys
