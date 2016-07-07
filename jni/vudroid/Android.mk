LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ebookdroid

LOCAL_SRC_FILES := jni_concurrent.c ebookdroidjni.c pdfdroidbridge.c 

LOCAL_C_INCLUDES := 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/source/fitz
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/source/pdf
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/include

LOCAL_CXX_INCLUDES :=

LOCAL_STATIC_LIBRARIES := mupdfcore

LOCAL_LDLIBS := -llog -lz

include $(BUILD_SHARED_LIBRARY)
