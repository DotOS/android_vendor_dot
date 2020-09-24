
include vendor/dot/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/dot/config/BoardConfigQcom.mk
endif

include vendor/dot/config/BoardConfigSoong.mk
