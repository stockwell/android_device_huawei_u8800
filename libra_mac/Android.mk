ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8800)

LOCAL_PATH := $(call my-dir)

ifeq ($(WIFI_LIBRA_MAC),true)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libra_mac.c
LOCAL_MODULE:= libra_mac
LOCAL_SHARED_LIBRARIES := libcutils libc libstdc++ libutils libhwrpc
LOCAL_MODULE_TAGS := eng
include $(BUILD_EXECUTABLE)
endif
endif
