#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from T310 device
$(call inherit-product, device/sailf/T310/device.mk)

PRODUCT_DEVICE := T310
PRODUCT_NAME := omni_T310
PRODUCT_BRAND := SAILF
PRODUCT_MODEL := P70PRO
PRODUCT_MANUFACTURER := sailf

PRODUCT_GMS_CLIENTID_BASE := android-sailf

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums312_2h10_ctcc-user 9 PPR1.180610.011 20112 release-keys"

BUILD_FINGERPRINT := SPRD/ums312_2h10_ctcc/ums312_2h10:9/PPR1.180610.011/20112:user/release-keys
