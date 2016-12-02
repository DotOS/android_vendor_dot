#!/sbin/sh
#
# Copyright (c) 2015 - Mattia "AntaresOne" D'Alleva
# Copyright (c) 2015 - JDCTeam
#
# EXT4/F2FS format script with MultiROM support
# Check current /system FS and format accordingly to the FS found
# Check installation/upgrade type. If primary ROM run format process, else don't run it (installing as secondary ROM
#
# TODO: check again MultiROM recognition, it is not working.

# Set this to true to clean kernel settings
ALUCLEAN=false
# Notification LED pattern through sysfs
LED=/sys/class/sec/led/led_pattern
# MultiROM recognition
MROM=$(ls /tmp | grep "META-INF")

# Clean ART & cachefs
CLEAN() {
    mount /data
    if [ "$ALUCLEAN" == "true" ]; then
	echo "Cleaning kernel settings"
	rm -rf /data/.b--b
    fi
    echo "Cleaning ART cache"
    rm -rf /data/dalvik-cache
    umount /data
    echo "Cleaning cachefs"
    mount /cache
    rm -rf /cache/*
    umount /cache
    # Reset LED
    echo 0 > $LED
    exit 0
}

# Format
FORMAT() {
    if [ "$TYPE" == "ext4" ]; then
        echo "Found ext4 filesystem. Formatting..."
        mke2fs -T ext4 /dev/block/mmcblk0p16
    elif [ "$TYPE" == "f2fs" ]; then
        echo "Found F2FS filesystem. Formatting..."
        mkfs.f2fs /dev/block/mmcblk0p16
    else
        # Some recoveries may not have F2FS tools
        echo "No filesystem specified. Formatting as ext4..."
        mke2fs -T ext4 /dev/block/mmcblk0p16
    fi
    CLEAN
}

# Primary ROM
MAIN() {
    echo "Installing in /system"
    # Debug: check if the script is alive, blink blue
    echo 6 > $LED
    # Recognize FS type
    FS=$(eval $(blkid /dev/block/mmcblk0p16 | cut -c 68-); echo $TYPE > /tmp/type.txt)
    TYPE=`cat /tmp/type.txt`
    FORMAT
}

# Start
echo "Checking..."
if [ "$MROM" == "" ]; then
    MAIN
else
    echo "Installing in MultiROM environment"
    # Debug: check if we're installing in MultiROM, blink red for 3 seconds
    echo 2 > $LED
    sleep 3 && echo 0 > $LED
    exit 0
fi
