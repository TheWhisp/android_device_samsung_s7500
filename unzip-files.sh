#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=trebon
MANUFACTURER=samsung

mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/cameradata
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/etc
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.0
mkdir -p ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi/ath6k/AR6003/hw2.1.1

# rill [All files exist]
mv ./trebon_update/system/lib/libril.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libsecril-client.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libsec-ril.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libdiag.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/bin/qmuxd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mv ./trebon_update/system/bin/rild ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# omx libs [Fixed]
mv ./trebon_update/system/lib/libmm-abl.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libmm-adspsvc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAacDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAacEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAdpcmDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAmrDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAmrEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAmrRtpDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxAmrwbDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxCore.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxEvrcDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxEvrcEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxEvrcHwDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxH264Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxMp3Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxMpeg4Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxOn2Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxQcelp13Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxQcelp13Enc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxQcelpHwDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxrv9Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxVidEnc.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxVp8Dec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxWmaDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libOmxWmvDec.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# omx shared libs [OK]
mv ./trebon_update/system/lib/libomx_aacdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_amrdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_amrenc_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_avcdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_m4vdec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_mp3dec_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libomx_sharedlibrary.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# camera [Fixed]
mv ./trebon_update/system/lib/liboemcamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libmmjpeg.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libmmipl.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libjpeg.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libActionShot.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libarccamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libarccamera.solibarcplatform.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libarccamera.solibarcsoft_subtitle.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libCaMotion.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libcaps.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libPanoraMax1.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libPlusMe.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libseccamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libseccameraadaptor.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libcamera.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libcamera_client.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libcameraservice.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# wifi [Fixed]
mv ./trebon_update/system/wifi/ar6000.ko ./vendor/$MANUFACTURER/$DEVICE/proprietary/wifi
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/athwlan.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/athwlan_mobile.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/athwlan_router.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/athwlan_tablet.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.03 ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.05 ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/bdata.SD31.bin.07 ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/data.patch.hw3_0.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/device.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/wifi/ath6k/AR6003/hw2.1.1/otp.bin ./vendor/$MANUFACTURER/$DEVICE/proprietary/ath6k/AR6003/hw2.1.1
mv ./trebon_update/system/bin/hostapd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mv ./trebon_update/system/bin/wlandutservice ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mv ./trebon_update/system/bin/wlan_tool ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mv ./trebon_update/system/bin/wmiconfig ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# bluetooth
mv ./trebon_update/system/bin/BCM2049C0_003.001.031.0088.0094.hcd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# audio
mv ./trebon_update/system/lib/liba2dp.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/libaudioeq.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# gps
mv ./trebon_update/system/lib/hw/gps.msm7k.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mv ./trebon_update/system/bin/gpsd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# lights
mv ./trebon_update/system/lib/hw/lights.msm7k.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# sensor
mv ./trebon_update/system/lib/hw/sensors.default.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mv ./trebon_update/system/bin/memsicd ./vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# camera
mv ./trebon_update/system/lib/egl/libGLESv1_CM_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mv ./trebon_update/system/lib/egl/libq3dtools_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mv ./trebon_update/system/lib/egl/libEGL_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mv ./trebon_update/system/lib/egl/libGLESv2_adreno200.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mv ./trebon_update/system/etc/firmware/yamato_pfp.fw ./vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mv ./trebon_update/system/etc/firmware/yamato_pm4.fw ./vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mv ./trebon_update/system/lib/libgsl.so ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib
mv ./trebon_update/system/lib/egl/egl.cfg ./vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
