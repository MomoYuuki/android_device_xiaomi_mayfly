#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit from mayfly device
$(call inherit-product, device/xiaomi/mayfly/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mayfly
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2206123SC
PRODUCT_NAME := pixelage_mayfly

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_SYSTEM_NAME := mayfly
PRODUCT_SYSTEM_DEVICE := mayfly

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mayfly-user 14 UKQ1.231003.002 V816.0.14.0.ULTCNXM release-keys" \
    BuildFingerprint=Xiaomi/mayfly/mayfly:14/UKQ1.231003.002/V816.0.14.0.ULTCNXM:user/release-keys \
    DeviceProduct=mayfly \
    SystemName=mayfly

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
