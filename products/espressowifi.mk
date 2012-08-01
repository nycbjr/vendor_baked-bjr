# Inherit device configuration
$(call inherit-product, device/samsung/espressowifi/full_espressowifi.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/espressowifi

PRODUCT_DEVICE := espressowifi
PRODUCT_NAME := baked_espressowifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P3113
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P3113 BUILD_FINGERPRINT=samsung/espressowifiue/espressowifi:4.0.3/IML74K/P3113UEALD3:user/release-keys PRIVATE_BUILD_DESC="espressowifiue-user 4.0.3 IML74K P3113UEALD3 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := espressowifi

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
