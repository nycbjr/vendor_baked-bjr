# Inherit common tuff
$(call inherit-product, vendor/baked/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common_tablets

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=regulus.ogg \
    ro.config.alarm_alert=Alarm_Beep_03.ogg


PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Inherit drm blobs
-include vendor/baked/configs/common_drm_tablet.mk

