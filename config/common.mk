PRODUCT_BRAND ?= DotOS

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0
endif

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/dot/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/dot/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh \
    vendor/dot/prebuilt/common/bin/blacklist:system/addon.d/blacklist

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/dot/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/dot/prebuilt/common/bin/sysinit:system/bin/sysinit

ifneq ($(TARGET_BUILD_VARIANT),user)
# userinit support
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit
endif

# CM-specific init file
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# This is DOT!
PRODUCT_COPY_FILES += \
    vendor/dot/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# Include Dot audio files
include vendor/dot/config/cm_audio.mk

ifneq ($(TARGET_NO_DSPMANAGER), true)
PRODUCT_PACKAGES += \
    libcyanogen-dsp \
    audio_effects.conf
endif

# Theme engine
include vendor/dot/config/themes_common.mk

ifneq ($(TARGET_DISABLE_CMSDK), true)
# CMSDK
include vendor/dot/config/cmsdk_common.mk
endif

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/cm/config/twrp.mk
endif

# Build ParanoidCamera
 ifneq ($(TARGET_USES_AOSP_CAMERA),true)
 PRODUCT_PACKAGES += ParanoidCamera
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
    vendor/dot/bootanimation/bootanimation-480p.zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/dot/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif

# Android O emojis
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/fonts/NotoColorEmoji.ttf:system/fonts/NotoColorEmoji.ttf

PRODUCT_PACKAGES += \
    BluetoothExt \
    CMAudioService \
    CMParts \
    Development \
    Profiles \
    WeatherManagerService

# Optional CM packages
PRODUCT_PACKAGES += \
    libemoji \
    LiveWallpapersPicker \
    PhotoTable \
    Terminal

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Custom CM packages
PRODUCT_PACKAGES += \
    CMSettingsProvider \
    Eleven \
    LiveLockScreenService \
    ThemeInterfacer \
    WallpaperPicker \
    WeatherProvider

ifeq ($(WITH_DOTHOME), true)
PRODUCT_PACKAGES += \
    Trebuchet
endif

# Required keyboard packages
PRODUCT_PACKAGES += \
    LatinIME

# dotOS Packages
PRODUCT_PACKAGES += \
    Music \
    Gallery2 \
    Clock \
    Calculator \
    DotPapers \
    Browser \
    AudioX \
    Lawnchair \
    Recorder 

DOT_CHANGELOG := true
NO_SQUISHER   := true

#Dex2oat
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-threads=6 \
    dalvik.vm.image-dex2oat-threads=8

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Extra tools in CM
PRODUCT_PACKAGES += \
    7z \
    bash \
    bzip2 \
    curl \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Custom off-mode charger
ifneq ($(WITH_CM_CHARGER),false)
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images \
    font_log.png \
    libhealthd.cm
endif

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank

# Conditionally build in su
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

DEVICE_PACKAGE_OVERLAYS += vendor/dot/overlay/common

PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 1
ifndef DOT_OFFICIAL
    DOT_BUILDTYPE := UNOFFICIAL
endif

ifeq ($(DOT_OFFICIAL), true)
   CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)
   LIST = $(shell curl -s https://raw.githubusercontent.com/DotOS/android_vendor_dot/dot-n/dot.devices)
   DELTA_VER = $(shell curl -s https://raw.githubusercontent.com/DotOS/services_apps_ota/dot-n/delta/delta.xml | sed '5!d')
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      DOT_BUILDTYPE := OFFICIAL
      
      PRODUCT_PACKAGES += \
      DotOTA
    endif
    ifneq ($(IS_OFFICIAL), true)
       DOT_BUILDTYPE := UNOFFICIAL
       $(error Device is not official "$(FOUND)")
    endif
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.ota.romname=$(TARGET_PRODUCT) \
        persist.ota.version=$(shell date +%Y%m%d) \
        persist.ota.manifest=https://raw.githubusercontent.com/DotOS/services_apps_ota/dot-n/$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3).xml \
        persist.delta_ota.manifest=https://raw.githubusercontent.com/DotOS/services_apps_ota/dot-n/delta/delta.xml \
 	ro.delta.version = $(shell echo "$(DELTA_VER)" | sed 's/<\/\?[^>]\+>//g')
endif

DOT_VERSION := DOT-N-v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(DOT_BUILD)-$(DOT_BUILDTYPE)

PRODUCT_PROPERTY_OVERRIDES += \
 ro.dot.version=$(DOT_VERSION) \
 ro.modversion=$(DOT_VERSION) \
 dot.build.type=$(DOT_BUILDTYPE) \
 ro.dot.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
 dot.ota.version= $(shell date +%Y%m%d) \
 ro.substratum.verified=true \
 ro.opa.eligible_device=true

# Squisher Location
SQUISHER_SCRIPT := vendor/dot/tools/squisher

DOT_DISPLAY_VERSION := $(DOT_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dot.display.version=$(DOT_DISPLAY_VERSION)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/dot/config/partner_gms.mk
-include vendor/cyngn/product.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)

ROOT_METHOD ?= rootless
ifeq ($(ROOT_METHOD), magisk)
# MAGISK -Systemless Root

PRODUCT_PACKAGES += \
    MagiskManager

#Magisk.zip
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/zips/Magisk.zip:system/addon.d/Magisk.zip
endif

# DotExtras
PRODUCT_PACKAGES += \
    DotExtras
