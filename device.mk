#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Fingerprint
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.fx.tunnel@1.0.vendor

# Overlay
PRODUCT_PACKAGES += \
    ApertureResMayfly \
    FrameworksResMayfly \
    LineageResMayfly \
    NfcResMayfly \
    SettingsProviderResMayfly \
    SystemUIResMayfly \
    WifiResMayfly

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.default

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/mayfly/mayfly-vendor.mk)
