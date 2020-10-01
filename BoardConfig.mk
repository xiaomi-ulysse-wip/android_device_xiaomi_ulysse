#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from common ulysse-common
-include device/xiaomi/ulysse-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/ulysse

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Asserts
TARGET_OTA_ASSERT_DEVICE := ulysse,ugglite,ugg

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions - ugglite
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10332634112 # 10332650496 - 16384
BOARD_VENDORIMAGE_PARTITION_SIZE   := 536870912

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/xiaomi/ugg/BoardConfigVendor.mk
-include vendor/xiaomi/ulysse/BoardConfigVendor.mk
