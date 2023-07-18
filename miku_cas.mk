#
# Copyright (C) 2021 The mikuOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit some common miku stuff.
$(call inherit-product, vendor/miku/build/product/miku_product.mk)

# Build Flags
TARGET_BUILD_GRAPHENE_CAMERA := true
TARGET_ENABLE_BLUR := true
TARGET_CORE_GMS := false
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_USE_PIXEL_FINGERPRINT := true

# Rice Flags
MIKU_GAPPS := true
TARGET_MIKU_BUILD_VARIANT := UNOFFICIAL
MIKU_MASTER := zinger
TARGET_WITH_KERNEL_SU := true

# Device Flags
PRODUCT_NAME := miku_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi
BOARD_VENDOR := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
