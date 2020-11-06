PATH_OVERRIDE_SOONG := $(shell echo $(TOOLS_PATH_OVERRIDE))

# Add variables that we wish to make available to soong here.
EXPORT_TO_SOONG := \
    KERNEL_ARCH \
    KERNEL_BUILD_OUT_PREFIX \
    KERNEL_CROSS_COMPILE \
    KERNEL_MAKE_CMD \
    KERNEL_MAKE_FLAGS \
    PATH_OVERRIDE_SOONG \
    TARGET_KERNEL_CONFIG \
    TARGET_KERNEL_SOURCE \
    TARGET_KERNEL_HEADERS

# Setup SOONG_CONFIG_* vars to export the vars listed above.
# Documentation here:
# https://github.com/LineageOS/android_build_soong/commit/8328367c44085b948c003116c0ed74a047237a69

SOONG_CONFIG_NAMESPACES += dotVarsPlugin

SOONG_CONFIG_dotVarsPlugin :=

define addVar
  SOONG_CONFIG_dotVarsPlugin += $(1)
  SOONG_CONFIG_dotVarsPlugin_$(1) := $$(subst ",\",$$($1))
endef

$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call addVar,$(v))))

SOONG_CONFIG_NAMESPACES += dotGlobalVars
SOONG_CONFIG_dotGlobalVars += \
  target_surfaceflinger_fod_lib \
  disable_postrender_cleanup

# Only create soong_namespace var if dealing with UM platforms to avoid breaking build for all other platforms
ifneq ($(filter $(UM_PLATFORMS),$(TARGET_BOARD_PLATFORM)),)
SOONG_CONFIG_dotQcomVars += \
    qcom_soong_namespace
endif

# Soong bool variables

# Set default values
TARGET_SURFACEFLINGER_FOD_LIB ?= surfaceflinger_fod_lib


# Soong value variables
SOONG_CONFIG_dotGlobalVars_disable_postrender_cleanup := $(TARGET_DISABLE_POSTRENDER_CLEANUP)
SOONG_CONFIG_dotGlobalVars_target_surfaceflinger_fod_lib := $(TARGET_SURFACEFLINGER_FOD_LIB)

# et Qcom Soong Namespace for UM platforms Only
ifneq ($(filter $(UM_PLATFORMS),$(TARGET_BOARD_PLATFORM)),)
SOONG_CONFIG_dotQcomVars_qcom_soong_namespace := $(QCOM_SOONG_NAMESPACE)
endif