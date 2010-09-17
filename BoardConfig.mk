#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := intrinsity
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := galaxys

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x02e00000

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x07500000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x04ac0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_FFORMAT := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true

BOARD_DATA_DEVICE := /dev/block/mmcblk0p2
BOARD_DATA_FILESYSTEM := auto
BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
BOARD_HAS_DATADATA := true
BOARD_DATADATA_DEVICE := /dev/block/stl10
BOARD_DATADATA_FILESYSTEM := auto
BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
BOARD_SYSTEM_DEVICE := /dev/block/stl9
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
BOARD_CACHE_DEVICE := /dev/block/stl11
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
# The following is the *actual* sd card, but those don't mount in recovery.
# The mmc blocks aren't even available.
# Only internal storage (mmcblk0) is available.
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1p1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
