# Jflte DevCon Team
### Developers & Testers
[B--B](https://github.com/B--B) - Lead

[AntaresOne](http://github.com/AntaresOne) - Developer, git mantainer, scripting, tester

[Alucard24](http://github.com/Alucard24) - Kernel Developer

[MatthewBooth](http://github.com/MatthewBooth) - OTA Updates, git maintainer, scripting, tester

[angelcalibur](https://github.com/angelcalibur) - Tester

[smeroni68](https://github.com/smeroni68) - Tester

[Jimsilver73](https://github.com/Jimsilver73) - Tester

[hawkerpaul](https://github.com/hawkerpaul) - Tester, scripting

[franzyroy](https://github.com/franzyroy) - Tester, cm themer

[smstiv](https://github.com/smstiv) - Tester

[side](https://github.com/dkati) - Tester, cm themer, rom maintainer

[javelinanddart](https://github.com/javelinanddart) - Kernel Developer

[srisurya95](https://github.com/srisurya95) - Rom-Kernel Developer

[gadget!](http://forum.xda-developers.com/member.php?u=2026779) - Themer, tester, graphic designer

### Changelog (full)
[AOSP-JF-MM](https://github.com/AOSP-JF-MM) - Project GitHub

### Changelog (short)

#### Ongoing changes... (Stable 5)
* ROM
    * Audio: enable again fluence mode
    * Updated translations
    * RRO: move to Substratum --> Changes are temporary in separate branches in testing phase, waiting for Substratum beta release..!
    * Updated translations
    * LatinIME: fixed gesture input without gApps installed
    * init: some small cleaning
    * Add back Messenger app, fully themeable with Substratum

#### 2016/07/09 (Stable 4)
* Kernel
    * General code updates
    * f2fs: general updates from 3.18 kernel
    * Ramdisk: update busybox to v1.26.0
    * Update busybox to v1.26.0
* ROM
    * Increase available volume levels for media (from 15 to 30)
    * libbt-vendor (BRCM): Add ssr_cleanup
    * Some translation updates
    * jflte: enable MMS when mobile data is disabled
    * jflte: Audio/Volume improvements
    * wifi: small fixes + fixed a mismerge & enable WiFi IpReachabilityMonitor by default
    * bt: don't use CLOCK_BOOTTIME where CLOCK_MONOTONIC was expected
    * Settings: general fixes + expose some hardcoded colors in storage settings
    * General wifi/bt fixes
    * SoundRecorder: add Bluetooth sound recording
    * Audio: reworked audio mixers
    * jflte: rc files cleanup
    * jflte: enable thread migration notifier & improve interactive timer values
    * Update source to Android 6.0.1 Release 52 (MOB30R)
    * core/vold/extras/build: move to stable branches
    * jflte-audio: various fixes
    * Update SuperSU to v2.76
    * Proprietary libs: revert to old adreno libs (hopefully fixes random app crashes)
    * Audio-msm8960: fix AudioEffect reply overflow

#### 2016/06/19 (Stable 3)
* Kernel
    * General code updates
    * ASoC: msm: Add flexible playback periods (fixes skip tracks sometimes not working with bt and other audio issue)
* ROM
    * Switch to new audio HAL, big thanks to @arco @dookiedude @dkati
    * MediaProvider: updated translations and reverted r22 merge
    * apps/Bluetooth: general fixes
    * rootdir: disable USB when we switch between different states
    * Update SuperSU to v2.74
    * audio-caf/msm8960: drop all legacy code
    * Art: small updates/fixes + added support for other devices
    * LayersManager: update to v4.4.5.1
    * Updated translations
    * DeskClock/LatinIME: updated translations, reverted r22 merge + other small fixes
    * Base: fixed a NPE in DocumentsUI
    * jflte: update partitions size and added missing BOARD_CACHEIMAGE_PARTITION_SIZE

#### 2016/06/12 (Stable 2)
* Kernel
    * General code update + fixes
    * Updated BusyBox
    * Update soources to latest Dorimanx updates
* ROM
    * SEPolicy: fixed more denials/relax some neverallow for userdebug builds
    * av: reverted some changes abandoned by AOSP and ported latest updates from upstream
    * LatinIME: update and clean dictionaries
    * Ramdisk: small fix for adb in charge mode only
    * Native: ported again parcel changes from upstream
    * jflte: update partitions size and added missing BOARD_CACHEIMAGE_PARTITION_SIZE --> [REVERTED, not tested on all variants]
    * Update sources to Android 6.0.1 release 46 (MOB30M)
    * SnapdragonCamera: fix focus + fixed button visibility in landscape mode
    * Partially reverted some commits ported with the release 22 merge
    * Sepolicy: small fixes
    * APNs updates and fixes
    * XML Pull Parser optimizations
    * Reverted session callback API support
    * Sounds: use enhanced system/notifications sounds and ringtones, big big thanks to @Locklear308
    * jflte: do not retain classes.dex in APKs for non-user builds
    * build: added support for more qcom devices
    * Bionic: added arm64 optimisations
    * bt: sync wit cm/caf. Hopefully fixed all BLE  and other minor issues
    * More Selinux fixes
    * Rootdir: small fixes
    * Bootanimation: cleaning/fixes
    * Build (Experimental): enabled Ninja builds
    * Updated Toolchains
    * Proprietary files: updated adreno blobs
    * Bt: sync code with cm after r46 merge
    * Art: compile with clang
    * Settings: Allow sorting Applications list by size
    * jflte: set minimum value for auto-brightness
    * Bt: some clock fixes

#### 2016/04/16 (Stable 1)
* Kernel
    * General code update + fixes
    * More code ported from 3.10
    * Updated Toolchains (5.3.0) and Busybox (from official Master branch)
* ROM
    * Remove "Various" from battery stats
    * Bluetooth: small cleaning and updating
    * Start to underp things after r22 merge
    * audio-legacy: move all QCOM stuffs + small fixes/cleaning from our device tree to libhardware repos
    * frameworks/opt/bluetooth: merged all AOSP changes + CAF code + removed no more needed fixes/changes
    * SuperSU: update to v2.68
    * frameworks/av: removed all QCOM legacy flags from AudioPolicyManager.cpp
    * Bring back Exchange services
    * WebView: update to v50.0.2661.35
    * DeskClock: fixed crash when the Alarm starts and another crash when trying to enter into Settings
    * Vold: fixed extsdcard ext4 mounting
    * Added hardware key rebindigs feature
    * Update LayersManager to v4.4.2
    * Buttons: small fixes
    * frameworks/base: merged a lot of fixes
    * SoundRecorder: Updated, ported some fixes for MM and materialized. Now icon is available in the launcher
    * Location: disable qualcomm location service and speed up GPS lock
    * RRO Layers: allow more SystemUI customisations
    * Fixed adb at boot (no more need to set the usb connection to file transfer) and device recognition (at least on Kubuntu)
    * Added battery icon customisations (option in SystemUI Tuner)
    * Added BSOD killer from opt-cm-12.1 until the rom is stable for everyone
    * Native: reverted Parcel changes ported from upstream
    * Telephony: Hopefully fixed NO SIM issue when the device is encrypted
    * Fixed/suppressed some build warns on various repos
    * SoundRecorder: fixed pause/resume
    * Restored missing GAPPS permissions removed with r22 merge
    * Allow camera to use power key as shutter
    * frameworks/base: fixes from upstream
    * Settings: general fixes ported from master branch
    * WiFi settings: display connect button in the wifi connection menu
    * frameworks/av: ported some fixes pending on master branch
    * jflte: small fixes on audio_policy.conf and removed unuseful ethernet configuration
    * jflte-bt: enabled again previously disabled features
    * libjpeg: enhancements for QCOM devices
    * Removed/suppressed some spam during compiling
    * Drop MusicFX and switch to AudioFX
    * Bluetooth: fixes from upstream/CAF
    * fixed apicheck and other small things for jdk8 compiling
    * init: fixed radio not working after a soft-reboot
    * Update sources to Android 6.0.1 release 24
    * Update SuperSU to v2.71
    * Update LayersManager to v4.4.5
    * Ramdisk: Reduced boot time, configured power mode for recovery and removed some unuseful things
    * JFLTE: improved TCP performance + small fixes on sepolicy
    * General APNs updates
    * Enable dex-preoptimization. Increase the rom size, but decrease significantly the first boot time after an update.
    * f2fs-tools: update to 1.6.1
    * vold: Mount ext4/f2fs portable storage with sdcard_posix context. This fixes r/w issues for ext sdcard
    * av: more fixes from cm and upstream

#### 2016/03/14 (Beta 6)
* Kernel
    * General code update
    * Ramdisk: cleaning and some small opimisation
    * FS / BLOCK / PROC / CPUFREQ / eCryptfs / FUSE / FS Drivers : Sync with 3.10 tree
    * Fixed kernel wakelocks list on Better Battery Stats
* ROM
    * TEST: handle lid/smartview covers in a different way (ported from AOSP master) --> Reverted because actually HallMonitor doesn't work properly on MM, but
      this allow us to let all 3rd party apps handle the cover window like stock ROMS
    * TEST/WIP: Enable MIDI support
    * Bluetooth: stop bluedroid debugging + toned down more bt logspam
    * Bluetooth: removed not used feature on jflte device tree
    * Sepolicy: fixed a denial
    * jflte: remove obsolete crda service
    * Bluetooth: updates/fixes from upstream
    * RIL: fixed data after a reboot without the need of reboot the modem
    * CameraWrapper: small fixes
    * Added call recording feature
    * BootAnimation: improvements, added support to play a music during boot/shutdown animation
    * Vold: fixed exfat/ntfs support and handle things on ROM side
    * f2fs-tools: update to v1.6.0
    * Hopefully fixed random soft-reboot when formatting an sdcard as adopted storage
    * Camera: switch to SnapdragonCamera from CAF + CM updates
    * Bluetooth: general fixes from Master branch
    * Small fixes on APNs
    * Vibrator: drop legacy code and sync with upstream
    * libhardware/libhardware_legacy: fixed some warns
    * tinyalsa: fixes for call recording
    * Camera: ported some fixes from caf and from upstream
    * ffmpeg: update to v3.0
    * native/bluetooth: fixed a lot of clang warnings
    * Bluetooth/core: fixes from AOSP master branch + reduced disable delay
    * CameraWrapper: disable clang
    * Bluetooth: ported some fixes from CAF
    * Bluetooth: Hopefully fixed "Cannot play song" error
    * Fixed "Unknown Number" or "Private Number" in call log for some providers (option under Settings --> Other --> Cellular Networks)
    * WiFi: fixed 5Ghz not working for some variants
    * Bluetooth: ported more fixes from upstream and CAF
    * system/extras: fixed a lot of clang warnings and a couple of potential memory leaks
    * system/core: fixed some warnings + small updates from upstream
    * Launcher3: Small updated/enhancements + speed up animations + added MM wallpapers
    * Update sources to Android 6.0.1 release 22
    * Accept underscore and tilde in web URLs
    * Fixed calendar fields comparison (Month was compared with the day and vice versa)
    * inputflinger/EGL: cleaned warnings
    * Added Ad-Hoc WiFi support to framework
    * WiFi: merged fixes from SonyMobile/Intel/Xiaomi devs (pending on upstream)
    * libhardware/libhardware_legacy: reverted not needed changes
    * Small fixes for DHCP
    * Updated APNs
    * Base: more updates from upstream
    * Bluetooth: ported various fixes from CAF
    * BootAnimation: New custom bootanimation!! BIG BIG THANKS TO @gadget! (xda)
    * Small fixes after r22 merge
    * SnapdragonCamera: small fixes
    * art: improved speed when optimizing apps at first boot

#### 2016/02/08 (Beta 5)
* Kernel
    * General code update
    * Netd/wifi: updates and fixes
    * Added support for SGH-S970G and SM-S975L
    * IR: fixed phone hotboot, crash, reboot using IR-Blaster
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
    * Bluetooth: fixed reboot when user starts a call when the screen is off and the magnetic cover il closed
    * Bluetooth: fixed call not working/bt share FC after the phone is reconnected to a bt device
    * Audio policy: fixes for bt calls
    * Telephony: remove multiple default dialers support
    * Updated APNs
    * Audio/av: more fixes for qcom legacy devices
    * wifi: small improvements
    * bt: merged updates/fixes from upstream
    * bt: fix connection with BLE devices
    * av: fixed some overflows (from upstream)
    * Telephony/Dialer/InCallUI/base: upates and fixes for IMS
    * base: small fixes from upstream
    * Display-qcom: fixes for video playback and KW issues
    * Improved APN selection
    * Media-qcom: removed drm library + fixes for video playback
    * wifi: set country code to ALL
    * core: updates from upstream
    * TEST: libhardware_legacy: ported some changes merged/pending on aosp upstream
    * av: allow media server to disconnect the camera even if the camera is unlocked (should fix the camera bug "Camera Error, Camera is unable to initialize.")
    * Update sources to Android 6.0.1 release 13
    * Bluetooth: fixed 48k sample rate
    * Telephony: fixes for some sims/carriers
    * Base - apps/Bluetooth: other small improvements for bt
    * Removed GoogleDialer (can be flashed with a flashable zip or installed from PlayStore)
    * Updated WebView to v49.0.2623.34 (big thanks to @JoseGalRe )

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
