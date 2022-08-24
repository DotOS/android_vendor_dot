#dotOS Versioning :
DOT_MOD_VERSION = v6.0

DOT_BUILD_TYPE ?= UNOFFICIAL
ifeq ($(WITH_GAPPS), true)
	DOT_BUILD_TYPE := UNOFFICIAL_GAPPS
endif

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

DOT_BUILD_DATE_UTC := $(shell date -u '+%Y%m%d')

ifeq ($(DOT_OFFICIAL), true)
   LIST = $(shell cat vendor/dot/dot.devices)
   FOUND_DEVICE =  $(filter $(CURRENT_DEVICE), $(LIST))
    ifeq ($(FOUND_DEVICE),$(CURRENT_DEVICE))
      IS_OFFICIAL=true
      DOT_BUILD_TYPE := OFFICIAL
      ifeq ($(WITH_GAPPS), true)
	DOT_BUILD_TYPE := GAPPS
      endif
    endif
    ifneq ($(IS_OFFICIAL), true)
       DOT_BUILD_TYPE := UNOFFICIAL
       ifeq ($(WITH_GAPPS), true)
	 DOT_BUILD_TYPE := UNOFFICIAL_GAPPS
       endif
       $(error Device is not official "$(FOUND)")
    endif

endif

TARGET_PRODUCT_SHORT := $(subst dot_,,$(DOT_BUILD))

DOT_VERSION := dotOS-$(DOT_MOD_VERSION)-$(CURRENT_DEVICE)-$(DOT_BUILD_TYPE)-$(DOT_BUILD_DATE_UTC)

DOT_FINGERPRINT := dotOS/$(DOT_MOD_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(DOT_BUILD_DATE_UTC)