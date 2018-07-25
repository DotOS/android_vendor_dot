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


PRODUCT_BRAND ?= DotOS

include vendor/dot/config/version.mk

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/dot/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/dot/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/dot/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/dot/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# Bootanimation
TARGET_BOOTANIMATION_480P := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -le 720 ]; then \
    echo 'true'; \
  else \
    echo ''; \
  fi )

# Bootanimation
ifeq ($(TARGET_BOOTANIMATION_480P),true)
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bootanimation/bootanimation-480p.zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/dot/overlay/common \
    vendor/dot/overlay/dictionaries

# EXT4/F2FS format script
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/format.sh:install/bin/format.sh

# Custom dotOS packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    Stk \
    Substratum \
    ThemeInterfacer \
    Recorder \
    Music \
    Browser \
    DotPapers \
    InterfaceCenter \
    SystemUpdates \
    OmniJaws

# Accents
PRODUCT_PACKAGES += \
    PixelTheme \
    Stock \
    GreenTheme \
    PinkTheme \
    PurpleTheme \
    RedTheme \
    SkyTheme \
    YellowTheme \
    GreyTheme \
    LemonTheme \
    OrangeTheme \
    OxygenTheme \
    VioletTheme 

#Primary
PRODUCT_PACKAGES += \
    SettingsDarkThemeOverlay \
    SettingsBlackThemeOverlay \
    SystemDarkThemeOverlay \
    SystemBlackThemeOverlay \
    PlayStoreDarkTheme \
    GBoardDark  \
    DuiDarkTheme \
    DuiBlackTheme \
    SettingsNeoThemeOverlay \
    SystemNeoThemeOverlay \
    SystemUINeoThemeOverlay 

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    7z \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    zip

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/dot/config/permissions/backup.xml:system/etc/sysconfig/backup.xml


# init.d support
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner

# dotOS-specific init file
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/init.local.rc:root/init.dot.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/dot/prebuilt/common/media/LMspeed_508.emd:system/media/LMspeed_508.emd \
    vendor/dot/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/dot/prebuilt/common/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Media
PRODUCT_GENERIC_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Needed by some RILs and for some Gapps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Charging sounds
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/media/audio/BatteryPlugged.ogg:system/media/audio/ui/BatteryPlugged.ogg \
    vendor/dot/prebuilt/common/media/audio/BatteryPlugged_48k.ogg:system/media/audio/ui/BatteryPlugged_48k.ogg

# Fonts
PRODUCT_COPY_FILES += \
    vendor/dot/fonts/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Regular.ttf \
    vendor/dot/fonts/GoogleSans-Medium.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/dot/fonts/GoogleSans-MediumItalic.ttf:system/fonts/GoogleSans-MediumItalic.ttf \
    vendor/dot/fonts/GoogleSans-Italic.ttf:system/fonts/GoogleSans-Italic.ttf \
    vendor/dot/fonts/GoogleSans-Bold.ttf:system/fonts/GoogleSans-Bold.ttf \
    vendor/dot/fonts/GoogleSans-BoldItalic.ttf:system/fonts/GoogleSans-BoldItalic.ttf


# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

#Telephony
$(call inherit-product, vendor/dot/config/telephony.mk)

# dot_props
$(call inherit-product, vendor/dot/config/dot_props.mk)

# Enable ADB authentication
ifneq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif

	
# Include SDCLANG definitions if it is requested and available
ifeq ($(HOST_OS),linux)
    ifneq ($(wildcard vendor/qcom/sdclang-4.0/),)
        include vendor/dot/sdclang/sdclang.mk
    endif
endif
