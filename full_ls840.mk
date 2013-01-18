# Copyright (C) 2013 Ryan Norris
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
# This file is the build configuration for a full Android
# build for crespo hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Camera
PRODUCT_PACKAGES := \
    Camera

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/lge/ls840/device_ls840.mk)


# Discard inherited values and use our own instead.

PRODUCT_NAME := full_ls840
PRODUCT_DEVICE := ls840
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := LS840

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LS840 TARGET_DEVICE=LS840 BUILD_FINGERPRINT=LGE/LS840/LS840:4.0.4/IMM76I/ZVI:user/release-keys  PRIVATE_BUILD_DESC="LS840-user 4.0.4 IMM76I ZVI release-keys"
