#!/bin/bash

device=$(echo $TARGET_PRODUCT | cut -d _ -f 2,3)
echo ".................................."
echo "....Generating OTA for $device...."
echo ".................................."

if [ -f .xml ]; then
	rm .xml
fi

cp vendor/dot/ota.xml $device.xml

touch vendor/dot/$device.xml

DOT_OTA_MD5=$(cat "$OUT/$(DOT_TARGET_PACKAGE).md5sum" | cut -d ' ' -f 1)
DOT_OTA_FILESIZE=$(ls -la "$OUT/$(DOT_TARGET_PACKAGE)" | cut -d ' ' -f 5)
DOT_OTA_ROM=dot_"$device"
DOT_OTA_VERNUM=$(shell date +%Y%m%d)
DOT_OTA_URL=https://sourceforge.net/projects/dotos-ota/files/$device/$DOT_TARGET_PACKAGE
DOT_HTTP_URL=https://sourceforge.net/projects/dotos-ota/files/$device

sed -i "s/DOT_OTA_ROM/$DOT_OTA_ROM/g" $device.xml
sed -i "s/DOT_OTA_VERSION/${DOT_VERSION}/g" $device.xml
sed -i "s/DOT_OTA_VERNUM/$DOT_OTA_VERNUM/g" $device.xml
sed -i "s|DOT_OTA_URL|$DOT_OTA_URL|g" $device.xml
sed -i "s|DOT_HTTP_URL|$DOT_HTTP_URL|g" $device.xml
sed -i "s/DOT_OTA_MD5/DOT_OTA_MD5/g" $device.xml
sed -i "s/DOT_OTA_FILESIZE/DOT_OTA_FILESIZE/g" $device.xml

if [ -d ${ANDROID_BUILD_TOP}/ota ]; then
	push
else
	cd ${ANDROID_BUILD_TOP}
	git clone git@github.com:DotOS/services_apps_ota.git ota
	push
fi

push () {
	mv vendor/dot/tools/$device.xml ${ANDROID_BUILD_TOP}/ota/$device.xml
	cd ${ANDROID_BUILD_TOP}/ota
	git add -A
	git commit -m "$device: weekly update ($(date -d "$mdate" +'%d/%m/%Y'))"
	git push -f -s origin dot-n
}
