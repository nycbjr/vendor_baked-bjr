# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := baked_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES +=  PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.0.4/IMM76K/336647:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76K 336647 release-keys"

PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
