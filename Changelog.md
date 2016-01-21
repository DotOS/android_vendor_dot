# Jflte DevCon Team
### Developers & Testers
[B--B](https://github.com/B--B) - Lead

[AntaresOne](http://github.com/AntaresOne) - Developer, git mantainer, scripting, tester

[Alucard24](http://github.com/Alucard24) - Kernel Developer

[MatthewBooth](http://github.com/MatthewBooth) - OTA Updates, git maintainer, scripting, tester

[angelcalibur](https://github.com/angelcalibur) - tester

[smeroni68](https://github.com/smeroni68) - tester

[Jimsilver73](https://github.com/Jimsilver73) - tester

[hawkerpaul](https://github.com/hawkerpaul) - tester, scripting

[franzyroy](https://github.com/franzyroy) - tester, cm themer

[smstiv](https://github.com/smstiv) - tester

[side](https://github.com/dkati) - tester, cm themer

[javelinanddart](https://github.com/javelinanddart) - Kernel Developer


### Changelog (full)
[AOSP-JF-MM](https://github.com/AOSP-JF-MM) - Project GitHub

### Changelog (short)

#### Ongoing changes...
* Kernel
    * General code update
    * Netd/wifi: updates and fixes
    * Added support for SGH-S970G and SM-S975L
* ROM
    * RIL: fixed emergency call
    * RIL: fixed a couple of permission denials (QMUXD)
    * Telephony: small improvements
    * RIL: more updates for lp ril
    * RIL: fixed NO SIM when phone is in Airplane mode and the SIM is inserted
    * AOSP Settings: Updated translations
    * Bluetooth/Stagefright: other small fixes
    * RIL: fixed network search
    * Added support for SGH-S970G and SM-S975L
    * Bluetooth: fixed reboot during second call
    * Bluetooth: fixed call not working/bt share FC after the phone is reconnected to a bt device
    * Audio policy: fixes for bt calls

#### 2016/01/10 (Beta 4)
* Kernel
    * General code update
* ROM
    * Browser: fixed incognito mode
    * Completely switch to clang for compiling
    * Updated italian apns
    * Fixed BT calls/a2dp when connected with a device that can handle calls and media streaming like carkits
    * Audio policy: other small fixes
    * r970 variant: fixed RIL
    * Automatic brightness: increase brightness faster if ambient light is brightening quickly
    * GPS: optimized property reloading
    * Telephony: small fixes
    * Bluedroid: disabled debugging
    * Removed ScreenCast,now screen recoding function is embedded on power menu
    * Fix volume expand arrow sometimes not working
    * Sounds: use Nexus audio files
    * GoogleDialer: fixed install folder/permissions
    * Bluetooth: merged latest fixes from caf
    * Small fixes for CDMA phones
    * av: fixed some benign overflow, small changes for ARM 32 bit arch + other enhancements
    * Fixed tethering (was broken in previous release)
    * WiFi: small fixes
    * SuperSU: back to 2.52 version, 2.66 does not work for some user

#### 2016/01/06 (Beta 3)
* Kernel
    * Fixed button vibration/lights when screeen is off
    * Fixed music sometimes stuttering when user turns off the screen
    * Fixed freeze when booting connected to an AC/USB cable
    * General code update
    * Updated Toolchains (5.3.0)

* ROM
    * Media: added function to skip tracks with volume buttons when the screen is off
    * Vold: fixed mkfs execution (sepolicy)
    * Browser/Gallery: Materialized + Code update + Fixed tons of bugs
    * Camera: Fixes, enhancements and code updates
    * Camera: fix photos size
    * jemalloc: update to v4.0.4
    * webview: drop aosp webview and use Google version v48.0.2564.48
    * Fixed charging mode
    * Merged cgroups/ioprio enhancements from cm
    * Unified branch again!!
    * Camera: Add storage preferences
    * DeskClock: fixed crash when user press the world button + small fixes
    * Fixed MMS receiving
    * Finally switch to new proprietary blobs
    * Sepolicy: tons of fixes
    * Updater-script: fixed permissions/selinux context for ril blobs
    * Updater-script: remove not used libraries for GSM
    * RIL: fixed invalid number error
    * Build: enhanced kernel task
    * Vendor blobs: update some blobs from OK1
    * Telecomm/Telephony: Allow multiple default dialers
    * Browser: fixed runtime permissions
    * Fixed adopted storage. TWRP is still not compatible, rom zip and gapps must be moved to /data/media/0 folder
      then reboot in recovery and update zip will be available on internal storage. DO NOT TOUCH EXTERNAL STORAGE IN TWRP
    * Update sources to Android 6.0.1 release 10
    * Fixed Bluetooth sometimes not turning on after a flash
    * Fixed data not working after a reboot
    * Added GoogleDialer as alternative dialer, can be disabled in Settings-->Apps
    * Updated SuperSU to v2.66 (may not work on multirom, if someone experience issues during the flash of supersu simply flash the old version 2.52)
    * Updated LayersManager to v4.4.1

#### 2015/12/24 (Beta 2)

* Kernel
    * Updated bt drivers
    * More code update

* ROM
    * Fixed GPS
    * Fixed LTE not coming up at boot
    * Vold: small fixes/enhancements
    * Sources updated to Android 6.0.1 release 3
    * Fixed keyboard gesture typing
    * Fixed SuperSU sepolicy
    * Fixed bt after 6.0.1 r3 code merge
    * Ril/av/vold: small fixes
    * Fixed network switch
    * Fixed write access on NTFS
    * Fixed emergency call
    * BT: reverted cm/caf changes. We lose bt obex and other advanced functions, but no more bt share FC
    * RIL: fixed apns for verizon. More small updates for other providers
    * Telephony: small changes/fixes
    * Enhanced opening apps speed
    * Bluetooth: fixed a2dp
    * More general fixes
    * Fixed sysinit
    * Sepolicy: more fixes for persistent properties/vold/kernel
    * Added Screencast

#### 2015/12/06 (Beta 1)

* Kernel
    * Fix exfat formatted sdcard mount and rw access
    * General code Update

* ROM
    * Updated sources to r26 (MDB08M)
    * Fixed audio cracking after upstream code merge in av repo
    * Enhanced animation speed/smoothness
    * Drop qcom TimeService and use TimeKeep service from SONY
    * Small fixes on Camera and RIL
    * Enhanced bt (a2dp still not working)
    * Fixes and improvements for wifi
    * Vold: ported HW FDE features + fixes
    * Telephony: more fixes and updates from caf and cm
    * Fixed mounting of non-FAT sd card. Still some issues here with some fs, EACCES when trying to create folder/files, 
      as temporary workaround go to /mnt/media_rw and give write permission to others on ext sdcard if fs is not writable
    * Reverted some caf stuffs on Dialer and Keyguard
    * jflte: updates and fixes
    * Small fixes for bluetooth
    * More enhancements on animation/recent app
    * Added custom aosp Settings
    * Added customisable clear recent app button
    * Switch to clang
    * BootMessage: Show each app name being optimized during boot
    * Fixed SetupWizard
    * Materialised Toasts and some icons
    * Added OtaUpdates
    * Completely reworked aosp settings
    * Added expanded desktop settings
    * Added button backlight settings
    * av: more fixes
    * Vold: fix exfat fs mounting using Alucard kernel driver, this fully fixes exfat mounting and rw permissions for user
    * Fixed mic input not working during record/google voice search
    * Recents app: added an option for fullscreen
    * Small battery improvements
    * Added power menu customisations
    * Added "force expanded notifications" option
    * Added advanced reboot menu
    * Vold: fixed NTFS (read-only for the moment) on extsdcard using Alucard kernel driver.

#### 20151108

Initial Release
