LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := protected

LOCAL_SRC_FILES := protected.c neigh.c

include $(BUILD_SHARED_LIBRARY)
