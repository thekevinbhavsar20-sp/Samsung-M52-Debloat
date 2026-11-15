@echo off
setlocal enabledelayedexpansion
title M52 5G - Debloat Tool by K.S.
color 0A

:: ============================================================
::  Samsung Galaxy M52 5G Debloat Tool
::  Uses: adb shell pm uninstall -k --user 0 <package>
::  This removes the app from the CURRENT user profile only.
::  It does NOT touch the system partition, so it is fully
::  reversible with a factory reset if something goes wrong.
:: ============================================================

adb get-state >nul 2>&1
if errorlevel 1 (
    echo.
    echo [ERROR] No device detected, or ADB is not installed / not in PATH.
    echo Make sure USB debugging is enabled and the device is connected.
    echo.
    pause
    exit /b
)

:menu
cls
echo ================================================================
echo   SAMSUNG GALAXY M52 5G - DEBLOAT TOOL
echo ================================================================
echo   1. Surface Debloat   (light strip - AR/Bixby/Samsung extras)
echo   2. Raw Android        (aggressive strip - Samsung/Google extras)
echo   3. Minimal          (Surface + Raw + extra config packages)
echo   4. Exit
echo ================================================================
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto surface
if "%choice%"=="2" goto raw
if "%choice%"=="3" goto minimal
if "%choice%"=="4" exit /b
goto menu

:surface
cls
title Debloat in Process
echo Applying SURFACE DEBLOAT profile...
echo ----------------------------------------------------------------

echo Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead

echo Android S Easter Egg
adb shell pm uninstall -k --user 0 com.android.egg

echo Application Recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo AR Doodle
adb shell pm uninstall -k --user 0 com.samsung.android.ardrawing

echo AR Emoji
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji

echo AR Zone
adb shell pm uninstall -k --user 0 com.samsung.android.arzone

echo Bixby Vision
adb shell pm uninstall -k --user 0 com.samsung.android.visionintelligence

echo Bixby Voice
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent

echo Content Suggestions
adb shell pm uninstall -k --user 0 com.samsung.android.aliveprivacy

echo Content Suggestions Service
adb shell pm uninstall -k --user 0 com.samsung.android.alive.service

echo Customisation Service
adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Discover SEP
adb shell pm uninstall -k --user 0 com.samsung.discover.sep

echo Finder
adb shell pm uninstall -k --user 0 com.samsung.android.app.galaxyfinder

echo Game Booster
adb shell pm uninstall -k --user 0 com.samsung.android.game.gametools

echo Game Launcher
adb shell pm uninstall -k --user 0 com.samsung.android.game.gamehome

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Google Assistant
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle

echo Google Assistant OK Google
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle

echo Google Play services for AR
adb shell pm uninstall -k --user 0 com.google.ar.core

echo Meet
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo My Galaxy
adb shell pm uninstall -k --user 0 com.mygalaxy

echo OneDrive
adb shell pm uninstall -k --user 0 com.microsoft.skydrive

echo Reminder
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Samsung Free
adb shell pm uninstall -k --user 0 com.samsung.android.app.spage

echo Samsung Max
adb shell pm uninstall -k --user 0 com.opera.max.oem

echo Samsung Shop
adb shell pm uninstall -k --user 0 com.samsung.ecomm.global.in

echo Smart Switch Agent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent

echo Ultra Data Saving Mode
adb shell pm uninstall -k --user 0 com.samsung.android.uds

echo User Manual
adb shell pm uninstall -k --user 0 com.sec.android.widgetapp.webmanual

echo Weather
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

:: Android Setup removed LAST - this package triggers a mid-run
:: device reboot when uninstalled. Keeping it last means every
:: other package above is already gone before that happens.

echo Android Setup
adb shell pm uninstall -k --user 0 com.google.android.setupwizard

echo ----------------------------------------------------------------
echo SURFACE DEBLOAT profile complete.
goto done

:raw
cls
title Debloat in Process
echo Applying RAW ANDROID profile...
echo ----------------------------------------------------------------

echo Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead

echo Android S Easter Egg
adb shell pm uninstall -k --user 0 com.android.egg

echo Application Recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo AR Doodle
adb shell pm uninstall -k --user 0 com.samsung.android.ardrawing

echo AR Emoji
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji

echo AR Zone
adb shell pm uninstall -k --user 0 com.samsung.android.arzone

