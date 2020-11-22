# Required packages
PRODUCT_PACKAGES += \
    ThemePicker \
    Clock \
    SoundPickerPrebuilt \
    PixelThemesStub2019 \
    StreakThemesStub \
    QuickAccessWallet

ifneq ($(TARGET_BUILD_GAPPS),)
PRODUCT_PACKAGES += \
    Gallery \
    Via
endif

# Extra tools in Streak
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Fonts
PRODUCT_PACKAGES += \
    FontGoogleSansOverlay \
    FontOnePlusSlateOverlay \
    FontSanFranciscoOverlay \
    FontInterOverlay \
    FontBarlowOverlay \
    FontLinotteOverlay

# Custom Overlays
# Settings
PRODUCT_PACKAGES += \
    SystemPitchBlackOverlay \
    SystemUIPitchBlackOverlay \
    SystemDarkGrayOverlay \
    SystemUIDarkGrayOverlay \
    SystemStyleOverlay \
    SystemUIStyleOverlay \
    SystemNightOverlay \
    SystemUINightOverlay

# Google icons mess
PRODUCT_PACKAGES += \
    wellbeingconf
