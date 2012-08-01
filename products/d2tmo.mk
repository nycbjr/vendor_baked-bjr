# Inherit AOSP device configuration for d2tmo.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/baked/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/baked/configs/gsm.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/d2-common

# Setup device specific product configuration.
PRODUCT_NAME := baked_d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.0.4 IMM76D T999UVALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.0.4/IMM76D/T999UVALEM:user/release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
