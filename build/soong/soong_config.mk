# Insert new variables inside the Aosp structure
dot_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Dot": {'; \
	echo '    "Uses_generic_camera_parameter_library": $(if $(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY),false,true),'; \
	echo '    "Specific_camera_parameter_library": "$(TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY)",'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false),'; \
	echo '    "Uses_non_treble_camera": $(if $(filter true,$(TARGET_USES_NON_TREBLE_CAMERA)),true,false),'; \
	echo '    "Has_legacy_camera_hal1": $(if $(filter true,$(TARGET_HAS_LEGACY_CAMERA_HAL1)),true,false),'; \
	echo '    "Uses_media_extensions": $(if $(filter true,$(TARGET_USES_MEDIA_EXTENSIONS)),true,false),'; \
	echo '    "BTVendorPath": "$(call project-path-for,bt-vendor)",'; \
	echo '    "RILPath": "$(call project-path-for,ril)",'; \
	echo '    "WLANPath": "$(call project-path-for,wlan)",'; \
	echo '    "Target_shim_libs": "$(TARGET_LD_SHIM_LIBS)"'; \
	echo '},'; \
	echo '"Qualcomm": {'; \
	echo '    "BoardUsesQTIHardware": $(if $(filter true,$(BOARD_USES_QTI_HARDWARE)),true,false),'; \
	echo '    "BoardUsesQCOMHardware": $(if $(filter true,$(BOARD_USES_QCOM_HARDWARE)),true,false),'; \
	echo '    "TargetUsesQCOMBsp": $(if $(filter true,$(TARGET_USES_QCOM_BSP)),true,false),'; \
	echo '    "TargetUsesQCOMLegacyBsp": $(if $(filter true,$(TARGET_USES_QCOM_LEGACY_BSP)),true,false),'; \
	echo '    "BoardUsesLegacyAlsa": $(if $(filter true,$(BOARD_USES_LEGACY_ALSA_AUDIO)),true,false),'; \
	echo '    "Cant_reallocate_omx_buffers":  $(if $(filter omap4,$(TARGET_BOARD_PLATFORM)),true,false),';  \
	echo '    "QCOMAudioPath": "$(call project-path-for,qcom-audio)",'; \
	echo '    "QCOMCameraPath": "$(call project-path-for,qcom-camera)",'; \
	echo '    "QCOMDataservicesPath": "$(call project-path-for,qcom-dataservices)",';  \
	echo '    "QCOMDisplayPath": "$(call project-path-for,qcom-display)",';  \
	echo '    "QCOMGPSPath": "$(call project-path-for,qcom-gps)",';  \
	echo '    "QCOMMediaPath": "$(call project-path-for,qcom-media)",';  \
	echo '    "QCOMSensorsPath": "$(call project-path-for,qcom-sensors)"';  \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
