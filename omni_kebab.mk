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

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

PRODUCT_DEVICE := kebab
PRODUCT_NAME := omni_kebab
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_kebab-user 13 TQ1A.230105.002 1673703857 release-keys"

BUILD_FINGERPRINT := OnePlus/kebab/kebab:13/TQ1A.230105.002/1344:user/release-keys
