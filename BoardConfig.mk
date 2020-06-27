# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true
TARGET_BOARD_PLATFORM := mt6737m
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := mt6737m

# kernel
ARCH := arm
KERNEL_ARCH := arm
TARGET_KERNEL_ARCH := arm
TARGET_KMODULES := true
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_TAGS_OFFSET := 0xE000000
#TARGET_KERNEL_SOURCE := kernel/moto/panelli
#TARGET_KERNEL_CONFIG := panelli_defconfig #A158_debug_defconfig 
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_PREBUILT_KERNEL := device/moto/panelli/zImage-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2 androidboot.selinux=permissive androidboot.selinux=disabled 

#toolchains
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin


# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4698144768
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_HAS_NO_SELECT_BUTTON := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Moto_panelli,Moto panelli,panelli


# Recovery
BOARD_HAS_DOWNLOAD_MODE := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/moto/panelli/twrp.fstab
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# TWRP
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 100
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true
TW_DEVICE_VERSION := goldfish07
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_CPU_TEMP := true
TW_REBOOT_RECOVERY := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_HAVE_SELINUX := true
TW_DEFAULT_LANGUAGE := en
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb
#use toolbox
TW_USE_TOOLBOX := true
