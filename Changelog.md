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

#### Ongoing changes (Beta 3)...
* JFLTE
    * Back to v1.5 (Fixes freeze when screen is off experienced in some variants)
* Gemini
    * General code updates
    * Disabled Cpusets
* ROM
    * Fixed a NPE in setup wizard
    * Settings: Enable storage manager like Pixel devices
    * base: tuner: enable navbar config + added more icons
    * webview_packages: prefer the more powerful webview package installed
    * Gemini: build power HAL
    * Gemini: fixed dt2w feature
    * jflte: move to common consumer IR HAL
    * Add lg G5 (h850) to buildable devices
    * OMS: expose some hardcoded colors
    * Updated translations
    * Settings: drop JDCSettings and move all our custom features into settings
    * SystemUI: Enable three icon switching within QS DND tile
    * Status bar: added HSPA+ icons
    * Pixel Theme Framework Edits
    * Fixed reboot in recovery dialog title
    * Added screen record shortcut (Vol+ and power button)
    * Settings: fingerpint: allow devices to configure sensor location
    * Settings: expose PhoneInfo
    * OTAUpdates: updated and fixed for N 
    * Gemini: fixed video recording
    * OMS: merged all latest changes from TeamSubstratum
    * Gemini: fixed data/wifi switch issue
    * Gemini: disable Cpusets
    * Gemini: general blobs and conf updates from stock N
    * frameworks/base: port some UPSTREAM fixes
    * General APNs updates
    * Sepolicy: general updates from CAF
    * Gemini/jflte: remove no more needed Overlays
    * Jflte: liblights/consumerir: drop device level HAL and move to common HAL

#### Beta 2 (20161126)...
* Kernel (Gemini)
    * General code updates and fixed boot on N
* Kernel (JFLTE)
    * General code updates
    * Kernel Patch 3.4.112->113 (only missing/good parts)
* ROM
    * JDCSettings: added custom hw key rebindings feature
    * JDCSettings: added long press volume button skip tracks feature
    * Fixed device storage menu when using Adopted Storage
    * Fixed an NPE when ejecting the portable storage
    * Don't dex preopt prebuilt APKs
    * Gemini: update blobs from Oneplus 3 repo
    * Gemini: more fixes/updates for N
    * Gemini: move to QCOM shared graphics driver repository
    * jflte: bluetooth: fixed  a crash caused by alarmtimer --> NOTE: this will break BT on stock kernel
    * jflte: update Widevine libraries
    * jflte: move to common graphics blobs repo
    * Update APNs
    * GCC: move to Linaro 4.9 Toolchains
    * Updated translations
    * Gemini: fixed perf issues when battery level is under 5%
    * JDCSettings: Added power menu customisations
    * Added ScreenRecord feature --> available in power menu
    * jflte: enable sdcardfs
    * jflte: VZW: fixed mobile data reconnection and IMSI issues, hopefully fixed for Sprint variant too
    * SuperSU: update to v2.78 SR4
    * Substratum: update to v490
    * WIP: added Expanded Desktop feature
    * Airplane mode toggle: small fixes/enhancements
    * frameworks/base: removed unused videos/drawables/media tests
    * Don't refresh ui when screen off
    * jflte: init.qcom.rc: update ril-service daemon

#### Beta 1 (20161118)
* Kernel (JFLTE)
    * Compile with GCC 6.0.1 + fixed compiling warns
    * General code updates
    * VoIP: more fixes + updates
    * Fixed sdcardfs
* ROM
    * WIP: initial Xiaomi Gemini bringup
    * Ported + fixed all CAF code on our repos
    * Deskclock: temporary revert CAF additions until bootloop issues are fixed
    * Bluetooth: fix JFLTE bluetooth after CAF code merge
    * WIP: bring back browser from MM
    * Gallery2: switch to SnapdragonGallery + cm fixes/enhancements
    * jflte: Add support for Samsung extended AGPS
    * STweaks: fixed profile check
    * Fix SuperSU installation for block-based OTAs
    * SuperSU: update to v2.78SR1
    * Substratum: update to v470 (is needed a full uninstall/removing of installed themes and overlays!)
    * jflte: GPS: removed not used files/services
    * msm8960: audio: fixes for voip and calls
    * msm8960: display: fixes and improved portability
    * jflte: remove some QC encoders from codecs list
    * Update sources to Android 7.1.0 release 7
    * Dialer: add back call recording feature
    * WebWiev: update to latest stable and beta versions released by Google
    * jflte: remove unused graphics libraries
    * jflte: more fixes for VoIP mixers
    * Jflte: init: fixed boot and network for all variants
    * OMS: Reverted all old patches and merge updated code from TeamSubstratum gerrit
    * jflte: updated sepolicies
    * APNs updates
    * jflte: libwvm.so: fix library crash due to missing symbol
    * Bootanimation: updated for 7.1. Big big thanks to @gadget! (xda)
    * Create 0 compression ratio jar files
    * telephony: Hack GSM and LTE signal strength
    * jflte: QMUXD: fixed acquire/release wakelocks
    * core: arm: remove deprecated -msoft-float in favour of -mfloat-abi=softfp
    * Xposed: jni: consider /data/app to the fd whitelist if Xposed is detected

#### Alpha 2 (20160902)
* Kernel
    * Fixed boot on N
    * Ramdisk: updated and fixed scripts for N
    * Ramdisk: updated and fixed scripts for systemless root
    * Merged latest 3.18 fixes/updates for ext4
    * General code updates/fixes
    * Fixed CVE-2015-8839
* ROM
    * Added exfat and NTFS support
    * System Sounds: use Stereophonic & Remastered Nexus sounds
    * Materialized some old icons/colours/toasts
    * Fixed NFC
    * Speed up animations
    * Audio: enabled custom audio policy again
    * Sepolicy: fixes + partial updates for N
    * frameworks/native: ported CAF code (mostly on surfaceflinger)
    * Add back changelog to Settings
    * SystemUpdateService: enable service but lock its receivers
    * Frameworks/base: general optimisations
    * skia: ported CAF code
    * Camera: various fixes
    * Build: fixed backuptools and override props functions
    * Build: completely reworked ROM versioning
    * OMS: exposed almost all harcoded colours (WIP)
    * native: ported cm fixes for QCOM devices
    * Webview: use Google WebView version instead of stock AOSP
    * Fixed LEDify
    * STweaks: fixed systemless root detection
    * SuperSU: update to v2.78
    * Settings: general fixes/enhancements and some icon materialization
    * Base: partially ported CAF code/optimisations
    * Update sources to Android 7.0.0 release 6
    * RIL: removed old LP hack for NO SIM issue in Airplane Mode and fix things in a proper way

#### Alpha 1 (20160901)

* Initial public release
