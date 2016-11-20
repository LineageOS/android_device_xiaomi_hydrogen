#
# Copyright (C) 2016 The CyanogenMod Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE := hydrogen

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# CMHW
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26705099776 # 26705116160 - 16384

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_hydrogen_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Tap-to-Wake
TARGET_TAP_TO_WAKE_NODE := "/sys/bus/i2c/devices/i2c-4/4-0038/wakeup_mode"

# inherit from the proprietary version
-include vendor/xiaomi/hydrogen/BoardConfigVendor.mk
