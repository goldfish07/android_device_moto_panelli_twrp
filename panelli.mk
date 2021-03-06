# Release name
PRODUCT_RELEASE_NAME := panelli

# Inherit some common lineage stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/moto/panelli/device_panelli.mk)

# Resolution
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := panelli
PRODUCT_NAME := panelli
PRODUCT_BRAND := moto
PRODUCT_MODEL := panelli
PRODUCT_MANUFACTURER := moto
