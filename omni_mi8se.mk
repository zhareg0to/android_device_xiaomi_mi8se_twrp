# Inherit from the common Open Source product configuration
$(call inherit-product, device/xiaomi/mi8se/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := mi8se

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_mi8se
PRODUCT_DEVICE := mi8se
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 SE
PRODUCT_MANUFACTURER := Xiaomi

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/sirius/sirius:8.1.0/OPM1.171019.019/V9.5.9.0.OEBCNFA:user/release-keys" \
    PRIVATE_BUILD_DESC="sirius-user 8.1.0 OPM1.171019.019 V9.5.9.0.OEBCNFA release-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    sys.usb.controller=a600000.dwc3 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

TARGET_VENDOR_PRODUCT_NAME := mi8se
TARGET_VENDOR_DEVICE_NAME := mi8se
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=mi8se \
                                BUILD_PRODUCT=mi8se \
                                PRODUCT_NAME=mi8se
