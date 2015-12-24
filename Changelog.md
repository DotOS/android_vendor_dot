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
    * Fixed mounting of non-FAT sd card. Still some issues here with some fs, EACCES when trying to create folder/files, as temporary workaround go to /mnt/media_rw and give write permission to others on ext sdcard if fs is not writable
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