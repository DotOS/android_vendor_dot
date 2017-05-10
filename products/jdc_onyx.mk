# Inherit AOSP device configuration for oneplus2
$(call inherit-product, device/oneplus/onyx/aosp_onyx.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := jdc_onyx
PRODUCT_DEVICE := onyx
PRODUCT_BRAND := oneplus
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := OnePlus X
