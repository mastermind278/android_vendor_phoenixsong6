# Generic
PRODUCT_NAME := aosp
PRODUCT_BRAND := aosp
PRODUCT_DEVICE := generic

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# ROM Version
PS6_VERSION := 1.0.1

# DevName for RomStats
PRODUCT_PROPERTY_OVERRIDES += \
	ro.stats.devname=phoenixsong6 \
	ro.stats.romname=ProyectAOSP \
	ro.stats.romversion=$(PS6_VERSION) \
	ro.rommanager.developerid=Phoenixsong6&DJGHOSTS3V3N

# Voip
PRODUCT_COPY_FILES += \
     frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Common Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/phoenixsong6/overlay/common

# Common Packages
include vendor/phoenixsong6/products/packages.mk

# T-Mobile Theme Engine
include vendor/phoenixsong6/products/themes_common.mk

# ROM Copyfiles
PRODUCT_COPY_FILES += \
	vendor/phoenixsong6/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
	vendor/phoenixsong6/prebuilt/common/etc/hosts:system/etc/hosts\
	vendor/phoenixsong6/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf
