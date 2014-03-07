# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/samsung/trebon/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := trebon
PRODUCT_DEVICE := trebon
PRODUCT_MODEL := GT-S7500

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVidEnc \
    FM \
    Torch \
    make_ext4fs \
    FM \
    rzscontrol \
    SamsungServiceMode \
    bdaddr_read \
    toggleshutter \
    dexpreopt \
    e2fsck \
    brcm_patchram_plus \
    copybit.trebon \
    lights.trebon \
    gralloc.trebon \
    setup_fs \
    screencap

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/trebon/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
       sec_touchscreen.kcm \
       sec_jack.kcm \
       sec_key.kcm

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# proprietary side of the device
$(call inherit-product-if-exists, vendor/samsung/trebon/trebon-vendor.mk)

# fstab
PRODUCT_COPY_FILES += \
    device/samsung/trebon/prebuilt/vold.fstab:system/etc/vold.fstab

# Init
PRODUCT_COPY_FILES += \
    device/samsung/trebon/init.gt-s7500.rc:root/init.gt-s7500.rc \
    device/samsung/trebon/ueventd.gt-s7500.rc:root/ueventd.gt-s7500.rc \
    device/samsung/trebon/init.emmc.rc:root/init.emmc.rc

# 3d
PRODUCT_COPY_FILES += \
    device/samsung/trebon/egl.cfg:system/lib/egl/egl.cfg 

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/trebon/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/samsung/trebon/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/samsung/trebon/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/samsung/trebon/prebuilt/hostapd:system/bin/hostapd \
    device/samsung/trebon/prebuilt/hostapd.conf:system/etc/wifi/hostapd.conf
    


# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

#Kernel Modules
PRODUCT_COPY_FILES += \
    device/samsung/trebon/prebuilt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/samsung/trebon/prebuilt/modules/dal_remotetest.ko:system/lib/modules/al_remotetest.ko \
    device/samsung/trebon/prebuilt/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/samsung/trebon/prebuilt/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/samsung/trebon/prebuilt/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/samsung/trebon/prebuilt/modules/max2165.ko:system/lib/modules/max2165.ko \
    device/samsung/trebon/prebuilt/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
    device/samsung/trebon/prebuilt/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/samsung/trebon/prebuilt/modules/mt2060.ko:system/lib/modules/mt2060.ko \
    device/samsung/trebon/prebuilt/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
    device/samsung/trebon/prebuilt/modules/mt2131.ko:system/lib/modules/mt2131.ko \
    device/samsung/trebon/prebuilt/modules/mt2266.ko:system/lib/modules/mt2266.ko \
    device/samsung/trebon/prebuilt/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    device/samsung/trebon/prebuilt/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
    device/samsung/trebon/prebuilt/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    device/samsung/trebon/prebuilt/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
    device/samsung/trebon/prebuilt/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
    device/samsung/trebon/prebuilt/modules/qt1010.ko:system/lib/modules/qt1010.ko \
    device/samsung/trebon/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/samsung/trebon/prebuilt/modules/tda18218.ko:system/lib/modules/tda18218.ko \
    device/samsung/trebon/prebuilt/modules/tda18271.ko:system/lib/modules/tda18271.ko \
    device/samsung/trebon/prebuilt/modules/tda827x.ko:system/lib/modules/tda827x.ko \
    device/samsung/trebon/prebuilt/modules/tda8290.ko:system/lib/modules/tda8290.ko \
    device/samsung/trebon/prebuilt/modules/tda9887.ko:system/lib/modules/tda9887.ko \
    device/samsung/trebon/prebuilt/modules/tea5761.ko:system/lib/modules/tea5761.ko \
    device/samsung/trebon/prebuilt/modules/tea5767.ko:system/lib/modules/tea5767.ko \
    device/samsung/trebon/prebuilt/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
    device/samsung/trebon/prebuilt/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
    device/samsung/trebon/prebuilt/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
    device/samsung/trebon/prebuilt/modules/xc5000.ko:system/lib/modules/xc5000.ko 
    
#Kernel Modules for Recovery (RFS)
#PRODUCT_COPY_FILES += \
#    device/samsung/trebon/prebuilt/modules/recovery/fsr.ko:recovery/root/lib/modules/fsr.ko \
#    device/samsung/trebon/prebuilt/modules/recovery/fsr_stl.ko:recovery/root/lib/modules/fsr_stl.ko \
#    device/samsung/trebon/prebuilt/modules/recovery/rfs_fat.ko:recovery/root/lib/modules/rfs_fat.ko \
#    device/samsung/trebon/prebuilt/modules/recovery/rfs_glue.ko:recovery/root/lib/modules/rfs_glue.ko \
#    device/samsung/trebon/prebuilt/modules/recovery/sec_param.ko:recovery/root/lib/modules/sec_param.ko
    
#Media profile
PRODUCT_COPY_FILES += \
    device/samsung/trebon/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/trebon/prebuilt/audio.conf:system/etc/bluetooth/audio.conf
## keymap
PRODUCT_COPY_FILES += \
    device/samsung/trebon/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/samsung/trebon/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/trebon/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/trebon/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    device/samsung/trebon/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/trebon/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/trebon/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0 \
    ro.telephony.ril_class=samsung \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=64m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/trebon/trebon-vendor-blobs.mk)
