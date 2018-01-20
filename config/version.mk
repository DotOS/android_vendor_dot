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

DOT_VERSION := DotOS-$(DOT_MOD_VERSION)-$(shell date -u +%Y%m%d)-$(DOT_BUILD_TYPE)


PRODUCT_PROPERTY_OVERRIDES += \
  ro.dot.version=$(DOT_VERSION) \
  ro.dot.releasetype=$(DOT_BUILD_TYPE) \
  ro.modversion=$(DOT_MOD_VERSION)

DOT_DISPLAY_VERSION := DotOS-$(DOT_MOD_VERSION)-$(DOT_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.dot.display.version=$(DOT_DISPLAY_VERSION)  