#
# Copyright (C) 2019-2020 The MSM-Xtended Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Octavi stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Octavi Official
OCTAVI_BUILD_TYPE := Official
OCTAVI_DEVICE_MAINTAINER := Priyanshu

# Google Connectivity Services
TARGET_INCLUDE_WIFI_EXT := true

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BDA
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X01BD_1 \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="coral-user 11 RQ1A.201205.008 6943376 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "google/coral/coral:11/RQ1A.201205.008/6943376:user/release-keys"
