#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from bengal device
$(call inherit-product, device/qualcomm/bengal/device.mk)

PRODUCT_DEVICE := bengal
PRODUCT_NAME := omni_bengal
PRODUCT_BRAND := qti
PRODUCT_MODEL := Bengal for arm64
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bengal-user 12 RKQ1.211119.001 1703235998944 release-keys"

BUILD_FINGERPRINT := qti/bengal/bengal:12/RKQ1.211119.001/1703235998944:user/release-keys
