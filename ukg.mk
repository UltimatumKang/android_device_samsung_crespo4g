# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/cdma.mk)

# Crespo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/crespo

# Setup device specific product configuration.
PRODUCT_NAME := xylon_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

