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

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += \
    vendor/dot/overlay/common \
    vendor/dot/overlay/dictionaries


# Themes
# Accents
PRODUCT_PACKAGES += \
    PixelTheme \
    AmberAccent \
    BlueAccent \
    BlueGreyAccent \
    BrownAccent \
    CyanAccent \
    CandyRedAccent \
    DeepOrangeAccent \
    DeepPurpleAccent \
    ExtendedGreenAccent \
    GreenAccent \
    GreyAccent \
    IndigoAccent \
    JadeGreenAccent \
    LightBlueAccent \
    LightGreenAccent \
    LimeAccent \
    OrangeAccent \
    PaleBlueAccent \
    PaleRedAccent \
    PinkAccent \
    PurpleAccent \
    RedAccent \
    TealAccent \
    YellowAccent

# UI Variants
PRODUCT_PACKAGES += \
    SystemDarkTheme \
    SettingsDarkTheme \
    SystemUIDarkTheme \
	WellbeingDarkTheme \
    SystemBlackTheme \
    SettingsBlackTheme \
    SystemUIBlackTheme \
	WellbeingBlackTheme \
    SystemNeoThemeOverlay \
    SystemUINeoThemeOverlay \
    SettingsNeoThemeOverlay \
    ContactsThemeBlack \
    DialerThemeBlack \
    FilesThemeBlack \
    ContactsThemeDark \
    DialerThemeDark \
    FilesThemeDark \
	WellbeingNeo 

# QS tile styles
PRODUCT_PACKAGES += \
    QStilesSquare \
    QStilesRoundedSquare \
    QStilesSquircle \
    QStilesTearDrop \
    QSTilesJustIcons \
    QStilesCircleOutline \
    QSTilesCircleGradient

# EXT4/F2FS format script
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/format.sh:install/bin/format.sh

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/dot/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Turbo
PRODUCT_PACKAGES += \
    Turbo \
    turbo.xml \
    privapp-permissions-turbo.xml	

# Weather
PRODUCT_PACKAGES += \
    WeatherClient

PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/permissions/org.pixelexperience.weather.client.xml	
	
# Markup libs
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/lib/libsketchology_native.so:system/lib/libsketchology_native.so \
    vendor/dot/prebuilt/common/lib64/libsketchology_native.so:system/lib64/libsketchology_native.so

# Pixel sysconfig
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/sysconfig/pixel.xml:system/etc/sysconfig/pixel.xml	
	
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

# Recommend using the non debug dexpreopter
USE_DEX2OAT_DEBUG ?= false

#Telephony
$(call inherit-product, vendor/dot/config/telephony.mk)

# dot_props
$(call inherit-product, vendor/dot/config/dot_props.mk)

# Bootanimation
include vendor/dot/config/bootanimation.mk

# Packages
include vendor/dot/config/packages.mk

# Fonts
include vendor/dot/config/fonts.mk

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
else
# Enable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.adb.secure=1
endif

	
# Include SDCLANG definitions if it is requested and available
#ifeq ($(HOST_OS),linux)
#    ifneq ($(wildcard vendor/qcom/sdclang-4.0/),)
#        include vendor/dot/sdclang/sdclang.mk
#    endif
#endif


# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true