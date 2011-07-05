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

# Extra Zeppelin overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/phoenixsong6/overlay/zeppelin
<<<<<<< HEAD

# Post Shell Commands
ifeq ($(HOST_OS), darwin)
$(shell sed -ie '19s/ro.product.device=zeppelin/ro.product.device=zepp/' out/target/product/zeppelin/system/build.prop)
else
$(shell sed -i '19s/ro.product.device=zeppelin/ro.product.device=zepp/' out/target/product/zeppelin/system/build.prop)
endif
=======
>>>>>>> parent of d190ee0... experimental: Shell Command
