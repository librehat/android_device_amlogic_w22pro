LOCAL_PATH:= $(call my-dir)

ifeq ($(PRODUCT_PROVIDES_DEFAULT_KEYLAYOUT),true)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := qwerty.kcm
#include $(BUILD_KEY_CHAR_MAP)

#file := $(TARGET_OUT_KEYLAYOUT)/qwerty.kl
#ALL_PREBUILT += $(file)
#$(file): $(LOCAL_PATH)/qwerty.kl | $(ACP)
#	$(transform-prebuilt-to-target)

endif
