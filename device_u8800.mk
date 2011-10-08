$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

DEVICE_PACKAGE_OVERLAYS := device/huawei/u8800/overlay

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := huawei_u8800
PRODUCT_DEVICE := u8800
PRODUCT_MODEL := huawei u8800
PRODUCT_MANUFACTURER := huawei

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

PRODUCT_COPY_FILES += \
    device/huawei/u8800/init.u8800.rc:root/init.u8800.rc \
    device/huawei/u8800/ueventd.u8800.rc:root/ueventd.u8800.rc

$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml


PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    Gallery3d \
    SpareParts \
    Term \
    librs_jni \
    gralloc.msm7x30 \
    overlay.default \
    lights.msm7x30 \
    gps.u8800 \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \

# Firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Fireware wlan
PRODUCT_COPY_FILES += \
    device/huawei/u8800/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/huawei/u8800/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/huawei/u8800/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/huawei/u8800/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/huawei/u8800/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/huawei/u8800/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/huawei/u8800/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \

# egl
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8800/system/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8800/system/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8800/system/lib/libgsl.so:/system/lib/libgsl.so \

# etc
PRODUCT_COPY_FILES += \
    device/huawei/u8800/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/huawei/u8800/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/huawei/u8800/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/huawei/u8800/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/huawei/u8800/media_profiles.xml:/system/etc/media_profiles.xml \
    device/huawei/u8800/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh

# Vold
PRODUCT_COPY_FILES += \
    device/huawei/u8800/prebuilt/vold:/system/bin/vold \
    device/huawei/u8800/vold.fstab:/system/etc/vold.fstab

#ril
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/huawei/u8800/system/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/huawei/u8800/system/lib/libdiag.so:/system/lib/libdiag.so \
    device/huawei/u8800/system/lib/liboncrpc.so:/system/lib/liboncrpc.so \
    device/huawei/u8800/system/lib/libqmi.so:/system/lib/libqmi.so \
    device/huawei/u8800/system/lib/libdsm.so:/system/lib/libdsm.so \
    device/huawei/u8800/system/lib/libqueue.so:/system/lib/libqueue.so \
    device/huawei/u8800/system/lib/libdll.so:/system/lib/libdll.so \
    device/huawei/u8800/system/lib/libcm.so:/system/lib/libcm.so \
    device/huawei/u8800/system/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    device/huawei/u8800/system/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    device/huawei/u8800/system/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \
    device/huawei/u8800/system/lib/libwms.so:/system/lib/libwms.so \
    device/huawei/u8800/system/lib/libnv.so:/system/lib/libnv.so \
    device/huawei/u8800/system/lib/libwmsts.so:/system/lib/libwmsts.so \
    device/huawei/u8800/system/lib/libpbmlib.so:/system/lib/libpbmlib.so \
    device/huawei/u8800/system/lib/libdss.so:/system/lib/libdss.so \
    device/huawei/u8800/system/lib/libauth.so:/system/lib/libauth.so \
    device/huawei/u8800/system/lib/libicudata.so:/system/lib/libicudata.so \

#gemini
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libgemini.so:/system/lib/libgemini.so \


# init bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/qmuxd:/system/bin/qmuxd \
    device/huawei/u8800/system/bin/hci_qcomm_init:/system/bin/hci_qcomm_init \

# other bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/compassd:/system/bin/compassd \
    device/huawei/u8800/system/bin/rmt_oeminfo:/system/bin/rmt_oeminfo \
    device/huawei/u8800/system/bin/rmt_storage:/system/bin/rmt_storage \
    device/huawei/u8800/system/bin/hw_diag_app:/system/bin/hw_diag_app \
    device/huawei/u8800/system/bin/oem_rpc_svc:/system/bin/oem_rpc_svc \
    device/huawei/u8800/system/bin/load_oemlogo:/system/bin/load_oemlogo \


# bluetooth bin
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/bin/bluetoothd:/system/bin/bluetoothd \
    device/huawei/u8800/system/bin/btwlancoex:/system/bin/btwlancoex \
    device/huawei/u8800/system/bin/hciattach:/system/bin/hciattach \
    device/huawei/u8800/system/bin/port-bridge:/system/bin/port-bridge \

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/huawei/u8800/system/lib/libcamera.so:/system/lib/libcamera.so \
    device/huawei/u8800/system/lib/libcamera.so:/obj/lib/libcamera.so \
    device/huawei/u8800/system/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/huawei/u8800/system/lib/libmmipl.so:/system/lib/libmmipl.so \

# audio
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libaudioeq.so:/system/lib/libaudioeq.so \

# sensors
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/libloc.so:/system/lib/libloc.so \
    device/huawei/u8800/system/lib/libloc_api.so:/system/lib/libloc_api.so \
    device/huawei/u8800/system/lib/libloc_ext.so:/system/lib/libloc_ext.so \
    device/huawei/u8800/system/lib/libloc-rpc.so:/system/lib/libloc-rpc.so \
    device/huawei/u8800/system/lib/hw/sensors.default.so:/system/lib/hw/sensors.default.so \

# Gralloc
PRODUCT_COPY_FILES += \
    device/huawei/u8800/system/lib/hw/gralloc.msm7x30.so:/system/lib/hw/gralloc.msm7x30.so \

# Wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8800/prebuilt/libra.ko:/system/lib/modules/libra.ko \
    device/huawei/u8800/prebuilt/librasdioif.ko:/system/lib/modules/librasdioif.ko \

# Huawei RPC
PRODUCT_COPY_FILES += \
    device/huawei/u8800/prebuilt/libhwrpc.so:/system/lib/libhwrpc.so \
    device/huawei/u8800/prebuilt/libhwrpc.so:/obj/lib/libhwrpc.so \

$(call inherit-product-if-exists, vendor/huawei/u8800/u8800-vendor.mk)

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
