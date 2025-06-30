#!/bin/sh

# Uninstall apps: pm uninstall --user 0 <package name>
# Reinstall an app: cmd package install-existing --user 0 <package name>
# Disable an app: adb shell pm disable-user --user 0 <package name>
# Freeze an app: cmd appops set <package_name> RUN_IN_BACKGROUND ignore

# Digital Wellbeing
# adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing ## will remove pause app feature
# Adaptive Connectivity Services
adb shell pm uninstall -k --user 0 com.google.android.apps.scone
# Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead
# Android Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore
# Android System Intelligence
adb shell pm uninstall -k --user 0 com.google.android.as
# AppDirectSMS
adb shell pm uninstall -k --user 0 com.verizon.services
# Cinematic Wallpaper
adb shell pm uninstall -k --user 0 com.google.android.wallpaper.effects
# Cross-device services
adb shell pm uninstall -k --user 0 com.google.ambient.streaming
# Device Connectivity service
adb shell pm uninstall -k --user 0 com.google.android.apps.pixel.dcservice
# Device Policy
adb shell pm uninstall -k --user 0 com.google.android.apps.work.clouddpc
# DiagnosticsTool
adb shell pm uninstall -k --user 0 com.google.android.apps.diagnosticstool
# Drive
adb shell pm uninstall -k --user 0 com.google.android.apps.docs
# Emoji Workshop Wallpaper
adb shell pm uninstall -k --user 0 com.google.android.apps.emojiwallpaper
# Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
# Google play Services for AR
adb shell pm uninstall -k --user 0 com.google.ar.core
# Google TV
adb shell pm uninstall -k --user 0 com.google.android.videos
# Google Wallpaper Images
adb shell pm uninstall -k --user 0 com.google.android.apps.wallpaper.pixel
# Health Connect
adb shell pm uninstall -k --user 0 com.google.android.apps.healthdata
# Healt Connect 
adb shell pm uninstall -k --user 0 com.google.android.healthconnect.controller
# Hey Google Hotword
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle
# My Verizon Services
adb shell pm uninstall -k --user 0 com.verizon.mips.services
# OK Google Hotword
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle
# Personal Safety
adb shell pm uninstall -k --user 0 com.google.android.apps.safetyhub
# Photos
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
# Pixel Live Wallpaper
adb shell pm uninstall -k --user 0 com.google.pixel.livewallpaper
# Pixel Tips
adb shell pm uninstall -k --user 0 com.google.android.apps.tips
# Pixel Troubleshooting
adb shell pm uninstall -k --user 0 com.google.android.apps.pixel.support
# Pixel Weather
adb shell pm uninstall -k --user 0 com.google.android.apps.weather
# Recorder
adb shell pm uninstall -k --user 0 com.google.android.apps.recorder
# Sound Amplifier
adb shell pm uninstall -k --user 0 com.google.android.accessibility.soundamplifier
# Andoird TTS
adb shell pm uninstall -k --user 0 com.google.android.tts
# Youtube
adb shell pm uninstall -k --user 0 com.google.android.youtube
# YouTube Music 
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
