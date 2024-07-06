$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace with your Device Name's Value.
# Replace with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Cubot/X70/prebuilt/zImage:kernel
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
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Cubot/X70/X70:6.0/MRA58K/1465782828:user/release-keys" \
    PRIVATE_BUILD_DESC="full_cubot6735_65u_m0-user 6.0 MRA58K 1465782828 release-keys"