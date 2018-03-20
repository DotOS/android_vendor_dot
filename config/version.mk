# Copyright (C) 2018 Project dotOS
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

#dotOS Versioning :
DOT_MOD_VERSION = v2.1


ifndef DOT_BUILD_TYPE
    DOT_BUILD_TYPE := UNOFFICIAL
endif

ifeq ($(DOT_BETA),true)
    DOT_BUILD_TYPE := BETA
endif

ifdef DOT_OFFICIAL
   CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)
   LIST = $(shell curl -s https://raw.githubusercontent.com/DotOS/android_vendor_dot/dot-o/dot.devices)
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      DOT_BUILD_TYPE := OFFICIAL

endif

ifneq ($(IS_OFFICIAL), true)
       DOT_BUILD_TYPE := UNOFFICIAL
       $(error Device is not official "$(FOUND)")
endif

PRODUCT_PROPERTY_OVERRIDES += \
    persist.ota.romname=$(TARGET_PRODUCT) \
    persist.ota.version=$(shell date +%Y%m%d) \

persist.ota.manifest=https://raw.githubusercontent.com/DotOS/services_apps_ota/dot-o/$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3).xml
endif

DOT_VERSION := DotOS-$(DOT_MOD_VERSION)-$(shell date -u +%Y%m%d)-$(DOT_BUILD_TYPE)


PRODUCT_PROPERTY_OVERRIDES += \
  ro.dot.version=$(DOT_VERSION) \
  ro.dot.releasetype=$(DOT_BUILD_TYPE) \
  ro.modversion=$(DOT_MOD_VERSION)

DOT_DISPLAY_VERSION := DotOS-$(DOT_MOD_VERSION)-$(DOT_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.dot.display.version=$(DOT_DISPLAY_VERSION)
