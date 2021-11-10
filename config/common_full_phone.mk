# Inherit full common Streak stuff
$(call inherit-product, vendor/streak/config/common.mk)

# Recorder
PRODUCT_PACKAGES += \
    Recorder

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/streak/config/telephony.mk)
