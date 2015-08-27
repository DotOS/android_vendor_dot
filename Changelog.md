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

[franzyroy](http://forum.xda-developers.com/member.php?u=2875350) - tester

[smstiv](http://forum.xda-developers.com/member.php?u=6180151) - tester


### Changelog (full)
[AOSP-JF](https://github.com/AOSP-JF) - Project GitHub

### Changelog (short)

#### Ongoing changes... (Stable)
* ROM
    * Added STK to build
    * Ported all the code from AOSP for SIM handling
    * Add ability to ignore interruptions while active media playback
    * Reverted some fixes on base
    * Fixed APN selection on CDMA phones (this time for real)
    * Removed not used code from init (auditd)
    * Fixed last Stagefright vulnerability (CVE-2015-3864)
    * Launcher3: Added stock wallpapers
    * Frameworks: add ability to choose a different wallpaper for lockscreen
    * Settings: Updated icons and colours
    * Fixes on base/av/build repos
    * Added WallpaperPicker to build
    * Base: added dismiss button to battery saver option
    * Base: improved recents tasks list
    * Device: fix MMS
    * Use chromium/icu repos from AOSP
    * Add SamsungServiceMode specific for our RIL
    * More fixes from M to base/av repos
    * libbt: support 1.5M baudrate
    * Fixed encryption for f2fs
    * Fixed ipv6 tethering
    * Telecomm/Telephony: ported a part of code from AOSP
    * libcore/art/core repos: tons of fixes and ported a part of code from M
    * Init: allow SElinux permissive in user builds
    * Build: switch to user build
        * Rooted
        * Debuggable
        * SElinux: permissive
    * Reduced log level for all the builds
    * Toast: Show app icon with the message
    * PackageInstaller: show current & new version

#### 2015/08/13 (Beta 6)
* Kernel
    * Updated mm from 3.10 kernel
    * General code updates
* ROM
    * Fixed carrier text on Keyguard
    * More fixes on av and base repo
    * DreamManager/DozeMode: do not turn on the screen if s-view cover is closed
    * Camera: added options for save photos/videos on external sd
    * Use our bionic and art repos (forked from AOSP) tuned for cortex-A15/krait cpu
    * Fixed apns for CDMA phones
    * Merged code from r9 tag into av repo.
    * Use freetype 2.6.0 from m-preview, this solves some security issue in older version of freetype library.
    * Updated apns and stagefright. Regarding stagefright, at the moment the only real big issue is Twitch, some videos plays fine, others crash the app. As temporary workaround old version of Twitch works (3.2.3).
    * System Animations: Added a new step (0.75) and set as default.
    * Stock Browser: Completely reworked, materialized and fixed a couple of FC. Settings now works as expected.
    * Android 5.1.1 release 13
    * Other small fixes on base and telephony repos
    * Materialized some icons

#### 2015/08/07 (Beta 5)
* Kernel
    * Added support for I9507
    * Update Workqueue and Idr from 3.10 kernel
    * More enhancements on MMC (Performance Mode)
    * A lot of code updates
* ROM
    * Added softkey backlight control under AOSP settings
    * Bluetooth: added accept all files option
    * Fixed stagefright, now all audio files works. Twitch fixed too
    * Added option for force notification expansion by default
    * Improved boot time
    * Other small fixes on audio
    * Fixes on base repo
    * Small fix on RRO
    * Updated apn list
    * Removed logspam from proprietary libraries
    * Switched to latest glib 2.15 from m-preview for compiling
    * More updates and fixes for legacy hardware repo
    * Sources updated to android-5.1.1_r9
    * Updated LatinIME, more languages added and other fixes
    * Added Samsung doze specific settings under AOSP Settings
    * Massive update on telephony repos, merged and adapted all cm fixes

#### 2015/07/27 (Beta 4)
* ROM
    * Added long pression actions to tiles
    * Added long press actions to notification bar objects (clock, date, avatar, battery and settings). Long pression on settings icon open AOSP Settings
    * Added customisation for quick settings
    * Frameworks: various fixes
    * Bootanimation: various improvements
    * Statusbar Icon: Show LTE icon instead of 4g icon
    * Statusbar Icon: Distinguish between UMTS and HSPA icons
    * Keyguard: Disable menu key unlock device
    * WiFi: revert aggressive blacklist + other fixes
    * Fixed Screenshots
    * Added missing softkey manager
    * Echange Services: Small fixes
    * Updated translations for all languages

#### 2015/07/23 (Beta 3)
* ROM 
    * Fixed tethering
    * Added ipv6 tethering
    * Launcher3: Optimisation and some Materialize
    * Fixed back/menu keys wake up the device
    * A lot of optimisation to build enviroment
    * Updated translation for AOSP Settings and Power menu
    * Updated stagefright/av with latest cm changes
    * Fixed OTA Updates
    * Added clear recents app button
    * Make "SD Card removed" notification dismissible
    * Various frameworks improvements

#### 2015/07/15 (Beta 2)
* Kernel
    * Various code updates
* ROM
    * Fixed a2dp audio streaming
    * Fixed data usage graph on settings
    * Added Changelog
    * Hopefully fixed audioflinger/mediaserver crash and audio stuttering when indexing media files
    * Enhanced camera, less crashes during usage
    * Fixed camera opening when flash is enabled
    * Updated stagefright with latest cm changes and fixed ffmpeg 2.7 compiling
    * Updated ffmpeg to 2.7
    * Fixed some crash on MediaProvider
    * Blacklisted some bt devices for better compatibility
    * Use Google dns
    * Updated code to android-5.1.1_r8
    * Camera: stop using gps when camera app is in background
    * Fixed Archidroid optimizations for all devices
    * Use Dialer InCallUI and Contacs repos from AOSP
    * Added Launcher3 to build
    * Added 60fps BootAnimation, big thanks to guerreromanuel XDA
    * Tons of fixes on frameworks/base
    * RRO Fully fixed
    * Small fixes on Telephony
    * Added dancing led at boot
    * Added Advanced Reboot Menu
    * A lot of fixes to build enviroment
    * Fixed support for all variants
    * Fixed init.d not working properly
    * Added text/circle battery on statusbar and custom settings
    * Added SuperSU by ChainFire
    * Added Layers Manager by BitSyko
    * Added Reverse Lookup
    * Build dummy InCallUI with persistent attribute, this allow us to keep the process in memory and helps a lot when receiving a call and the device is busy
    * Other small style changes on Dialer/InCallUI (Materialize)
    * More Materialize on framework
    * Fixed QCOM Time Daemon support

#### 2015/06/19 (Beta 1)
* Kernel:
    * Unified platform: fixed sensors for all jflte variants
    * F2FS driver updates
    * Small optimizations for alucard, darkness & nightmare governors
    * Various code updates
* ROM:
    * ArchiDroid optimizations v4
    * Added MultiROM compatibility
    * RRO added and partially working: Contacts, Dialer and Settings need some changes. Everything else is correctly themed
    * Fixed BT/WiFi coexistence, now can be turned ON at the same time
    * Fixed back/menu keys lights (timeout set at 5 seconds, user settings soon available in Settings app. For now, enable/disable by writing "softkeys" without quotes in Terminal Emulator (available on Play Store))
    * Fixed F2FS for /cache partition
    * Fixed "First boot doesn't have sound across all the system if the external SD card is not in FAT32"
    * Fixed MicroSD card, all filesystems are mounted well and working in r/w
    * Init: use our specific init
    * Temporarily fixed "No SIM" on Keyguard (removed Carrier text)
    * Various updates on audio/camera code
    * Various updates on BT/WiFi code

#### 2015/06/06
Initial Release
