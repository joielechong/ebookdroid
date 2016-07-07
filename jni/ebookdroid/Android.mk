LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := ebookdroid

LOCAL_SRC_FILES := 
LOCAL_SRC_FILES += jni_concurrent.c ebookdroidjni.c mupdfdroidbridge.c 
LOCAL_SRC_FILES += cbdroidbridge.c DjvuDroidBridge.cpp fb2droid.cpp

LOCAL_C_INCLUDES := 
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/source/fitz
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/source/pdf
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../mupdfcore/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../hqx
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../djvu

LOCAL_CXX_INCLUDES :=

LOCAL_STATIC_LIBRARIES := djvu mupdfcore hqx

LOCAL_CFLAGS := -DHAVE_CONFIG_H -DTHREADMODEL=POSIXTHREADS -DDEBUGLVL=0

LOCAL_LDLIBS := -llog -lz

include $(BUILD_SHARED_LIBRARY)
