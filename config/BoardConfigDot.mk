include vendor/dot/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/dot/config/BoardConfigQcom.mk
endif

# Gapps
ifeq ($(WITH_GAPPS), true)
    include vendor/gms/products/board.mk
endif

include vendor/dot/config/BoardConfigSoong.mk
