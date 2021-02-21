DOT_TARGET_PACKAGE := $(PRODUCT_OUT)/$(DOT_VERSION).zip

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: dot bacon
dot: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(DOT_TARGET_PACKAGE)
	$(hide) $(MD5) $(DOT_TARGET_PACKAGE) | cut -d ' ' -f1 > $(DOT_TARGET_PACKAGE).md5sum
	@echo -e "  "
	@echo -e ${CL_GRN}"  888888ba                    oo       dP     "
	@echo -e ${CL_GRN}"  88    \`8b                            88    "
	@echo -e ${CL_GRN}"  88     88 88d888b. .d8888b. dP .d888b88     "
	@echo -e ${CL_GRN}"  88     88 88'  \`88 88'  \`88 88 88'  \`88  "
	@echo -e ${CL_GRN}"  88    .8P 88       88.  .88 88 88.  .88     "
	@echo -e ${CL_GRN}"  8888888P  dP       \`88888P' dP \`88888P8   "
	@echo -e ${CL_GRN}"           .88888.                            "
	@echo -e ${CL_GRN}"           d8'   \`8b                         "
	@echo -e ${CL_GRN}"           88     88 88d888b.                 "
	@echo -e ${CL_GRN}"           88     88 88'  \`88                "
	@echo -e ${CL_GRN}"           Y8.   .8P 88    88                 "
	@echo -e ${CL_GRN}"           \`8888P'  dP    dP                 "
	@echo -e ${CL_GRN}"    d888888P oo                               "
	@echo -e ${CL_GRN}"       88                                     "
	@echo -e ${CL_GRN}"       88    dP 88d8b.d8b. .d8888b.           "
	@echo -e ${CL_GRN}"       88    88 88'\`88'\`88 88ooood8         "
	@echo -e ${CL_GRN}"       88    88 88  88  88 88.  ...           "
	@echo -e ${CL_GRN}"       dP    dP dP  dP  dP \`88888P'          "
	@echo -e "  "
	@echo -e "Build complete!"
	@echo -e "zip: $(DOT_TARGET_PACKAGE)"
	@echo -e "md5: `cat $(DOT_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(DOT_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e "  "

bacon: dot
