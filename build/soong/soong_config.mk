# Insert new variables inside the Aosp structure
aosp_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Aosp": {'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false)'; \
    echo '    "Uses_non_treble_camera": $(if $(filter true,$(TARGET_USES_NON_TREBLE_CAMERA)),true,false),'; \
	echo '},'; \
	echo '"Qualcomm": {'; \
	echo '    "BoardUsesQTIHardware": $(if $(filter true,$(BOARD_USES_QTI_HARDWARE)),true,false),'; \
	echo '    "BoardUsesQCOMHardware": $(if $(filter true,$(BOARD_USES_QCOM_HARDWARE)),true,false),'; \
	echo '    "TargetUsesQCOMBsp": $(if $(filter true,$(TARGET_USES_QCOM_BSP)),true,false),'; \
	echo '    "TargetUsesQCOMLegacyBsp": $(if $(filter true,$(TARGET_USES_QCOM_LEGACY_BSP)),true,false),'; \
	echo '    "BoardUsesLegacyAlsa": $(if $(filter true,$(BOARD_USES_LEGACY_ALSA_AUDIO)),true,false)'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
