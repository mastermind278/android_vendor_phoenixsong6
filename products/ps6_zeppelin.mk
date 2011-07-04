# Inherit AOSP device configuration for zeppelin.
$(call inherit-product, device/motorola/zeppelin/zeppelin.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/phoenixsong6/products/common_full.mk)
$(call inherit-product vendor/phoenixsong6/products/bcm_fm_radio.mk)
$(call inherit-product, vendor/phoenixsong6/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ps6_zeppelin
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := zeppelin
PRODUCT_MODEL := MB501
PRODUCT_MANUFACTURER := Motorola

# RomStats Stuff
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=Zeppelin_v$(PS6_VERSION)-beta

# Zeppelin CopyFiles
PRODUCT_COPY_FILES += \
	vendor/phoenixsong6/prebuilt/common/app/Stats.apk:system/app/Stats.apk

# Extra Zeppelin overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/phoenixsong6/overlay/zeppelin
