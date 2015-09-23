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

# MultiROM recognition
MROM=$(ls /tmp | grep "META-INF")

# Clean ART & cachefs
CLEAN() {
    echo "Cleaning ART cache"
    mount /data
    rm -rf /data/dalvik-cache
    umount /data
    echo "Cleaning cachefs"
    mount /cache
    rm -rf /cache/*
    umount /cache
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
    exit 0
fi
