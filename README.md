SAMSUNG DEBLOAT

&#x20;

A tiered ADB debloat toolkit for Samsung Galaxy devices, using .bat scripts to progressively strip bloatware, from a light cleanup to an aggressive teardown.

&#x20;

Unlike flat "remove everything" lists, each script is organized into progressive profiles, each stronger than the last. Run only as far as you are comfortable with.

&#x20;

&#x20;

BEFORE YOU START

&#x20;

\- Requires ADB (Android Debug Bridge) and USB Debugging enabled on your device

\- Recommended: back up your data and know how to enter Recovery Mode for your specific device before running Raw Android or Minimal

\- Scripts use: adb shell pm uninstall -k --user 0 <package>

&#x20; This removes the app for the current user (user 0) only. The system partition is not touched, and a factory reset restores everything.

\- Some protected packages may refuse to uninstall on certain firmware. The script prints ADB's real result for every app, so you will see "Success" or "Failure" for each one.

\- Tested on: Samsung Galaxy M52 5G (add your device/model here as you test)

&#x20;

&#x20;

SETUP

&#x20;

1\. Enable Developer Options and turn on USB Debugging on your phone

2\. Download Android SDK Platform-Tools: https://developer.android.com/tools/releases/platform-tools

3\. Connect your phone via USB and allow the debugging prompt

4\. Run the .bat file and pick a profile from the menu

&#x20;

&#x20;

PROFILES (M52\_Debloat.bat)

&#x20;

1\. Surface (34 apps)

Removes light, surface-level apps: Android Auto, AR Zone/Emoji/Doodle, Bixby Vision and Voice, Application recommendations, Discover, Game Launcher and Booster, Google app and Assistant, Meet, YouTube, OneDrive, Samsung Checkout, Samsung Free, Samsung Max, Samsung Shop, Smart Switch, Weather and more. Low risk, fully reversible.

&#x20;

2\. Raw Android (100 apps)

A more aggressive strip that includes everything in Surface. Removes Samsung and Google extras such as Galaxy Store, Galaxy Themes, Samsung Account, Samsung Cloud, Samsung Pass, Find My Mobile, Edge panels, Quick Share, Samsung Messages, Google Maps, Secure Folder, NFC, Meta app installers, config and update services, and more. Meant for power users; the phone stays usable but loses many Samsung services, including tap-to-pay (NFC).

&#x20;

3\. Minimal (103 apps)

Runs everything in Raw, then removes the extra Samsung config packages (Configuration update CID Manager, Configuration update SDM and ConfigAPK). The most complete strip of the three.

&#x20;

Note: both setup wizard packages (Android Setup and Samsung Setup Wizard) are always removed last, because they are known to trigger a reboot mid-run.

&#x20;

&#x20;

RECOVERY

&#x20;

If your device becomes unstable after running a script: Perform a factory reset

&#x20;

&#x20;

DISCLAIMER

&#x20;

Use at your own risk. Removing system packages can cause instability or data loss. This repo is provided as-is with no guarantees; test on a non-primary device where possible.

&#x20;

&#x20;