echo Bixby Vision
adb shell pm uninstall -k --user 0 com.samsung.android.visionintelligence

echo Bixby Voice
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent

echo Content Suggestions
adb shell pm uninstall -k --user 0 com.samsung.android.aliveprivacy

echo Content Suggestions Service
adb shell pm uninstall -k --user 0 com.samsung.android.alive.service

echo Customisation Service
adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Discover SEP
adb shell pm uninstall -k --user 0 com.samsung.discover.sep

echo Finder
adb shell pm uninstall -k --user 0 com.samsung.android.app.galaxyfinder

echo Game Booster
adb shell pm uninstall -k --user 0 com.samsung.android.game.gametools

echo Game Launcher
adb shell pm uninstall -k --user 0 com.samsung.android.game.gamehome

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Google Assistant
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle

echo Google Assistant OK Google
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle

echo Google Play services for AR
adb shell pm uninstall -k --user 0 com.google.ar.core

echo Meet
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo My Galaxy
adb shell pm uninstall -k --user 0 com.mygalaxy

echo OneDrive
adb shell pm uninstall -k --user 0 com.microsoft.skydrive

echo Reminder
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Samsung Free
adb shell pm uninstall -k --user 0 com.samsung.android.app.spage

echo Samsung Max
adb shell pm uninstall -k --user 0 com.opera.max.oem

echo Samsung Shop
adb shell pm uninstall -k --user 0 com.samsung.ecomm.global.in

echo Smart Switch Agent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent

echo Ultra Data Saving Mode
adb shell pm uninstall -k --user 0 com.samsung.android.uds

echo User Manual
adb shell pm uninstall -k --user 0 com.sec.android.widgetapp.webmanual

echo Weather
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

echo Ad Privacy
adb shell pm uninstall -k --user 0 com.google.android.adservices.api

echo Android Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo Android System Intelligence
adb shell pm uninstall -k --user 0 com.google.android.as

echo App Cloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung

echo Apps Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.appsedge

echo App Update
adb shell pm uninstall -k --user 0 com.samsung.android.app.updatecenter

echo AR Emoji Editor
adb shell pm uninstall -k --user 0 com.samsung.android.aremojieditor

echo AR Emoji Sticker
adb shell pm uninstall -k --user 0 com.sec.android.mimage.avatarstickers

echo Authentication Framework
adb shell pm uninstall -k --user 0 com.samsung.android.authfw

echo Autofill with Samsung Pass
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpass.autofill

echo Bixby Vision Framework
adb shell pm uninstall -k --user 0 com.samsung.android.bixbyvision.framework

echo CarrierDefaultApp
adb shell pm uninstall -k --user 0 com.android.carrierdefaultapp

echo Clipboard Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.clipboardedge

echo com.android.backupconfirm
adb shell pm uninstall -k --user 0 com.android.backupconfirm

echo Config Updater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Continuity Service
adb shell pm uninstall -k --user 0 com.samsung.android.mcfds

echo Device Services
adb shell pm uninstall -k --user 0 com.samsung.android.kgclient

echo Edge Panel
adb shell pm uninstall -k --user 0 com.samsung.android.app.cocktailbarservice

echo Galaxy Store
adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps

echo Galaxy Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore

echo Galaxy Themes Service
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter

echo Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history

echo Hiya Service
adb shell pm uninstall -k --user 0 com.hiya.star

echo Live Transcribe and Sound Notifications
adb shell pm uninstall -k --user 0 com.google.audio.hearing.visualization.accessibility.scribe

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Messages Samsung
adb shell pm uninstall -k --user 0 com.samsung.android.messaging

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Meta Services
adb shell pm uninstall -k --user 0 com.facebook.services

echo NFC
adb shell pm uninstall -k --user 0 com.android.nfc

echo People Edge
adb shell pm uninstall -k --user 0 com.samsung.android.service.people

echo Perso
adb shell pm uninstall -k --user 0 com.sec.android.app.personalization

echo Photo Screensaver
adb shell pm uninstall -k --user 0 com.android.dreams.phototable

echo Private Share
adb shell pm uninstall -k --user 0 com.samsung.android.privateshare

echo Quick Share
adb shell pm uninstall -k --user 0 com.samsung.android.app.sharelive

echo Quick Share Agent
adb shell pm uninstall -k --user 0 com.samsung.android.aware.service

