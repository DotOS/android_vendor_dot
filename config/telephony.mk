# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/sensitive_pn.xml:system/etc/sensitive_pn.xml

# World APN list
PRODUCT_COPY_FILES += \
    vendor/dot/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk \
    CellBroadcastReceiver

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Default ringtone
PRODUCT_GENERIC_PROPERTIES += \
    ro.config.ringtone=Zen_too.ogg\
    ro.config.notification_sound=Mallet.ogg \
    ro.config.alarm_alert=Bright_morning.ogg