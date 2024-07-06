ifneq ($(filter X70,$(TARGET_DEVICE)),)

LOCAL_PATH := /dev/block/platform/soc/11270000.ufshci/by-name

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
