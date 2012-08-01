$(call inherit-product, vendor/baked/configs/common.mk)

# Inherit drm blobs
-include vendor/baked/configs/common_drm_phone.mk
