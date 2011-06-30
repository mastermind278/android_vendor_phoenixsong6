# Inherit AOSP device configuration for morrison.
$(call inherit-product, device/motorola/morrison/morrison.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/phoenixsong6/products/common_full.mk)
$(call inherit-product vendor/phoenixsong6/products/bcm_fm_radio.mk)
$(call inherit-product, vendor/phoenixsong6/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ps6_morrison
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := morrison
PRODUCT_MODEL := MB200
PRODUCT_MANUFACTURER := Motorola

# RomStats Stuff
PRODUCT_PROPERTY_OVERRIDES += \
	ro.stats.romname=AOSP-PS6 \
	ro.stats.romversion=0.6 \
	ro.modversion=beta-0.6

# Morrison CopyFiles
PRODUCT_COPY_FILES += \
	vendor/phoenixsong6/prebuilt/common/app/Stats.apk:system/app/Stats.apk

# Extra Morrison overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/phoenixsong6/overlay/morrison