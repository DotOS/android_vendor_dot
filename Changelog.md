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

#### Ongoing changes...

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

#### 20150619 (Beta 1)
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

#### 20150606
Initial Release