echo Quick Share Connectivity
adb shell pm uninstall -k --user 0 com.samsung.android.mdx.kit

echo Recommended Apps
adb shell pm uninstall -k --user 0 com.samsung.android.app.omcagent

echo Samsung Cloud Platform Manager
adb shell pm uninstall -k --user 0 com.samsung.android.scpm

echo Samsung Core Services
adb shell pm uninstall -k --user 0 com.samsung.android.scs

echo Samsung Kids Installer
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller

echo Samsung Location SDK
adb shell pm uninstall -k --user 0 com.sec.location.nsflp2

echo Samsung Multi Connectivity
adb shell pm uninstall -k --user 0 com.samsung.android.mcfserver

echo Samsung Payment Framework
adb shell pm uninstall -k --user 0 com.samsung.android.spayfw

echo Samsung Services
adb shell pm uninstall -k --user 0 com.samsung.android.setupindiaservice

echo Samsung Smart Suggestions
adb shell pm uninstall -k --user 0 com.samsung.android.smartsuggestions

echo Samsung Visit In
adb shell pm uninstall -k --user 0 com.samsung.android.ipsgeofence

echo Secure Folder
adb shell pm uninstall -k --user 0 com.samsung.knox.securefolder

echo Separated Apps
adb shell pm uninstall -k --user 0 com.samsung.android.appseparation

echo Settings Bixby
adb shell pm uninstall -k --user 0 com.samsung.android.app.settingsbixby

echo Smart View
adb shell pm uninstall -k --user 0 com.samsung.android.smartmirroring

echo Sticker Center
adb shell pm uninstall -k --user 0 com.samsung.android.stickercenter

echo Tags
adb shell pm uninstall -k --user 0 com.samsung.android.service.tags

echo Tags AndroidApp
adb shell pm uninstall -k --user 0 com.android.apps.tag

echo Tasks Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.taskedge

echo Tools Edge
adb shell pm uninstall -k --user 0 com.sec.android.app.quicktool

echo Voice Wakeup
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup

echo Wearable Manager Installer
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanager

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo Find My Mobile
adb shell pm uninstall -k --user 0 com.samsung.android.fmm

echo Group Sharing
adb shell pm uninstall -k --user 0 com.samsung.android.mobileservice

echo Samsung Account
adb shell pm uninstall -k --user 0 com.osp.app.signin

echo Samsung Cloud
adb shell pm uninstall -k --user 0 com.samsung.android.scloud

echo Samsung Pass
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpass

echo Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push

:: Both setup wizard packages removed LAST - these are known to
:: trigger a mid-run device reboot when uninstalled. Everything
:: else above is already gone before that happens.

echo Android Setup
adb shell pm uninstall -k --user 0 com.google.android.setupwizard

echo Samsung Setup Wizard
adb shell pm uninstall -k --user 0 com.sec.android.app.SecSetupWizard

echo ----------------------------------------------------------------
echo RAW ANDROID profile complete.
goto done

:minimal
cls
title Debloat in Process
echo Applying MINIMAL profile...
echo ----------------------------------------------------------------

echo Android Auto
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead

echo Android S Easter Egg
adb shell pm uninstall -k --user 0 com.android.egg

echo Application Recommendations
adb shell pm uninstall -k --user 0 com.samsung.android.mapsagent

echo AR Doodle
adb shell pm uninstall -k --user 0 com.samsung.android.ardrawing

echo AR Emoji
adb shell pm uninstall -k --user 0 com.samsung.android.aremoji

echo AR Zone
adb shell pm uninstall -k --user 0 com.samsung.android.arzone

echo Bixby Vision
adb shell pm uninstall -k --user 0 com.samsung.android.visionintelligence

echo Bixby Voice
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent

echo Content Suggestions
adb shell pm uninstall -k --user 0 com.samsung.android.aliveprivacy

echo Content Suggestions Service
adb shell pm uninstall -k --user 0 com.samsung.android.alive.service

echo Customisation Service
adb shell pm uninstall -k --user 0 com.samsung.android.rubin.app

echo Discover
adb shell pm uninstall -k --user 0 com.samsung.discover

echo Discover SEP
adb shell pm uninstall -k --user 0 com.samsung.discover.sep

echo Finder
adb shell pm uninstall -k --user 0 com.samsung.android.app.galaxyfinder

