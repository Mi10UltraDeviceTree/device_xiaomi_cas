#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cas
PRODUCT_DEVICE := cas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# riceDroid Flags
RICE_CHIPSET := Snapdragon-865-5G
RICE_OFFICIAL := false

# Sushi Bootanimation (only 720/1080/1440 supported. if not defined, bootanimation is google bootanimation)
SUSHI_BOOTANIMATION := 1080

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := false

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

# Customized GMS Flags 
TARGET_GAPPS_ARCH := arm64

# Opt out of google dialer support, compiler will build aosp dialer,
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Quick Tap 
TARGET_SUPPORTS_QUICK_TAP := true

#Face unlock 
TARGET_FACE_UNLOCK_SUPPORTED := true

# Maintainer Stuff
RICE_MAINTAINER := zinger&starraiderx
