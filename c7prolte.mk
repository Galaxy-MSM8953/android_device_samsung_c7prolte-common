#
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
#

LOCAL_PATH := device/samsung/c7prolte-common

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Inherit from common
$(call inherit-product, device/samsung/msm8953-common/msm8953.mk)

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# HWUI
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Include proprietary blobs
$(call inherit-product, vendor/samsung/c7prolte-common/c7prolte-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
   $(LOCAL_PATH)/overlay \
   $(LOCAL_PATH)/overlay-lineage