echo Game Booster
adb shell pm uninstall -k --user 0 com.samsung.android.game.gametools

echo Game Launcher
adb shell pm uninstall -k --user 0 com.samsung.android.game.gamehome

echo Google
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo Google Assistant
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.xgoogle

echo Google Assistant OK Google
adb shell pm uninstall -k --user 0 com.android.hotwordenrollment.okgoogle

echo Google Play services for AR
adb shell pm uninstall -k --user 0 com.google.ar.core

echo Meet
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon

echo My Galaxy
adb shell pm uninstall -k --user 0 com.mygalaxy

echo OneDrive
adb shell pm uninstall -k --user 0 com.microsoft.skydrive

echo Reminder
adb shell pm uninstall -k --user 0 com.samsung.android.app.reminder

echo Samsung Checkout
adb shell pm uninstall -k --user 0 com.sec.android.app.billing

echo Samsung Free
adb shell pm uninstall -k --user 0 com.samsung.android.app.spage

echo Samsung Max
adb shell pm uninstall -k --user 0 com.opera.max.oem

echo Samsung Shop
adb shell pm uninstall -k --user 0 com.samsung.ecomm.global.in

echo Smart Switch Agent
adb shell pm uninstall -k --user 0 com.sec.android.easyMover.Agent

echo Ultra Data Saving Mode
adb shell pm uninstall -k --user 0 com.samsung.android.uds

echo User Manual
adb shell pm uninstall -k --user 0 com.sec.android.widgetapp.webmanual

echo Weather
adb shell pm uninstall -k --user 0 com.sec.android.daemonapp

echo YouTube
adb shell pm uninstall -k --user 0 com.google.android.youtube

echo Ad Privacy
adb shell pm uninstall -k --user 0 com.google.android.adservices.api

echo Android Switch
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo Android System Intelligence
adb shell pm uninstall -k --user 0 com.google.android.as

echo App Cloud
adb shell pm uninstall -k --user 0 com.aura.oobe.samsung

echo Apps Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.appsedge

echo App Update
adb shell pm uninstall -k --user 0 com.samsung.android.app.updatecenter

echo AR Emoji Editor
adb shell pm uninstall -k --user 0 com.samsung.android.aremojieditor

echo AR Emoji Sticker
adb shell pm uninstall -k --user 0 com.sec.android.mimage.avatarstickers

echo Authentication Framework
adb shell pm uninstall -k --user 0 com.samsung.android.authfw

echo Autofill with Samsung Pass
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpass.autofill

echo Bixby Vision Framework
adb shell pm uninstall -k --user 0 com.samsung.android.bixbyvision.framework

echo CarrierDefaultApp
adb shell pm uninstall -k --user 0 com.android.carrierdefaultapp

echo Clipboard Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.clipboardedge

echo com.android.backupconfirm
adb shell pm uninstall -k --user 0 com.android.backupconfirm

echo Config Updater
adb shell pm uninstall -k --user 0 com.google.android.configupdater

echo Continuity Service
adb shell pm uninstall -k --user 0 com.samsung.android.mcfds

echo Device Services
adb shell pm uninstall -k --user 0 com.samsung.android.kgclient

echo Edge Panel
adb shell pm uninstall -k --user 0 com.samsung.android.app.cocktailbarservice

echo Galaxy Store
adb shell pm uninstall -k --user 0 com.sec.android.app.samsungapps

echo Galaxy Themes
adb shell pm uninstall -k --user 0 com.samsung.android.themestore

echo Galaxy Themes Service
adb shell pm uninstall -k --user 0 com.samsung.android.themecenter

echo Google Location History
adb shell pm uninstall -k --user 0 com.google.android.gms.location.history

echo Hiya Service
adb shell pm uninstall -k --user 0 com.hiya.star

echo Live Transcribe and Sound Notifications
adb shell pm uninstall -k --user 0 com.google.audio.hearing.visualization.accessibility.scribe

echo Maps
adb shell pm uninstall -k --user 0 com.google.android.apps.maps

echo Messages Samsung
adb shell pm uninstall -k --user 0 com.samsung.android.messaging

echo Meta App Installer
adb shell pm uninstall -k --user 0 com.facebook.system

echo Meta App Manager
adb shell pm uninstall -k --user 0 com.facebook.appmanager

echo Meta Services
adb shell pm uninstall -k --user 0 com.facebook.services

