# Insert new variables inside the Aosp structure
aosp_soong:
	$(hide) mkdir -p $(dir $@)
	$(hide) (\
	echo '{'; \
	echo '"Aosp": {'; \
	echo '    "Needs_text_relocations": $(if $(filter true,$(TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS)),true,false)'; \
    echo '    "Uses_non_treble_camera": $(if $(filter true,$(TARGET_USES_NON_TREBLE_CAMERA)),true,false),'; \
	echo '},'; \
	echo '') > $(SOONG_VARIABLES_TMP)
