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
	ro.modversion=Morrison_v$(PS6_VERSION)-beta

# Extra Morrison overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/phoenixsong6/overlay/morrison