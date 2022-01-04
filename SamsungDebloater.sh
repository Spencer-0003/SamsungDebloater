#!/bin/sh

bloatware=(
    # ANT +
    "com.dsi.ant.sample.acquirechannels"
    "com.dsi.ant.service.socket"
    "com.dsi.ant.server"
    "com.dsi.ant.plugins.antplus"
    # Bixby
    "com.samsung.android.bixby.wakeup"
    "com.samsung.android.app.spage"
    "com.samsung.android.app.routines"
    "com.samsung.android.bixby.service"
    "com.samsung.android.visionintelligence"
    "com.samsung.android.bixby.agent"
    "com.samsung.android.bixby.agent.dummy"
    "com.samsung.android.bixbyvision.framework"
    # Facebook
    "com.facebook.katana"
    "com.facebook.system"
    "com.facebook.appmanager"
    "com.facebook.services"
    # Galaxy
    "com.sec.android.app.samsungapps"
    "com.sec.android.widgetapp.samsungapps"
    "com.samsung.android.themestore"
    "com.samsung.android.themecenter"
    # Link To Windows
    "com.samsung.android.mdx"
    "com.samsung.android.mdx.kit"
    "com.samsung.android.mdx.quickboard"
    # Microsoft Office
    "com.microsoft.appmanager"
    "com.microsoft.skydrive"
    "com.microsoft.office.officehubrow"
    "com.microsoft.office.outlook"
    # Printing Components
    "com.android.bips"
    "com.google.android.printservice.recommendation"
    "com.android.printspooler"
    # Samsung Cocktailbar
    "com.samsung.android.service.peoplestripe"
    "com.samsung.android.app.sbrowseredge"
    # Samsung Dex
    "com.sec.android.app.dexonpc"
    "com.sec.android.desktopmode.uiservice"
    "com.samsung.desktopsystemui"
    "com.sec.android.app.desktoplauncher"
    # Samsung Email
    "com.samsung.android.email.provider"
    "com.wsomacp"
    # Samsung Gear VR
    "com.samsung.android.hmt.vrsvc"
    "com.samsung.android.app.vrsetupwizards"
    "com.samsung.android.app.vrsetupwizardstub"
    "com.samsung.android.hmt.vrshell"
    "com.google.vr.vrcore"
    # Samsung Kids Mode
    "com.samsung.android.kidsinstaller"
    "com.samsung.android.app.camera.sticker.facearavatar.preload"
    "com.sec.android.app.kidshome"
    # Samsung Knox
    "com.samsung.android.knox.containeragent"
    "com.samsung.android.knox.analytics.uploader"
    "com.sec.enterprise.knox.cloudmdm.smdms"
    "com.samsung.android.knox.attestation"
    "com.sec.enterprise.knox.attestation"
    "com.samsung.android.knox.containercore"
    "com.samsung.knox.securefolder"
    "com.samsung.android.bbc.bbcagent"
    "com.android.managedprovisioning"
    "com.samsung.knox.keychain"
    "com.knox.vpn.proxyhandler"
    "com.samsung.ucs.agent.ese"
    "com.samsung.klmsagent"
    # Samsung Game Launcher
    "com.samsung.android.game.gamehome"
    "com.enhance.gameservice"
    "com.samsung.android.game.gametools"
    "com.samsung.android.game.gos"
    "com.samsung.android.gametuner.thin"
    # Samsung Pay & Samsung Pass
    "com.samsung.android.samsungpassautofill"
    "com.samsung.android.authfw"
    "com.samsung.android.samsungpass"
    "com.samsung.android.spay"
    "com.samsung.android.spayfw"
    # Samsung Wellbeing
    "com.samsung.android.wellbeing"
    "com.samsung.android.forest"
    # General Samsung Apps
    "android.autoinstalls.config.samsung" # Samsung's auto install bullshit
    "com.hiya.star" # News panel
    "com.android.egg" # Android easter egg
    "com.osp.app.signin" # Samsung Account
    "com.sec.android.easyonehand" # One hand mode
    "com.samsung.android.aremoji" # AR Emoji
    "com.samsung.android.aware.service" # Quick Share
    "com.sec.android.app.apex" # Apex Service
    "com.sec.android.app.billing" # 
    "com.sec.android.app.hwmoduletest" # Hardware debugging, open the dialer and type *#0*# to access it
    "com.sec.android.app.magnifier" # Magnifier
    "com.sec.android.app.servicemodeapp" # SysDump, open the open the dialer and type *#9900# to access it
    "com.samsung.crane" # Call+, doesn't do anything on my phone at least
    "com.samsung.android.easysetup" # Samsung Connect - Easy Setup
    "com.samsung.android.fast" # Samsung Secure-WiFi (it's dogshit)
    "com.samsung.faceservice" # Face recognition in images, does not break face unlock
    "com.samsung.ipservice" # Used by face service, get data from web?
    "com.samsung.android.fmm" # Samsung Find My Mobile
    "com.samsung.mlp" # Content Recognition
    "com.samsung.rcs" # Rich Communication Service
    "com.samsung.SMT" # Text to Speech
    "com.samsung.android.mateagen" # Galaxy friends
    "com.samsung.android.mdm" # Monitor remote devices
    "com.samsung.android.mobileservice" # Group Sharing
    "com.samsung.android.samsungpositioning" # Service that gives Samsung Apps your location
    "com.samsung.android.sdm.config" # Samsung Deskphone Manager
    "com.samsung.android.securitylogagent" # Logs changes in the /system partition
    "com.samsung.android.shortcutbackupservice" # Samsung Cloud bullshit
    "com.samsung.android.smartmirroring" # Mirror your screen to a TV
    "com.samsung.android.stickercenter" # Sticker Center
    "com.samsung.android.svcagent" # Unknown/Does nothing
    "com.samsung.android.svoiceime" # Voice Input
    "com.linkedin.android" # LinkedIn
    "com.sec.android.app.bluetoothtest" # Bluetooth test, telemetry: https://forum.xda-developers.com/galaxy-s5/help/bluetoothtest-apk-calling-home-t3035182
    "com.sec.android.app.DataCreate" # Data Creation, debug tools, accessable via the dialer
    "com.sec.android.easyMover.Agent" # Samsung smart switch
    "com.sec.android.preloadinstaller" # Preload installer, creates a partition called "hidden" and installs shady apps on Chinese phones, do not trust this
    "com.samsung.android.aircommandmanager" # S Pen air command manager
    "com.samsung.android.app.watchmanager" # Galaxy watch (1)
    "com.samsung.android.app.watchmanagerstub" # Galaxy watch (2)
    "com.samsung.android.calendar" # Samsung Calaendar
    "com.samsung.android.ipsgeofence" # Indoor Positioning System, designate a network of connected devices within a building
    "com.samsung.android.livestickers" # Live Stickers aka snapchat filter clone
    "com.sec.android.app.sbrowser" # Samsung browser
    "com.samsung.android.drivelink.stub" # Samsung car mode
    "com.samsung.android.voc" # Samsung members
    "com.samsung.ecomm.global" # Samsung shop
    "com.samsung.aasaservice" # Security policy
    "com.samsung.android.oneconnect" # Smart Things
    "com.samsung.android.app.reminder" # Reminders
    "com.samsung.android.app.simplesharing" # Simple Sharing
    "com.sec.android.app.voicenote" # Voice recorder
    "de.axelspringer.yana.zeropage" # Upday
    "com.samsung.android.app.social" # What's new
)

for package in "${bloatware[@]}"
do
    eval "adb shell pm uninstall -k --user 0 ${package}"
done

echo "Debloated!"
