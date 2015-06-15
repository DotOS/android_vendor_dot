#!/sbin/busybox sh
#    ____  ____  __   ____  ____       
#   (_  _)( ___)(  ) (_  _)( ___)      
#  .-_)(   )__)  )(__  )(   )__)       
#  \____) (__)  (____)(__) (____)      
#   ____  ____  _  _  ___  _____  _  _ 
#  (  _ \( ___)( \/ )/ __)(  _  )( \( )
#   )(_) ))__)  \  /( (__  )(_)(  )  ( 
#  (____/(____)  \/  \___)(_____)(_)\_)
#
# Copyright (c) 2015 - Mattia "AntaresOne" D'Alleva
# Copyright (c) 2015 - Jflte Dev Connection
#
# Export busybox path
export BB=/sbin/busybox
# Check ROM installation/upgrade:
# if touching primary ROM run filesystem check and format on /system, else don't run it
export MROM=$(cat /tmp/META-INF/com/google/android/updater-script | grep "MultiROM");
if [ "$MROM" == "" ]; then
    echo "Installing ROM on /system"
    # Mount /system
    $BB mount /system
    # Copy mounts in a text file
    $BB mount > /tmp/mount.txt
    # Unmount /system
    $BB umount /system
    # Set a value for FS
    export FS=$(eval $(/sbin/blkid /dev/block/mmcblk0p16 | /sbin/busybox cut -c 24-); /sbin/busybox echo $TYPE > /tmp/type.txt);
    export TYPE=`cat /tmp/type.txt | grep "ext4"`
    # Filesystem check & format
    if [ "$TYPE" == "ext4" ]; then
        echo "Found ext4 filesystem. Formatting..."
        mke2fs -T ext4 /dev/block/mmcblk0p16
    elif [ "$TYPE" == "" ]; then
        echo "Found f2fs filesystem. Formatting..."
        mkfs.f2fs /dev/block/mmcblk0p16
    else
        # Some recoveries may not have F2FS tools
        echo "No filesystem specified. Formatting as ext4..."
        mke2fs -T ext4 /dev/block/mmcblk0p16
    fi
else
    echo "Installing ROM in MultiROM"
fi
exit 0
