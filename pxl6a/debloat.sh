#!/bin/sh

# Uninstall apps: pm uninstall --user 0 <package name>
# Reinstall an app: cmd package install-existing --user 0 <package name>
# Disable an app: adb shell pm disable-user --user 0 <package name>
# Freeze an app: cmd appops set <package_name> RUN_IN_BACKGROUND ignore
Adaptive Connectivity Services
adb shell pm uninstall -k --user 0 com.google.android.apps.scone
Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead
Androi Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore
Android System Intelligence
adb shell pm uninstall -k --user 0 com.google.android.as
AppDirectSMS
adb shell pm uninstall -k --user 0 com.verizon.services
Cinematic Wallpaper
adb shell pm uninstall -k --user 0 com.google.android.wallpaper.effects
Cross-device services
adb shell pm uninstall -k --user 0 com.google.ambient.streaming
