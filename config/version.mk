# Copyright (C) 2018-20 Project dotOS
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
DOT_MOD_VERSION = v5.1.1

ifndef DOT_BUILD_TYPE
    DOT_BUILD_TYPE := UNOFFICIAL
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

DOT_BUILD_DATE_UTC := $(shell date -u '+%Y%m%d-%H%M')

ifeq ($(DOT_OFFICIAL), true)
   LIST = $(shell cat vendor/dot/dot.devices)
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      DOT_BUILD_TYPE := OFFICIAL
      ifeq ($(WITH_GAPPS), true)
	DOT_BUILD_TYPE := GAPPS
      endif
    endif
    ifneq ($(IS_OFFICIAL), true)
       DOT_BUILD_TYPE := UNOFFICIAL
       ifeq ($(WITH_GAPPS), true)
	 DOT_BUILD_TYPE := UNOFFICIAL_GAPPS
       endif
       $(error Device is not official "$(FOUND)")
    endif

endif

TARGET_PRODUCT_SHORT := $(subst dot_,,$(DOT_BUILD))

DOT_VERSION := dotOS-R-$(DOT_MOD_VERSION)-$(CURRENT_DEVICE)-$(DOT_BUILD_TYPE)-$(DOT_BUILD_DATE_UTC)

DOT_FINGERPRINT := dotOS/$(DOT_MOD_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(DOT_BUILD_DATE_UTC)

PRODUCT_GENERIC_PROPERTIES += \
  ro.dot.version=$(DOT_VERSION) \
  ro.dot.releasetype=$(DOT_BUILD_TYPE) \
  ro.modversion=$(DOT_MOD_VERSION)

DOT_DISPLAY_VERSION := DotOS-$(DOT_MOD_VERSION)-$(DOT_BUILD_TYPE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.dot.display.version=$(DOT_DISPLAY_VERSION)\
  ro.dot.fingerprint=$(DOT_FINGERPRINT)
