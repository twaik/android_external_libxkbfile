LOCAL_PATH := $(call my-dir)

XKB_SOURCES := \
    src/cout.c		\
    src/maprules.c	\
    src/srvmisc.c	\
    src/xkbatom.c	\
    src/xkbbells.c	\
    src/xkbconfig.c	\
    src/xkbdraw.c	\
    src/xkberrs.c	\
    src/xkbmisc.c	\
    src/xkbout.c	\
    src/xkbtext.c	\
    src/xkmout.c	\
    src/xkmread.c

include $(CLEAR_VARS)

LOCAL_MODULE    := libxkbfile
LOCAL_C_INCLUDES :=							\
	$(LOCAL_PATH)/android/					\
	$(LOCAL_PATH)/include/					\
	$(LOCAL_PATH)/src						\
	$(LOCAL_PATH)/include/X11/extensions	\
	external/xorgproto/include					\
	external/libX11/include					
LOCAL_CFLAGS    := -DHAVE_CONFIG_H
LOCAL_LDFLAGS   := 
LOCAL_SRC_FILES := $(XKB_SOURCES)
LOCAL_SHARED_LIBRARIES := libX11

include $(BUILD_STATIC_LIBRARY)
