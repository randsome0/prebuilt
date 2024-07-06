$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Device specific
PRODUCT_COPY_FILES += /storage/emulated/0/Download/prebuilt/zImage:kernel
# Files under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := X70
PRODUCT_NAME := omni_X70
PRODUCT_BRAND := Cubot
PRODUCT_MODEL := X70
PRODUCT_MANUFACTURER := Cubot

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Cubot/X70/X70:10/QKQ1.190825.002:user/release-keys" \
    PRIVATE_BUILD_DESC="aosp_cubot-user 10 QKQ1.190825.002 release-keys"
