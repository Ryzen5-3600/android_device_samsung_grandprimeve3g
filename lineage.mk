## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := grandprimeve3g

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/grandprimeve3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grandprimeve3g
PRODUCT_NAME := lineage_grandprimeve3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G531H
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

# LineageOS build fingerprint
BUILD_FINGERPRINT="LineageOS/Samsung/${PRODUCT_MODEL}/${PRODUCT_DEVICE}/${PLATFORM_VERSION}/${BUILD_ID}/userdebug/test-keys" \
PRIVATE_BUILD_DESC="grandprimeve3g-userdebug 7.1.2 NJH47F 20a9a2dc4e test-keys"

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.fingerprint=$(BUILD_FINGERPRINT)
