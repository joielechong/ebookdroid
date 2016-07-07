LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := djvu

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../mupdfthirdparty/thirdparty/jpeg 
LOCAL_CFLAGS := -fexceptions
LOCAL_CPPFLAGS := -fexceptions

#ifeq ($(TARGET_ARCH_ABI),armeabi)
#    LOCAL_ARM_MODE := arm
#endif # TARGET_ARCH_ABI == armeabi

LOCAL_CFLAGS := -DHAVE_CONFIG_H -DTHREADMODEL=POSIXTHREADS -DDEBUGLVL=0

LOCAL_SRC_FILES := 
LOCAL_SRC_FILES += Arrays.cpp BSByteStream.cpp BSEncodeByteStream.cpp 
LOCAL_SRC_FILES += ByteStream.cpp DataPool.cpp DjVmDir.cpp DjVmDir0.cpp 
LOCAL_SRC_FILES += DjVmDoc.cpp DjVmNav.cpp DjVuAnno.cpp DjVuDocument.cpp 
LOCAL_SRC_FILES += DjVuDumpHelper.cpp DjVuErrorList.cpp DjVuFile.cpp 
LOCAL_SRC_FILES += DjVuFileCache.cpp DjVuGlobal.cpp DjVuGlobalMemory.cpp 
LOCAL_SRC_FILES += DjVuImage.cpp DjVuInfo.cpp DjVuMessage.cpp DjVuMessageLite.cpp 
LOCAL_SRC_FILES += DjVuNavDir.cpp DjVuPalette.cpp DjVuPort.cpp DjVuText.cpp 
LOCAL_SRC_FILES += GBitmap.cpp GContainer.cpp GException.cpp GIFFManager.cpp 
LOCAL_SRC_FILES += GMapAreas.cpp GOS.cpp GPixmap.cpp GRect.cpp GScaler.cpp 
LOCAL_SRC_FILES += GSmartPointer.cpp GString.cpp GThreads.cpp GURL.cpp 
LOCAL_SRC_FILES += GUnicode.cpp IFFByteStream.cpp IW44Image.cpp IW44EncodeCodec.cpp 
LOCAL_SRC_FILES += JB2Image.cpp JPEGDecoder.cpp MMRDecoder.cpp MMX.cpp 
LOCAL_SRC_FILES += UnicodeByteStream.cpp XMLParser.cpp XMLTags.cpp 
LOCAL_SRC_FILES += ZPCodec.cpp atomic.cpp debug.cpp ddjvuapi.cpp miniexp.cpp

#jpeg
LOCAL_STATIC_LIBRARIES := mupdfthirdparty

include $(BUILD_STATIC_LIBRARY)
