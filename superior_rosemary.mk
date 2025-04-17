#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from rosemary device
$(call inherit-product, device/xiaomi/rosemary/device.mk)

PRODUCT_DEVICE := rosemary
PRODUCT_NAME   := superior_rosemary
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 12 SP1A.210812.016 V13.0.5.0.SFFTWXM release-keys"

BUILD_FINGERPRINT := Redmi/rosemary/rosemary:12/SP1A.210812.016/V13.0.5.0.SFFTWXM:user/release-keys

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_MATLOG := true
TARGET_INCLUDE_PIXEL_CHARGER := true
USE_MOTO_CALCULATOR := true
TARGET_SUPPORTS_BLUR := true
SUPERIOR_UDFPS_ANIMATIONS := true
USE_MOTO_CLOCK := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := true
TARGET_CORE_GMS := true
USE_QUICKPIC := true
USE_DUCKDUCKGO := true
