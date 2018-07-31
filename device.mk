# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/xiaomi/mi8se/recovery/root
TARGET_OUT_SYSTEM := out/target/product/mi8se/system

# recovery.fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/etc/recovery.fstab:etc/recovery.fstab

# libcryptfs_hw.so
 PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/lib64/libcryptfs_hw.so:($TARGET_OUT_SYSTEM)/lib64/libcryptfs_hw.so

# adbd
 PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/sbin/adbd:($TARGET_OUT_SYSTEM)/bin/adbd


    