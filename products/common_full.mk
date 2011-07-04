# Inherit common stuff
$(call inherit-product, vendor/phoenixsong6/products/common.mk)

include frameworks/base/data/sounds/AudioPackage5.mk

# Themes
include vendor/phoenixsong6/products/themes.mk

# Common CopyFiles
PRODUCT_COPY_FILES += \
	vendor/phoenixsong6/prebuilt/common/app/Stats.apk:system/app/Stats.apk \
	vendor/phoenixsong6/prebuilt/common/app/RomManager.apk:system/app/RomManager.apk