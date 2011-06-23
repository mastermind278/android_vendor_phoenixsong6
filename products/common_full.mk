# Inherit common stuff
$(call inherit-product, vendor/phoenixsong6/products/common.mk)

include frameworks/base/data/sounds/AudioPackage5.mk

# Themes
include vendor/phoenixsong6/products/themes.mk