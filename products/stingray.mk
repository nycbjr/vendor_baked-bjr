$(call inherit-product, device/moto/stingray/full_stingray.mk)

$(call inherit-product, vendor/baked/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/stingray

# Discard inherited values and use our own instead.
PRODUCT_NAME := baked_stingray
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := stingray
PRODUCT_MODEL := Xoom
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=trygon BUILD_ID=IML74K BUILD_FINGERPRINT=verizon/trygon/stingray:3.2.4/HLK75F/221360:user/release-keys PRIVATE_BUILD_DESC="trygon-user 3.2.4 HLK75F 221360 release-keys" BUILD_NUMBER=221360

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
