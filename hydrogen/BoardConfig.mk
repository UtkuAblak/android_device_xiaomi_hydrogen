#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8956-common
-include device/xiaomi/msm8956-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/hydrogen

# Assertions
TARGET_OTA_ASSERT_DEVICE := hydrogen

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26705099776 # 26705116160 - 16384

# Kernel
TARGET_KERNEL_CONFIG := lineageos_hydrogen_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

TARGET_BOARD_PLATFORM := msm8952
TARGET_DEVICE := hydrogen

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/common \
    $(DEVICE_PATH)/sepolicy/$(TARGET_BOARD_PLATFORM) \
    $(DEVICE_PATH)/sepolicy/$(TARGET_DEVICE)
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    $(DEVICE_PATH)/sepolicy/private

# Tap-to-Wake
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# inherit from the proprietary version
-include vendor/xiaomi/hydrogen/BoardConfigVendor.mk
