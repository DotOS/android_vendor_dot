# Jflte DevCon
### Developers
[B--B](https://github.com/B--B) - Lead

[AntaresOne](http://github.com/AntaresOne) - Developer, git mantainer, scripting, tester

[Alucard24](http://github.com/Alucard24) - Kernel Developer

[MatthewBooth](http://github.com/MatthewBooth) - OTA Updates, git maintainer, scripting, tester

[angelcalibur](https://github.com/angelcalibur) - tester

[smeroni68](https://github.com/smeroni68) - tester

[Jimsilver73](https://github.com/Jimsilver73) - tester

[hawkerpaul](https://github.com/hawkerpaul) - tester, scripting



### Changelog (full)
[AOSP-JF](https://github.com/AOSP-JF) - Project GitHub

### Changelog (short)

#### Ongoing changes... (Beta 6)
* ROM
    * Fixed carrier text on Keyguard
    * More fixes on av and base repo
    * DreamManager/DozeMode: do not turn on the screen if s-view cover is closed

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
    * Added long press actions to notification bar objects (clock, date, avatar, battery and settings)
      Long pression on settings icon open AOSP Settings
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
    * Build dummy InCallUI with persistent attribute, this allow us to keep the process in memory and helps a lot when receiving a call
      and the device is busy
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