echo NFC
adb shell pm uninstall -k --user 0 com.android.nfc

echo People Edge
adb shell pm uninstall -k --user 0 com.samsung.android.service.people

echo Perso
adb shell pm uninstall -k --user 0 com.sec.android.app.personalization

echo Photo Screensaver
adb shell pm uninstall -k --user 0 com.android.dreams.phototable

echo Private Share
adb shell pm uninstall -k --user 0 com.samsung.android.privateshare

echo Quick Share
adb shell pm uninstall -k --user 0 com.samsung.android.app.sharelive

echo Quick Share Agent
adb shell pm uninstall -k --user 0 com.samsung.android.aware.service

echo Quick Share Connectivity
adb shell pm uninstall -k --user 0 com.samsung.android.mdx.kit

echo Recommended Apps
adb shell pm uninstall -k --user 0 com.samsung.android.app.omcagent

echo Samsung Cloud Platform Manager
adb shell pm uninstall -k --user 0 com.samsung.android.scpm

echo Samsung Core Services
adb shell pm uninstall -k --user 0 com.samsung.android.scs

echo Samsung Kids Installer
adb shell pm uninstall -k --user 0 com.samsung.android.kidsinstaller

echo Samsung Location SDK
adb shell pm uninstall -k --user 0 com.sec.location.nsflp2

echo Samsung Multi Connectivity
adb shell pm uninstall -k --user 0 com.samsung.android.mcfserver

echo Samsung Payment Framework
adb shell pm uninstall -k --user 0 com.samsung.android.spayfw

echo Samsung Services
adb shell pm uninstall -k --user 0 com.samsung.android.setupindiaservice

echo Samsung Smart Suggestions
adb shell pm uninstall -k --user 0 com.samsung.android.smartsuggestions

echo Samsung Visit In
adb shell pm uninstall -k --user 0 com.samsung.android.ipsgeofence

echo Secure Folder
adb shell pm uninstall -k --user 0 com.samsung.knox.securefolder

echo Separated Apps
adb shell pm uninstall -k --user 0 com.samsung.android.appseparation

echo Settings Bixby
adb shell pm uninstall -k --user 0 com.samsung.android.app.settingsbixby

echo Smart View
adb shell pm uninstall -k --user 0 com.samsung.android.smartmirroring

echo Sticker Center
adb shell pm uninstall -k --user 0 com.samsung.android.stickercenter

echo Tags
adb shell pm uninstall -k --user 0 com.samsung.android.service.tags

echo Tags AndroidApp
adb shell pm uninstall -k --user 0 com.android.apps.tag

echo Tasks Edge
adb shell pm uninstall -k --user 0 com.samsung.android.app.taskedge

echo Tools Edge
adb shell pm uninstall -k --user 0 com.sec.android.app.quicktool

echo Voice Wakeup
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup

echo Wearable Manager Installer
adb shell pm uninstall -k --user 0 com.samsung.android.app.watchmanager

echo Work Setup
adb shell pm uninstall -k --user 0 com.android.managedprovisioning

echo Find My Mobile
adb shell pm uninstall -k --user 0 com.samsung.android.fmm

echo Group Sharing
adb shell pm uninstall -k --user 0 com.samsung.android.mobileservice

echo Samsung Account
adb shell pm uninstall -k --user 0 com.osp.app.signin

echo Samsung Cloud
adb shell pm uninstall -k --user 0 com.samsung.android.scloud

echo Samsung Pass
adb shell pm uninstall -k --user 0 com.samsung.android.samsungpass

echo Samsung Push Service
adb shell pm uninstall -k --user 0 com.sec.spp.push

echo Config Update (CID Manager)
adb shell pm uninstall -k --user 0 com.samsung.android.cidmanager

echo Config Update (SDM)
adb shell pm uninstall -k --user 0 com.samsung.android.sdm.config

echo Config APK
adb shell pm uninstall -k --user 0 android.autoinstalls.config.samsung

echo Android Setup
adb shell pm uninstall -k --user 0 com.google.android.setupwizard

echo Samsung Setup Wizard
adb shell pm uninstall -k --user 0 com.sec.android.app.SecSetupWizard

echo ----------------------------------------------------------------
echo MINIMAL profile complete.
goto done

:done
echo.
echo Done. Reboot the device for changes to fully apply.
echo (Restore anything via factory reset if needed.)
echo.
pause
exit /b