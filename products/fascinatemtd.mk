$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Release name
PRODUCT_RELEASE_NAME := Fascinate

$(call inherit-product, vendor/baked/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/aries-common

# $(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fascinatemtd
PRODUCT_NAME := baked_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# bootanimation
PRODUCT_COPY_FILES += \
	vendor/baked/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
