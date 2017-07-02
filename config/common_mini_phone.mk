$(call inherit-product, vendor/dot/config/common_mini.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/dot/config/telephony.mk)
