#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_NO_THEMED_BOOTANIMATION := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PLATFORM_SECURITY_PATCH_OVERRIDE := 2021-06-01

BUILD_FINGERPRINT := "Xiaomi/davinci/davinci:11/RKQ1.200826.002/V12.1.4.0.RFJMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="davinci-user 11 RKQ1.200826.002 V12.1.4.0.RFJMIXM release-keys" \
    TARGET_BUILD_FLAVOR=davinci-$(TARGET_BUILD_VARIANT) \
    PRODUCT_NAME="davinci"
