# Copyright (C) 2017 The JDCTeam
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

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.require_network=any \
    ro.setupwizard.mode=OPTIONAL \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.opa.eligible_device=true\
    persist.sys.dun.override=0 \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so \
    ro.storage_manager.enabled=true \
    ro.substratum.verified=true \
    persist.sys.recovery_update=false \
    ro.com.google.ime.theme_id=5

# Set cache location
ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/data/cache
else
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/cache
endif
