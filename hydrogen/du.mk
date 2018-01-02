#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Provide meaningful APN configuration
# PRODUCT_COPY_FILES := device/xiaomi/hydrogen/configs/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Dirty stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

PRODUCT_NAME := du_hydrogen
PRODUCT_DEVICE := hydrogen
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Max
PRODUCT_MANUFACTURER := xiaomi

$(call inherit-product, device/xiaomi/hydrogen/device.mk)
$(call inherit-product-if-exists, vendor/xiaomi/hydrogen/device-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/hydrogen/hydrogen-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/hydrogen/hydrogen:6.0.1/MMB29M/V8.2.3.0.MBCCNDL:user/release-keys \
    PRIVATE_BUILD_DESC="hydrogen-user 6.0.1 MMB29M V8.2.3.0.MBCCNDL release-keys"

# Assert
TARGET_OTA_ASSERT_DEVICE := hydrogen
