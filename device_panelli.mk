$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/moto/panelli


# Pixel & aapt config.
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/recovery/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
    $(LOCAL_PATH)/recovery/ueventd.mt6735.rc:root/ueventd.mt6735.rc \



#PRODUCT_PACKAGES += \
#   com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    charger_res_images \
   

# Storage
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.sys.sdcardfs=true


# Vibrator
##PRODUCT_PACKAGES += \
  ##  android.hardware.vibrator@1.0-impl \
    #android.hardware.vibrator@1.0-service
        
    
# USB HAL
#PRODUCT_PACKAGES += \
#    android.hardware.usb@1.0-service
    

# Vibrator HAL
#PRODUCT_PACKAGES += \
#    android.hardware.vibrator@1.0-service.mediatek

# Disable adb security
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	ro.mount.fs=EXT4 \
#	ro.allow.mock.location=0 \
#	ro.debuggable=1 \
#	ro.config.low_ram=false

# For userdebug builds
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	ro.secure=0 \
#	ro.adb.secure=0 \
#	persist.sys.root_access=1 \
#	persist.service.adb.enable=1



#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	persist.sys.usb.config=mtp,adb


# USB
#PRODUCT_PACKAGES += \
#	android.hardware.usb@1.0-service

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true

# Device
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := device_panelli
PRODUCT_DEVICE := panelli
