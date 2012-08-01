# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/torospr/full_torospr.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/torospr

# Setup device specific product configuration.
PRODUCT_NAME := baked_torospr
PRODUCT_BRAND := Google
PRODUCT_DEVICE := torospr
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES +=  PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.0.4/IMM76D/L700FD02:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76D L700FD02 release-keys"

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Torospr specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
