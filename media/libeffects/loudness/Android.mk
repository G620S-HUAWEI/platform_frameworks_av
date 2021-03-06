LOCAL_PATH:= $(call my-dir)

# LoudnessEnhancer library
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	EffectLoudnessEnhancer.cpp \
	dsp/core/dynamic_range_compression.cpp

LOCAL_CFLAGS+= -O2 -fvisibility=hidden

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \

LOCAL_MODULE_RELATIVE_PATH := soundfx
LOCAL_MODULE:= libldnhncr

LOCAL_C_INCLUDES := \
	$(call include-path-for, audio-effects) \

include external/stlport/libstlport.mk
include $(BUILD_SHARED_LIBRARY)
