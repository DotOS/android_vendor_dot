PRODUCT_BRAND ?= JDCTeam

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/AOSP/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PACKAGE_OVERLAYS += vendor/AOSP/overlay/common
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/AOSP/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/AOSP/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false
