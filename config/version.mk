# Versioning System

ifndef STREAK_BUILD_TYPE
    STREAK_BUILD_TYPE := UNOFFICIAL
endif

TARGET_PRODUCT_SHORT := $(subst streak_,,$(STREAK_BUILD_TYPE))

# Set all versions
STREAK_VERSION_BASE := 1.0
STREAK_CODENAME := Hummingbird

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)
BUILD_DATE := $(shell date -u +%d%m%Y)
BUILD_TIME := $(shell date -u +%H%M)
BUILD_DATE_TIME := $(BUILD_DATE)$(BUILD_TIME)

ifeq ($(TARGET_BUILD_GAPPS),true)
    STREAK_VERSION := Streak-$(STREAK_VERSION_BASE)-$(STREAK_CODENAME)-GAPPS-$(CURRENT_DEVICE)-$(STREAK_BUILD_TYPE)-$(BUILD_DATE)-$(BUILD_TIME)
else
    STREAK_VERSION := Streak-$(STREAK_VERSION_BASE)-$(STREAK_CODENAME)-VANILLA-$(CURRENT_DEVICE)-$(STREAK_BUILD_TYPE)-$(BUILD_DATE)-$(BUILD_TIME)
endif

PRODUCT_GENERIC_PROPERTIES += \
    ro.streak.version=$(STREAK_VERSION_BASE) \
    ro.build.datetime=$(BUILD_DATE_TIME) \
    ro.streak.build.type=$(STREAK_BUILD_TYPE) \
    ro.streak.codename=$(STREAK_CODENAME) \
    ro.streak.datetime=$(BUILD_DATE)
