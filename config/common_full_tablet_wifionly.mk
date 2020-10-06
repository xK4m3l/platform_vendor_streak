# Inherit common Streak stuff
$(call inherit-product, vendor/streak/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Streak LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/overlay/dictionaries
