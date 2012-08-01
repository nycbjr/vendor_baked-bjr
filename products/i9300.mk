# Specify phone tech before including full_phone
$(call inherit-product, vendor/baked/configs/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := i9300

# Inherit some common baked stuff.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2-common

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9300
PRODUCT_NAME := baked_i9300
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
