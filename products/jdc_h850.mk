# Copyright (C) 2016 The JDCTeam
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

# Inherit AOSP device configuration for G5
$(call inherit-product, device/lge/h850/aosp_h850.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := jdc_h850
PRODUCT_DEVICE := h850
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := LG-H850
