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

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/dot/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

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

# Theme engine
include vendor/dot/config/themes_common.mk

ifneq ($(TARGET_DISABLE_CMSDK), true)
# CMSDK
include vendor/dot/config/cmsdk_common.mk
endif

# Bootanimation
PRODUCT_PACKAGES += \
    bootanimation.zip

# Required CM packages
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
    AudioFX \
    CMSettingsProvider \
    CMUpdater \
    CustomTiles \
    LineageSetupWizard \
    Eleven \
    ExactCalculator \
    Jelly \
    LiveLockScreenService \
    LockClock \
    ThemeInterfacer \
    Trebuchet \
    WallpaperPicker \
    WeatherProvider

# dotOS Packages
PRODUCT_PACKAGES += \
    An \
    Timber \
    Launcher3 

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

PRODUCT_VERSION_MAJOR = V1
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE := 0

ifeq ($(TARGET_VENDOR_SHOW_MAINTENANCE_VERSION),true)
    DOT_VERSION_MAINTENANCE := $(PRODUCT_VERSION_MAINTENANCE)
else
    DOT_VERSION_MAINTENANCE := 0
endif

# Set DOT_BUILDTYPE from the env RELEASE_TYPE, for jenkins compat

ifndef DOT_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "DOT_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^DOT_||g')
        DOT_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(DOT_BUILDTYPE)),)
    DOT_BUILDTYPE :=
endif

ifdef DOT_BUILDTYPE
    ifneq ($(DOT_BUILDTYPE), SNAPSHOT)
        ifdef DOT_EXTRAVERSION
            # Force build type to EXPERIMENTAL
            DOT_BUILDTYPE := EXPERIMENTAL
            # Remove leading dash from DOT_EXTRAVERSION
            DOT_EXTRAVERSION := $(shell echo $(DOT_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to DOT_EXTRAVERSION
            DOT_EXTRAVERSION := -$(DOT_EXTRAVERSION)
        endif
    else
        ifndef DOT_EXTRAVERSION
            # Force build type to EXPERIMENTAL, SNAPSHOT mandates a tag
            DOT_BUILDTYPE := EXPERIMENTAL
        else
            # Remove leading dash from DOT_EXTRAVERSION
            DOT_EXTRAVERSION := $(shell echo $(DOT_EXTRAVERSION) | sed 's/-//')
            # Add leading dash to DOT_EXTRAVERSION
            DOT_EXTRAVERSION := -$(DOT_EXTRAVERSION)
        endif
    endif
else
    # If DOT_BUILDTYPE is not defined, set to UNOFFICIAL
    DOT_BUILDTYPE := UNOFFICIAL
    DOT_EXTRAVERSION :=
endif

ifeq ($(DOT_BUILDTYPE), UNOFFICIAL)
    ifneq ($(TARGET_UNOFFICIAL_BUILD_ID),)
        DOT_EXTRAVERSION := -$(TARGET_UNOFFICIAL_BUILD_ID)
    endif
endif

ifeq ($(DOT_BUILDTYPE), RELEASE)
    ifndef TARGET_VENDOR_RELEASE_BUILD_ID
        DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(DOT_BUILD)
    else
        ifeq ($(TARGET_BUILD_VARIANT),user)
            ifeq ($(DOT_VERSION_MAINTENANCE),0)
                DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(DOT_BUILD)
            else
                DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(DOT_VERSION_MAINTENANCE)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(DOT_BUILD)
            endif
        else
            DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(DOT_BUILD)
        endif
    endif
else
    ifeq ($(DOT_VERSION_MAINTENANCE),0)
        DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(DOT_BUILDTYPE)$(DOT_EXTRAVERSION)-$(DOT_BUILD)
    else
        DOT_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(DOT_VERSION_MAINTENANCE)-$(shell date -u +%Y%m%d)-$(DOT_BUILDTYPE)$(DOT_EXTRAVERSION)-$(DOT_BUILD)
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dot.version=$(DOT_VERSION) \
    ro.dot.releasetype=$(DOT_BUILDTYPE) \
    ro.modversion=$(DOT_VERSION) \
    ro.cmlegal.url=https://lineageos.org/legal \
    ro.lineageoms.version=$(LINEAGE_VERSION)

PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/dot/build/target/product/security/lineage

-include vendor/cm-priv/keys/keys.mk

DOT_DISPLAY_VERSION := $(DOT_VERSION)

ifneq ($(PRODUCT_DEFAULT_DEV_CERTIFICATE),)
ifneq ($(PRODUCT_DEFAULT_DEV_CERTIFICATE),build/target/product/security/testkey)
    ifneq ($(DOT_BUILDTYPE), UNOFFICIAL)
        ifndef TARGET_VENDOR_RELEASE_BUILD_ID
            ifneq ($(DOT_EXTRAVERSION),)
                # Remove leading dash from DOT_EXTRAVERSION
                DOT_EXTRAVERSION := $(shell echo $(DOT_EXTRAVERSION) | sed 's/-//')
                TARGET_VENDOR_RELEASE_BUILD_ID := $(DOT_EXTRAVERSION)
            else
                TARGET_VENDOR_RELEASE_BUILD_ID := $(shell date -u +%Y%m%d)
            endif
        else
            TARGET_VENDOR_RELEASE_BUILD_ID := $(TARGET_VENDOR_RELEASE_BUILD_ID)
        endif
        ifeq ($(DOT_VERSION_MAINTENANCE),0)
            DOT_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(DOT_BUILD)
        else
            DOT_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(DOT_VERSION_MAINTENANCE)-$(TARGET_VENDOR_RELEASE_BUILD_ID)-$(DOT_BUILD)
        endif
    endif
endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dot.display.version=$(DOT_DISPLAY_VERSION)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/dot/config/partner_gms.mk
-include vendor/cyngn/product.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)

#Timber
PRODUCT_PACKAGES += \
     Timber 

#An
PRODUCT_PACKAGES += \
     An
