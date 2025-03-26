#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from haydn device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Lunch banner maintainer variable
RISING_MAINTAINER="TyrBadingBuilds"

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 888" \
    RisingMaintainer="TyrBadingBuilds"

RISING_MAINTAINER := TyrBadingBuilds

# Extras
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# Lawnchair Launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true 

# GMS Build Flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Google Dialer and Messages
TARGET_INCLUDE_GOOGLE_DIALER := true

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := lineage_vili

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vili_global-user 14 UKQ1.231207.002 V816.0.10.0.UKDMIXM release-keys" \
    BuildFingerprint=Xiaomi/vili_global/vili:14/UKQ1.231207.002/V816.0.10.0.UKDMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
