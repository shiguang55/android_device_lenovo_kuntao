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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/kuntao/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_kuntao
PRODUCT_DEVICE := kuntao
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo P2c72
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/kuntao/kuntao:7.0/NRD90M/VIBEUI_V3.5_1743_5.2308.1_ST_P2c72:user/release-keys \
    PRIVATE_BUILD_DESC="kuntao-user 7.0 VIBEUI_V3.5_1743_5.2308.1_ST_P2c72 release-keys" \
    TARGET_DEVICE="kuntao"