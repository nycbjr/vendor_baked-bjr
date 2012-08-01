$(call inherit-product-if-exists, vendor/baked/prebuilt/prebuilts.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/baked/overlay/dictionaries

# T-Mobile theme engine
include vendor/baked/configs/themes_common.mk

PRODUCT_PACKAGES += \
    ApexLauncher \
    Apollo \
    AppWidgetPicker \
    ROMControl \
    DSPManager \
    LatinImeDictionaryPack \
    Microbes \
    MusicFX \
    MusicVisualization \
    NoiseField \
    PhaseBeam \
    libcyanogen-dsp \
    SuperSU

# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/common/xbin/su:system/xbin/su

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live wallpapers for all
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

PRODUCT_PROPERTY_OVERRIDES += \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enterprise_mode=1 \
	windowsmgr.max_events_per_sec=240 \
	ro.kernel.android.checkjni=0

# init.d and Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/baked/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/baked/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/baked/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/baked/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/baked/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/baked/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/baked/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/baked/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/baked/prebuilt/common/etc/init.d/90tweaks:system/etc/init.d/90tweaks \
    vendor/baked/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/baked/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/baked/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/baked/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/baked/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/baked/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/baked/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Cron
PRODUCT_COPY_FILES += \
    vendor/baked/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/baked/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/baked/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/baked/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/baked/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/baked/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/baked/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1

# Inherit common build.prop overrides
-include vendor/baked/configs/common_versions.mk
