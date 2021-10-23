# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2021 The dotOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# DotOS OTA update package

DOT_TARGET_PACKAGE := $(PRODUCT_OUT)/$(DOT_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(DOT_TARGET_PACKAGE)
	$(hide) $(SHA256) $(DOT_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(DOT_TARGET_PACKAGE).sha256sum
	echo -e ${CL_RED}"✄▒█▀▀▄ ▒█▀▀▀█ ▀▀█▀▀ 　 ▒█▀▀▀█ ▒█▀▀▀█ "${CL_RED}
	echo -e ${CL_CYN}"✄▒█░▒█ ▒█░░▒█ ░▒█░░ 　 ▒█░░▒█ ░▀▀▀▄▄ "${CL_RST}
	echo -e ${CL_RED}"✄▒█▄▄▀ ▒█▄▄▄█ ░▒█░░ 　 ▒█▄▄▄█ ▒█▄▄▄█ "${CL_RED}
	@echo -e ""
	@echo -e "         Droid   On   Time       "
	@echo -e ""        
	@echo -e ${CL_YLW} " Grab Some Cookies and Flash!!" ${CL_YLW}
	@echo -e ${CL_BLD}${CL_RED}"===============================-Package complete-==============================="${CL_RED}
	@echo -e ${CL_BLD}${CL_YLW}"Zip: "${CL_YLW} $(DOT_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"SHA256: "${CL_YLW}" `cat $(DOT_TARGET_PACKAGE).sha256sum | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Size:"${CL_YLW}" `du -sh $(DOT_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Size in Int:"${CL_YLW}" `wc -c $(DOT_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"TimeStamp:"${CL_YLW}" `cat $(PRODUCT_OUT)/system/build.prop | grep ro.build.date.utc | cut -d'=' -f2 | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_RED}"================================================================================"${CL_RED}
