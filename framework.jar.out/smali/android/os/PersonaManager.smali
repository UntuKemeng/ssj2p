.class public Landroid/os/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaManager$1;,
        Landroid/os/PersonaManager$PathStrategy;,
        Landroid/os/PersonaManager$StateManager;,
        Landroid/os/PersonaManager$KnoxContainerVersion;,
        Landroid/os/PersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field private static final BBC_METADATA:Ljava/lang/String; = "com.samsung.android.knoxenabled"

.field public static final BRIDGE_COMPONENT1:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity"

.field public static final BRIDGE_COMPONENT2:Ljava/lang/String; = "com.sec.knox.bridge/com.sec.knox.bridge.activity.SwitchB2BActivity2"

.field public static final BRIDGE_PKG:Ljava/lang/String; = "com.sec.knox.bridge"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field private static final DEBUG:Z = false

.field public static DEFAULT_KNOX_NAME:Ljava/lang/String; = null

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x1388

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_EC_MAX_PERSONA_LIMIT_REACHED:I = -0x3f7

.field public static final ERROR_CREATE_PERSONA_EMERGENCY_MODE_FAILED:I = -0x407

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_GENERATE_CMK_FAILED:I = -0x40a

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_RUNTIME_PERMISSION_GRANT:I = -0x40b

.field public static final ERROR_CREATE_PERSONA_SECURE_FOLDER_MAX_PERSONA_LIMIT_REACHED:I = -0x3f5

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SUB_USER_FAILED:I = -0x403

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_CREATE_PERSONA_TIMA_PWD_KEY_FAILED:I = -0x409

.field public static final ERROR_CREATE_PERSONA_USER_INFO_INVALID:I = -0x408

.field public static final ERROR_INVAILD_CONTAINER_ID:I = -0x515

.field public static final ERROR_NO_PERSONA_SERVICE:I = -0x514

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_BBC_CONTAINER:I = 0x1000

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_EC_ENABLED:I = 0x10000

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_SECURE_FOLDER_CONTAINER:I = 0x2000

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field public static final FOLDERCONTAINER_PKG_NAME:Ljava/lang/String; = "com.sec.knox.foldercontainer"

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_CONTAINER_REMOVAL_STARTED:Ljava/lang/String; = "com.sec.knox.container.action.containerremovalstarted"

.field public static final INTENT_ACTION_LAUNCH_INFO:Ljava/lang/String; = "com.sec.knox.container.action.launchinfo"

.field public static final INTENT_ACTION_NFC_POLICY:Ljava/lang/String; = "com.sec.knox.container.action.nfc.policy"

.field public static final INTENT_ACTION_OBSERVER:Ljava/lang/String; = "com.sec.knox.container.action.observer"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CATEGORY_OBSERVER_CONTAINERID:Ljava/lang/String; = "com.sec.knox.container.category.observer.containerid"

.field public static final INTENT_CATEGORY_OBSERVER_ONATTRIBUTECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onattributechange"

.field public static final INTENT_CATEGORY_OBSERVER_ONKEYGUARDSTATECHANGED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onkeyguardstatechanged"

.field public static final INTENT_CATEGORY_OBSERVER_ONPERSONASWITCH:Ljava/lang/String; = "com.sec.knox.container.category.observer.onpersonaswitch"

.field public static final INTENT_CATEGORY_OBSERVER_ONSESSIONEXPIRED:Ljava/lang/String; = "com.sec.knox.container.category.observer.onsessionexpired"

.field public static final INTENT_CATEGORY_OBSERVER_ONSTATECHANGE:Ljava/lang/String; = "com.sec.knox.container.category.observer.onstatechange"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute"

.field public static final INTENT_EXTRA_OBSERVER_ATTRIBUTE_STATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.attribute.state"

.field public static final INTENT_EXTRA_OBSERVER_KEYGUARDSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.keyguardstate"

.field public static final INTENT_EXTRA_OBSERVER_NEWSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.newstate"

.field public static final INTENT_EXTRA_OBSERVER_PREVIOUSSTATE:Ljava/lang/String; = "com.sec.knox.container.extra.observer.previousstate"

.field public static final INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_EXTRA_SOURCE_SBA:I = 0x1

.field public static final INTENT_EXTRA_SOURCE_SBA_BLACKLIST:I = 0x2

.field public static final INTENT_EXTRA_SOURCE_WHITELIST:I = 0x0

.field public static final INTENT_EXTRA_UPDATED_VALUE:Ljava/lang/String; = "com.sec.knox.container.extra.updated.value"

.field public static final INTENT_PERMISSION_LAUNCH_INFO:Ljava/lang/String; = "com.samsung.container.LAUNCH_INFO"

.field public static final INTENT_PERMISSION_OBSERVER:Ljava/lang/String; = "com.samsung.container.OBSERVER"

.field public static final INTENT_PERMISSION_RECEIVE_KNOX_APPS_UPDATE:Ljava/lang/String; = "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final KNOX_SWITCH1_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxI"

.field public static final KNOX_SWITCH2_PKG:Ljava/lang/String; = "com.sec.knox.switchknoxII"

.field public static final KNOX_SWITCHER_PKG:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final KNOX_SWITCH_COMPONENT1:Ljava/lang/String; = "com.sec.knox.switcher/com.sec.knox.switcher.SwitchB2bActivityI"

.field public static final KNOX_SWITCH_COMPONENT2:Ljava/lang/String; = "com.sec.knox.switcher/com.sec.knox.switcher.SwitchB2bActivityII"

.field public static final MAX_ACTIVE_BUTTONS_ZERO_FOR_KIOSK:I = 0xa

.field public static final MAX_BBC_ID:I = 0xc7

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field public static final MAX_PERSONA_ALLOWED_SECURE_FOLDER:I = 0x1

.field public static final MAX_PERSONA_ID:I = 0xc8

.field public static final MAX_SECURE_FOLDER_ID:I = 0xa0

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_BBC_ID:I = 0xc3

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MIN_SECURE_FOLDER_ID:I = 0x96

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field public static MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I = 0x0

.field public static MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x0

.field public static MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x0

.field public static MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x0

.field public static MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x0

.field public static final NOTIFICATION_LIST_FOR_KIOSK:Ljava/lang/String; = "Wifi;MultiWindow;Location;SilentMode;AutoRotate;Bluetooth;NetworkBooster;MobileData;AirplaneMode;Nfc;SmartStay;PowerSaving;TorchLight;WiFiHotspot;"

.field public static final NOTIFICATION_LIST_FOR_KIOSK_M:Ljava/lang/String; = "Wifi,Location,SilentMode,RotationLock,Bluetooth,MobileData,PowerSaving,AirplaneMode,Flashlight,WifiHotspot,SmartStay,Nfc"

.field public static final PERMISSION_KEYGUARD_ACCESS:Ljava/lang/String; = "com.sec.knox.container.keyguard.ACCESS"

.field public static final PERMISSION_PERIPHERAL_POLICY_UPDATE:Ljava/lang/String; = "com.sec.knox.container.peripheral.POLICY_UPDATE"

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field public static SECOND_KNOX_NAME:Ljava/lang/String; = null

.field public static SECURE_FOLDER_NAME:Ljava/lang/String; = null

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field public static final TIMA_VALIDATION_SUCCESS:I

.field public static final approvedPackages:[Ljava/lang/String;

.field public static final chinaStorePackages:[Ljava/lang/String;

.field public static final excludedPackages:[Ljava/lang/String;

.field public static final excludedPackagesForJPN:[Ljava/lang/String;

.field public static final excludedPackagesForMyKnox:[Ljava/lang/String;

.field private static mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

.field private static mBTSecureManagerSync:Ljava/lang/Object;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field private static mMoveToInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static m_bIsKnoxInfoInitialized:Z

.field public static final mdmPackages:[Ljava/lang/String;

.field private static pathstrategy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PersonaManager$PathStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static personaManager:Landroid/os/PersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;

.field private static rcpManager:Landroid/os/RCPManager;


# instance fields
.field private NFCblackList:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 425
    const-string v0, "KNOX"

    sput-object v0, Landroid/os/PersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    .line 431
    const-string v0, "KNOX II"

    sput-object v0, Landroid/os/PersonaManager;->SECOND_KNOX_NAME:Ljava/lang/String;

    .line 435
    const-string/jumbo v0, "secure-folder"

    sput-object v0, Landroid/os/PersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 462
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/PersonaManager;->mBTSecureManagerSync:Ljava/lang/Object;

    .line 495
    const-string v0, "PersonaManager"

    sput-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 500
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->mMoveToInfo:Ljava/util/ArrayList;

    .line 501
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 502
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->rcpManager:Landroid/os/RCPManager;

    .line 503
    const/4 v0, 0x0

    sput-object v0, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 512
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v4

    const-string v1, "com.sec.knox.switcher"

    aput-object v1, v0, v5

    const-string v1, "com.sec.hearingadjust"

    aput-object v1, v0, v6

    const-string v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 526
    sput-boolean v3, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 529
    const/16 v0, 0x3e9

    sput v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    .line 531
    const/16 v0, 0x3ea

    sput v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    .line 533
    const/16 v0, 0x3e8

    sput v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    .line 535
    const/16 v0, 0x3eb

    sput v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    .line 537
    const/16 v0, 0x3ec

    sput v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    .line 1734
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.samsung.android.voc"

    aput-object v1, v0, v3

    sput-object v0, Landroid/os/PersonaManager;->excludedPackagesForMyKnox:[Ljava/lang/String;

    .line 1739
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.orca"

    aput-object v1, v0, v4

    const-string v1, "com.instagram.android"

    aput-object v1, v0, v5

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v6

    const-string/jumbo v1, "jp.gamegift"

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/PersonaManager;->excludedPackagesForJPN:[Ljava/lang/String;

    .line 1748
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.appsearch"

    aput-object v1, v0, v3

    const-string v1, "com.qihoo.appstore"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.android.qqdownloader"

    aput-object v1, v0, v5

    const-string v1, "com.wandoujia.phoenix2"

    aput-object v1, v0, v6

    const-string v1, "com.dragon.android.pandaspace"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->chinaStorePackages:[Ljava/lang/String;

    .line 1758
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-static {v1, v2}, Landroid/os/PersonaManager;->getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.android.settings"

    aput-object v1, v0, v4

    const-string v1, "com.sec.knox.knoxsetupwizardclient"

    aput-object v1, v0, v5

    const-string v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v6

    const-string v1, "com.sec.knox.setupwizardstub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.chaton"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.pcw"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.watchon.phone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.automotive.drivelink"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.android.app.lifetimes"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.shealth"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.kidshome"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.knox.app.container"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.sec.knox.shortcuti"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.sec.knox.containeragent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tv.peel.smartremote"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.skt.prod.phonebook"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.sec.enterprise.knox.express"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.google.android.apps.walletnfcrel"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.samsung.android.voc"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.skt.tservice"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sktelecom.minit"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.skt.prod.dialer"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.skt.skaf.A000Z00040"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.skt.skaf.OA00026910"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.skt.skaf.l001mtm091"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.skt.prod.phonebook"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.skt.smartbill"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.skt.tbagplus"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.sktelecom.tguard"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.skt.tdatacoupon"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.skb.btvmobile"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.iloen.melon"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.nate.android.portalmini"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.tms"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.skmc.okcashbag.home_google"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.elevenst"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.elevenst.deals"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.moent.vas"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.skmnc.gifticon"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.skt.tmaphot"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.skplanet.mbuzzer"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.skt.tgift"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.sktelecom.tsmartpay"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.cyworld.camera"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.kt.android.showtouch"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.kt.wificm"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.ktshow.cs"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.kt.olleh.storefront"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "com.kth.kshop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.show.greenbill"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.estsoft.alyac"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "com.kt.accessory"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "kt.navi"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "com.olleh.android.oc2"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "com.kt.ollehfamilybox"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "com.kt.otv"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "com.olleh.webtoon"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "com.kt.shodoc"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "com.ktmusic.geniemusic"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "com.ktcs.whowho"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "com.kt.apptong"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "com.mtelo.ktAPP"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "com.kt.bellringolleh"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "com.kt.mpay"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "com.kt.aljjapackplus"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "com.lguplus.appstore"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.uplus.onphone"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.lguplus.mobile.cs"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "lg.uplusbox"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "com.lgu.app.appbundle"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "lgt.call"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "com.mnet.app"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "com.lguplus.usimsvcm"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "com.lguplus.navi"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "com.lguplus.paynow"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "com.uplus.movielte"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "com.estsoft.alyac"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "com.lguplus.ltealive"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "com.uplus.ipagent"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "com.lguplus.homeiot"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "com.uplus.baseballhdtv"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "com.lgu"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "com.lgt.tmoney"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "com.lguplus.smartotp"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "net.daum.android.map"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "com.sds.mms.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "com.navitime.local.naviwalk"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "jp.id_credit_sp.android"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "jp.id_credit_sp.android.devappli"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "com.nttdocomo.android.dpoint"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "com.nttdocomo.android.voicetranslation"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "com.nttdocomo.android.moneyrecord"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "com.kddi.android.videopass"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "com.nttdocomo.android.photocollection"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->excludedPackages:[Ljava/lang/String;

    .line 1862
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.chrome"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.apps"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.apps.plus"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.apps.docs"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.google.android.play.games"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.google.android.videos"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.google.android.apps.magazines"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.keystringscreen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.infraware.polarisoffice5"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.microsoft.office.excel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.microsoft.office.powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.microsoft.office.word"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.hancom.androidpc.viewer.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.hancom.office.editor"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.microsoft.office.onenote"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.microsoft.skydrive"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->approvedPackages:[Ljava/lang/String;

    .line 1893
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.samsung.mdmtest1"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.mdmtest2"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.edmtest"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.containertool"

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/PersonaManager;->mdmPackages:[Ljava/lang/String;

    .line 3791
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/os/PersonaManager;->pathstrategy:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3924
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.smartdevice.setup.d2d:nfc2bt_bootstrap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.auth.setup.d2d:nfc2bt_bootstrap"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/os/PersonaManager;->NFCblackList:[Ljava/lang/String;

    .line 541
    iput-object p2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    .line 542
    iput-object p1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    .line 543
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static containerExists(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2731
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2742
    :cond_0
    :goto_0
    return v3

    .line 2734
    :cond_1
    const-string v0, ":"

    .line 2735
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2736
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 2737
    aget-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2738
    const/4 v3, 0x1

    goto :goto_0

    .line 2736
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1654
    if-nez p1, :cond_1

    .line 1655
    const/4 v3, 0x0

    .line 1686
    :cond_0
    :goto_0
    return-object v3

    .line 1658
    :cond_1
    const/4 v3, 0x0

    .line 1662
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1663
    invoke-static {p0}, Landroid/os/PersonaManager;->getRCPManager(Landroid/content/Context;)Landroid/os/RCPManager;

    move-result-object v2

    .line 1665
    .local v2, "rcpm":Landroid/os/RCPManager;
    if-eqz v2, :cond_0

    .line 1666
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 1669
    .end local v2    # "rcpm":Landroid/os/RCPManager;
    :cond_2
    const-string v5, "MoveTo"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1670
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1674
    const-string/jumbo v5, "launchFromPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1675
    const-string v5, "com.samsung.knox.rcp.components"

    const-string v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1679
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 1682
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1682
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Landroid/os/Bundle;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static getBBCBadgeIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "userId"    # I

    .prologue
    .line 3760
    const/4 v1, 0x0

    .line 3762
    .local v1, "drw":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 3763
    .local v6, "metadata":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v8, "com.samsung.android.knoxenabled"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3766
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    .line 3768
    .local v0, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    iget-object v8, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v4

    .line 3770
    .local v4, "imageData":[B
    if-eqz v4, :cond_1

    .line 3771
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3773
    .local v5, "is":Ljava/io/ByteArrayInputStream;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 3774
    .local v7, "typedValue":Landroid/util/TypedValue;
    const/4 v8, 0x0

    iput v8, v7, Landroid/util/TypedValue;->density:I

    .line 3775
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v7, v5, v9}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3777
    sget-object v8, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v9, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 3787
    .end local v0    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v1    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v4    # "imageData":[B
    .end local v5    # "is":Ljava/io/ByteArrayInputStream;
    .end local v7    # "typedValue":Landroid/util/TypedValue;
    .local v2, "drw":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 3781
    .end local v2    # "drw":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drw":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 3782
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EDM: Get Icon EX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v1

    .line 3787
    .end local v1    # "drw":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drw":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getBbcEnabled()I
    .locals 4

    .prologue
    .line 3724
    const-string/jumbo v2, "sys.knox.bbcid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3725
    .local v1, "value":Ljava/lang/String;
    const/16 v0, -0x2710

    .line 3732
    .local v0, "id":I
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3733
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3737
    :cond_0
    :goto_0
    return v0

    .line 3735
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getFloatingPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mFloatingConfig"    # Ljava/lang/String;
    .param p1, "mDefaultPkgName"    # Ljava/lang/String;

    .prologue
    .line 1713
    move-object v1, p1

    .line 1715
    .local v1, "mPkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1719
    :goto_0
    return-object v1

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;
    .locals 4

    .prologue
    .line 1257
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1258
    .local v1, "mKnoxInfo":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1260
    .local v0, "containerVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v1, :cond_0

    .line 1261
    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1263
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1264
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    .line 1299
    :cond_0
    :goto_0
    return-object v0

    .line 1265
    :cond_1
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1266
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_1_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1267
    :cond_2
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1268
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1269
    :cond_3
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 1270
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1271
    :cond_4
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1272
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_3_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1273
    :cond_5
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 1274
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1275
    :cond_6
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 1276
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1277
    :cond_7
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 1278
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1279
    :cond_8
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 1280
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1281
    :cond_9
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a

    .line 1282
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_2:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1283
    :cond_a
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_b

    .line 1284
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto :goto_0

    .line 1285
    :cond_b
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    .line 1286
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1287
    :cond_c
    const-string v2, "12"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 1288
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1290
    :cond_d
    const-string v2, "1.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1291
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo returns 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_1_0_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto/16 :goto_0

    .line 1294
    :cond_e
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mKnoxInfo is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_NONE:Landroid/os/PersonaManager$KnoxContainerVersion;

    goto/16 :goto_0
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 1077
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 1078
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1079
    const/4 v1, 0x0

    .line 1080
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1086
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1087
    const-string v1, "2.0"

    .line 1092
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :goto_1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "isSupportCallerInfo"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1104
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 1088
    :cond_2
    :try_start_3
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    const-string v1, "1.0"

    goto :goto_0

    .line 1094
    :cond_3
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1100
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1103
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1573
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1574
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1578
    :cond_0
    :try_start_0
    const-string v1, "2.0"

    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1579
    const-string/jumbo v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 1382
    const-class v11, Landroid/os/PersonaManager;

    monitor-enter v11

    .line 1383
    const/4 v9, 0x0

    .line 1385
    .local v9, "userid":I
    :try_start_0
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v10, :cond_0

    .line 1386
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1389
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1393
    :try_start_1
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "userId"

    invoke-virtual {v10, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "checkVersion"

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1396
    sget-boolean v10, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v10, :cond_3

    .line 1397
    const/16 v10, 0x64

    if-lt v9, v10, :cond_1

    .line 1398
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKnoxMode"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isBlockExternalSD"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isBlockBluetoothMenu"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSamsungAccountBlocked"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_1
    invoke-static {v9}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1405
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isBlockExternalSD"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_2
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1409
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKioskModeEnabled"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_0
    const/4 v10, 0x1

    sput-boolean v10, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 1418
    :cond_3
    const-string/jumbo v10, "true"

    sget-object v12, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v13, "isKioskModeEnabled"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1419
    const-string/jumbo v10, "isSupportMoveTo"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1420
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v10, v9}, Landroid/os/PersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1424
    :cond_4
    const-string/jumbo v10, "isKnoxModeActive"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1425
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    const/16 v12, 0x64

    if-lt v10, v12, :cond_11

    .line 1426
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKnoxModeActive"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_5
    :goto_1
    const-string/jumbo v10, "isKioskModeEnabled"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1433
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1434
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKioskModeEnabled"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :cond_6
    :goto_2
    const-string/jumbo v10, "isSecureFolderExist"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1441
    invoke-static {p0}, Landroid/os/PersonaManager;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1442
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSecureFolderExist"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    :cond_7
    :goto_3
    const-string/jumbo v10, "isSmartSwitchBnRAvailable"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1448
    invoke-static {p0}, Landroid/os/PersonaManager;->isMyknoxExist(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1449
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isMyknoxExist"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :goto_4
    invoke-static {p0}, Landroid/os/PersonaManager;->isSecureFolderExist(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1454
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSecureFolderExist"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    :cond_8
    :goto_5
    const-string v10, "getContainerLabel"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1462
    const/4 v2, 0x0

    .line 1463
    .local v2, "containerName":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1464
    .local v6, "pm":Landroid/os/PersonaManager;
    if-eqz v6, :cond_9

    .line 1466
    :try_start_2
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10, v9}, Landroid/os/IPersonaManager;->getContainerName(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1471
    :cond_9
    :goto_6
    :try_start_3
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getContainerLabel"

    invoke-virtual {v10, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    .end local v2    # "containerName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/os/PersonaManager;
    :cond_a
    const-string v10, "getContainerAppIcon"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, "containerAppIcon":[B
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1478
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    if-eqz v6, :cond_b

    .line 1480
    :try_start_4
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10, v9}, Landroid/os/IPersonaManager;->getContainerAppIcon(I)[B
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1485
    :cond_b
    :goto_7
    :try_start_5
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getContainerAppIcon"

    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1488
    .end local v0    # "containerAppIcon":[B
    .end local v6    # "pm":Landroid/os/PersonaManager;
    :cond_c
    const-string v10, "getActiveUserId"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1489
    const/4 v8, 0x0

    .line 1491
    .local v8, "userId":I
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 1492
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    if-eqz v6, :cond_d

    .line 1494
    :try_start_6
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10}, Landroid/os/IPersonaManager;->getFocusedUser()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v8

    .line 1499
    :cond_d
    :goto_8
    :try_start_7
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getActiveUserId"

    invoke-virtual {v10, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1502
    .end local v6    # "pm":Landroid/os/PersonaManager;
    .end local v8    # "userId":I
    :cond_e
    const-string v10, "getAllPersonaInfo"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1503
    const/4 v0, 0x0

    .line 1504
    .restart local v0    # "containerAppIcon":[B
    const/4 v2, 0x0

    .line 1505
    .restart local v2    # "containerName":Ljava/lang/String;
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getContainerCount"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1506
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    .line 1507
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    if-eqz v6, :cond_16

    .line 1509
    :try_start_8
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10}, Landroid/os/IPersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 1511
    .local v5, "ids":[I
    if-eqz v5, :cond_16

    array-length v10, v5

    if-eqz v10, :cond_16

    .line 1512
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getContainerCount"

    array-length v13, v5

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1513
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    array-length v10, v5

    if-ge v4, v10, :cond_16

    .line 1514
    aget v1, v5, v4

    .line 1515
    .local v1, "containerId":I
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10, v1}, Landroid/os/IPersonaManager;->getContainerAppIcon(I)[B

    move-result-object v0

    .line 1516
    iget-object v10, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v10, v1}, Landroid/os/IPersonaManager;->getContainerName(I)Ljava/lang/String;

    move-result-object v2

    .line 1518
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerOrder_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v6, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v13, v1}, Landroid/os/IPersonaManager;->getContainerOrder(I)I

    move-result v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1519
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerId_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1520
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerLabel_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getContainerAppIcon_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1513
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1411
    .end local v0    # "containerAppIcon":[B
    .end local v1    # "containerId":I
    .end local v2    # "containerName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "ids":[I
    .end local v6    # "pm":Landroid/os/PersonaManager;
    :cond_f
    :try_start_9
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKioskModeEnabled"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 1547
    :catch_0
    move-exception v3

    .line 1548
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1550
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1551
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v10

    .line 1428
    :cond_11
    :try_start_b
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKnoxModeActive"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 1550
    :catchall_0
    move-exception v10

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v10

    .line 1436
    :cond_12
    :try_start_d
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isKioskModeEnabled"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1444
    :cond_13
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSecureFolderExist"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1451
    :cond_14
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isMyknoxExist"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1456
    :cond_15
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSecureFolderExist"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1467
    .restart local v2    # "containerName":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    :catch_1
    move-exception v7

    .line 1468
    .local v7, "re":Landroid/os/RemoteException;
    sget-object v10, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to container name"

    invoke-static {v10, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1481
    .end local v2    # "containerName":Ljava/lang/String;
    .end local v7    # "re":Landroid/os/RemoteException;
    .restart local v0    # "containerAppIcon":[B
    :catch_2
    move-exception v7

    .line 1482
    .restart local v7    # "re":Landroid/os/RemoteException;
    sget-object v10, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to container name"

    invoke-static {v10, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1495
    .end local v0    # "containerAppIcon":[B
    .end local v7    # "re":Landroid/os/RemoteException;
    .restart local v8    # "userId":I
    :catch_3
    move-exception v7

    .line 1496
    .restart local v7    # "re":Landroid/os/RemoteException;
    sget-object v10, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to container name"

    invoke-static {v10, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1524
    .end local v7    # "re":Landroid/os/RemoteException;
    .end local v8    # "userId":I
    .restart local v0    # "containerAppIcon":[B
    .restart local v2    # "containerName":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 1525
    .restart local v7    # "re":Landroid/os/RemoteException;
    sget-object v10, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v12, "failed to get container info:"

    invoke-static {v10, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1526
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getContainerCount"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1531
    .end local v0    # "containerAppIcon":[B
    .end local v2    # "containerName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/os/PersonaManager;
    .end local v7    # "re":Landroid/os/RemoteException;
    :cond_16
    const-string/jumbo v10, "isSupportSecureFolder"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1532
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;

    move-result-object v6

    .line 1533
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    if-eqz v6, :cond_19

    .line 1534
    invoke-virtual {v6}, Landroid/os/PersonaManager;->isUserManaged()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1535
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSupportSecureFolder"

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    .end local v6    # "pm":Landroid/os/PersonaManager;
    :cond_17
    :goto_b
    const-string v10, "getKnoxBrandPolicy"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1544
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v12, "getKnoxBrandPolicy"

    const-string v13, "Knox"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1537
    .restart local v6    # "pm":Landroid/os/PersonaManager;
    :cond_18
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSupportSecureFolder"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1540
    :cond_19
    sget-object v10, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v12, "isSupportSecureFolder"

    const-string v13, "false"

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b
.end method

.method public static getPathStrategy(I)Landroid/os/PersonaManager$PathStrategy;
    .locals 2
    .param p0, "userid"    # I

    .prologue
    .line 3801
    sget-object v1, Landroid/os/PersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager$PathStrategy;

    .line 3802
    .local v0, "ret":Landroid/os/PersonaManager$PathStrategy;
    if-nez v0, :cond_0

    .line 3803
    new-instance v0, Landroid/os/PersonaManager$PathStrategy;

    .end local v0    # "ret":Landroid/os/PersonaManager$PathStrategy;
    const-string v1, "bbcfileprovider"

    invoke-direct {v0, v1, p0}, Landroid/os/PersonaManager$PathStrategy;-><init>(Ljava/lang/String;I)V

    .line 3804
    .restart local v0    # "ret":Landroid/os/PersonaManager$PathStrategy;
    sget-object v1, Landroid/os/PersonaManager;->pathstrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3806
    :cond_0
    return-object v0
.end method

.method public static getPersonaName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "personaId"    # I

    .prologue
    .line 3290
    const/16 v3, 0x64

    if-lt p1, v3, :cond_4

    .line 3291
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 3292
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3293
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    .line 3294
    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3295
    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 3309
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "um":Landroid/os/UserManager;
    :goto_0
    return-object v3

    .line 3297
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    .restart local v2    # "um":Landroid/os/UserManager;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3298
    .local v0, "packageName":Ljava/lang/String;
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPersonaName called from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    const-string v3, "com.sec.knox.containeragent2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.sec.knox.switcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.samsung.knox.kss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.sec.knox.foldercontainer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3302
    :cond_1
    const-string v3, "KNOX"

    goto :goto_0

    .line 3304
    :cond_2
    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 3307
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User doesn\'t exist. : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3605
    if-eqz p0, :cond_0

    .line 3606
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3607
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3611
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRCPManager(Landroid/content/Context;)Landroid/os/RCPManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1691
    const-class v1, Landroid/os/PersonaManager;

    monitor-enter v1

    .line 1692
    :try_start_0
    sget-object v0, Landroid/os/PersonaManager;->rcpManager:Landroid/os/RCPManager;

    if-nez v0, :cond_0

    .line 1693
    const-string/jumbo v0, "rcp"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    sput-object v0, Landroid/os/PersonaManager;->rcpManager:Landroid/os/RCPManager;

    .line 1695
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    sget-object v0, Landroid/os/PersonaManager;->rcpManager:Landroid/os/RCPManager;

    return-object v0

    .line 1695
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSecureFolderId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3659
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;

    move-result-object v0

    .line 3660
    .local v0, "pm":Landroid/os/PersonaManager;
    if-nez v0, :cond_0

    .line 3661
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get PersonaManagerService in getSecureFolderId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    const/16 v2, -0x514

    .line 3670
    :goto_0
    return v2

    .line 3666
    :cond_0
    :try_start_0
    iget-object v2, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getSecureFolderId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3667
    :catch_0
    move-exception v1

    .line 3668
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getSecureFolderId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3670
    const/16 v2, -0x515

    goto :goto_0
.end method

.method public static getSecureFolderName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3620
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;

    move-result-object v4

    .line 3621
    .local v4, "pm":Landroid/os/PersonaManager;
    if-nez v4, :cond_0

    .line 3622
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get PersonaManagerService in getSecureFolderId"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const-string v0, ""

    .line 3635
    :goto_0
    return-object v0

    .line 3625
    :cond_0
    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v3

    .line 3626
    .local v3, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 3627
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 3629
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 3630
    .local v1, "i":Landroid/content/pm/PersonaInfo;
    invoke-virtual {v1}, Landroid/content/pm/PersonaInfo;->getType()Ljava/lang/String;

    move-result-object v0

    .line 3631
    .local v0, "curName":Ljava/lang/String;
    sget-object v5, Landroid/os/PersonaManager;->SECURE_FOLDER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 3635
    .end local v0    # "curName":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/pm/PersonaInfo;
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static isBBCContainer(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 3749
    const/16 v0, 0xc3

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCACEnabled(I)Z
    .locals 8
    .param p0, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2471
    const/4 v3, 0x0

    .line 2472
    .local v3, "secure_mode":Z
    const/4 v2, 0x0

    .line 2476
    .local v2, "secure_access":Z
    sget-object v6, Landroid/os/PersonaManager;->mBTSecureManagerSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2477
    :try_start_0
    sget-object v7, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v7, :cond_0

    .line 2478
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v7

    sput-object v7, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2481
    :cond_0
    :try_start_1
    sget-object v7, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z

    move-result v3

    .line 2483
    const/16 v7, 0x64

    if-lt p0, v7, :cond_3

    const/16 v7, 0xc8

    if-gt p0, v7, :cond_3

    .line 2484
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 2485
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_1

    .line 2486
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isBTSecureAccessAllowedAsUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2489
    :cond_1
    if-ne v3, v5, :cond_2

    if-ne v2, v5, :cond_2

    move v4, v5

    :cond_2
    :try_start_2
    monitor-exit v6

    .line 2498
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v4

    .line 2492
    :cond_3
    monitor-exit v6

    move v4, v3

    goto :goto_0

    .line 2494
    :catch_0
    move-exception v1

    .line 2495
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to isCACEnabled"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    monitor-exit v6

    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1361
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1364
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 1378
    :cond_0
    :goto_0
    return v3

    .line 1365
    :cond_1
    if-eqz p0, :cond_0

    .line 1366
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1367
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 1371
    :try_start_0
    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v1

    .line 1373
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isKnoxAppRunning(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4057
    const/4 v1, 0x0

    .line 4058
    .local v1, "result":Z
    const/4 v3, 0x0

    .line 4068
    .local v3, "userId":I
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 4069
    .local v0, "pm":Landroid/os/PersonaManager;
    if-nez v0, :cond_0

    move v2, v1

    .line 4077
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 4070
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v3

    .line 4073
    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_1

    const/4 v1, 0x1

    .line 4075
    :goto_1
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxAppRunning userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 4077
    .restart local v2    # "result":I
    goto :goto_0

    .line 4073
    .end local v2    # "result":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isKnoxId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 3580
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxMultiwindowsSupported()Z
    .locals 1

    .prologue
    .line 4133
    sget-object v0, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_6_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    return v0
.end method

.method public static isKnoxSupported()Z
    .locals 6

    .prologue
    .line 1135
    const/4 v1, 0x0

    .line 1137
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 1138
    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v2, :cond_1

    .line 1139
    invoke-virtual {v2}, Landroid/os/PersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 1140
    :goto_0
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supported Knox Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :goto_1
    return v1

    .line 1139
    .restart local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1142
    :cond_1
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected... failed to get knox version..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1144
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isKnoxVersionSupported(I)Z
    .locals 2
    .param p0, "version"    # I

    .prologue
    .line 1113
    if-lez p0, :cond_0

    .line 1114
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1115
    .local v0, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result v1

    if-lt v1, p0, :cond_0

    .line 1116
    const/4 v1, 0x1

    .line 1119
    .end local v0    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z
    .locals 2
    .param p0, "version"    # Landroid/os/PersonaManager$KnoxContainerVersion;

    .prologue
    .line 1124
    if-eqz p0, :cond_0

    .line 1125
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1126
    .local v0, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1127
    const/4 v1, 0x1

    .line 1130
    .end local v0    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMyknoxExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1555
    invoke-static {p0}, Landroid/os/PersonaManager;->getPersonaService(Landroid/content/Context;)Landroid/os/PersonaManager;

    move-result-object v1

    .line 1557
    .local v1, "pm":Landroid/os/PersonaManager;
    if-eqz v1, :cond_0

    .line 1558
    :try_start_0
    iget-object v4, v1, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->getMyknoxId()I

    move-result v0

    .line 1559
    .local v0, "id":I
    if-nez v0, :cond_1

    .line 1568
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return v3

    .line 1561
    .restart local v0    # "id":I
    :cond_1
    invoke-static {v0}, Landroid/os/PersonaManager;->isKnoxId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1562
    const/4 v3, 0x1

    goto :goto_0

    .line 1565
    .end local v0    # "id":I
    :catch_0
    move-exception v2

    .line 1566
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isMyknoxExist"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1700
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "null"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return v4

    .line 1703
    :cond_1
    sget-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1704
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1703
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1708
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isSecBrandAsGalaxy()Z
    .locals 4

    .prologue
    .line 1723
    const/4 v1, 0x0

    .line 1724
    .local v1, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1726
    const/4 v1, 0x1

    .line 1730
    :goto_0
    return v1

    .line 1728
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecureFolderAppRunning(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4082
    const/4 v1, 0x0

    .line 4083
    .local v1, "result":Z
    const/4 v3, 0x0

    .line 4093
    .local v3, "userId":I
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 4094
    .local v0, "pm":Landroid/os/PersonaManager;
    if-nez v0, :cond_0

    move v2, v1

    .line 4102
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 4095
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v3

    .line 4098
    const/16 v4, 0x96

    if-lt v3, v4, :cond_1

    const/16 v4, 0xa0

    if-gt v3, v4, :cond_1

    const/4 v1, 0x1

    .line 4100
    :goto_1
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSecureFolderAppRunning userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 4102
    .restart local v2    # "result":I
    goto :goto_0

    .line 4098
    .end local v2    # "result":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isSecureFolderExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3644
    invoke-static {p0}, Landroid/os/PersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    .line 3646
    .local v0, "currentId":I
    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    .line 3647
    const/4 v1, 0x1

    .line 3650
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecureFolderId()Z
    .locals 2

    .prologue
    .line 3588
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3589
    .local v0, "userId":I
    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecureFolderId(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 3596
    const/16 v0, 0x96

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShopdemo()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 4252
    .local v0, "isShopDemo":Z
    iget-object v3, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "shopdemo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 4254
    :cond_1
    return v1
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1303
    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1356
    :goto_0
    return v1

    .line 1307
    :cond_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1308
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1309
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 1310
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_1

    .line 1311
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 1313
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    const-class v3, Landroid/os/PersonaPolicyManager;

    monitor-enter v3

    .line 1316
    :try_start_1
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_2

    .line 1317
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 1319
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1321
    const/16 v1, 0x64

    if-lt p3, v1, :cond_11

    .line 1322
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 1323
    goto :goto_0

    .line 1313
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1319
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 1324
    :cond_3
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1325
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    goto :goto_0

    .line 1326
    :cond_4
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1327
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    goto :goto_0

    .line 1328
    :cond_5
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1329
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto :goto_0

    .line 1330
    :cond_6
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1331
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1332
    :cond_7
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1333
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1334
    :cond_8
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1335
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1336
    :cond_9
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1337
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1338
    :cond_a
    const-string/jumbo v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1339
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1340
    :cond_b
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1341
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1342
    :cond_c
    const-string/jumbo v1, "move-file-to-container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1343
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1344
    :cond_d
    const-string/jumbo v1, "move-file-to-owner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1345
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1346
    :cond_e
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1347
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1348
    :cond_f
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1349
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_0

    .line 1350
    :cond_10
    const-string v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    .line 1351
    goto/16 :goto_0

    .line 1356
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4162
    const-string v1, ""

    .line 4164
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4165
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_2

    .line 4166
    :cond_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4167
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_2

    .line 4168
    :cond_1
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4174
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 4175
    const-string v1, ""

    .line 4177
    .end local v1    # "sales_code":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 4171
    .restart local v1    # "sales_code":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4172
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "readOMCSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1590
    const-string/jumbo v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    if-nez p2, :cond_4

    .line 1593
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1594
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1595
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1596
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1597
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1599
    .local v5, "personaNames":[Ljava/lang/String;
    const-string v9, "action"

    const-string v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-string v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-static {p0, v1}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1604
    if-eqz v8, :cond_0

    .line 1605
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1606
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1607
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1609
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1610
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1611
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1615
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1617
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    array-length v9, v4

    if-lez v9, :cond_2

    .line 1620
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    .line 1621
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1625
    .local v7, "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1627
    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_2
    const-string v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return-void

    .line 1635
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v4    # "personaIds":[I
    .restart local v5    # "personaNames":[Ljava/lang/String;
    .restart local v6    # "personaTypes":[Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 1636
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1639
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_4
    const/16 v9, 0x64

    if-lt p2, v9, :cond_3

    .line 1641
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1642
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1644
    const-string/jumbo v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1646
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1647
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 2223
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2225
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1022
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1027
    :goto_0
    return-object v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2273
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2275
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    :cond_0
    :goto_0
    return-void

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addPackageToNonSecureAppList(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4194
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4196
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addPackageToNonSecureAppList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4201
    :cond_0
    :goto_0
    return-void

    .line 4197
    :catch_0
    move-exception v0

    .line 4198
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2166
    const/4 v1, 0x0

    .line 2167
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2169
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2174
    :cond_0
    :goto_0
    return v1

    .line 2170
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2179
    const/4 v1, 0x0

    .line 2180
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2182
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2187
    :cond_0
    :goto_0
    return v1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canAccess(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2772
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2774
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAccess for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2780
    :goto_0
    return v1

    .line 2776
    :catch_0
    move-exception v0

    .line 2777
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get access permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2780
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 2412
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2414
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2415
    :catch_0
    move-exception v0

    .line 2416
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearNonSecureAppList()V
    .locals 3

    .prologue
    .line 4217
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4219
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->clearNonSecureAppList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4224
    :cond_0
    :goto_0
    return-void

    .line 4220
    :catch_0
    move-exception v0

    .line 4221
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public convertContainerType(II)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I

    .prologue
    .line 2797
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2799
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertContainerType for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->convertContainerType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    :cond_0
    :goto_0
    return-void

    .line 2801
    :catch_0
    move-exception v0

    .line 2802
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to convertContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 2018
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 2020
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2024
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 2021
    :catch_0
    move-exception v1

    .line 2022
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2024
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public copyFontToKnox(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4371
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4373
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->copyFontToKnox(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4378
    :cond_0
    :goto_0
    return-void

    .line 4374
    :catch_0
    move-exception v0

    .line 4375
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "setupWizardApkUri"    # Landroid/net/Uri;
    .param p8, "mdmSecretKey"    # Ljava/lang/String;
    .param p9, "lockType"    # I

    .prologue
    .line 578
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 580
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/os/IPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    :goto_0
    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2031
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 2033
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2037
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 2034
    :catch_0
    move-exception v1

    .line 2035
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2137
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2139
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2145
    :goto_0
    return v1

    .line 2141
    :catch_0
    move-exception v0

    .line 2142
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "r"    # Landroid/content/pm/IKnoxUnlockAction;

    .prologue
    .line 2645
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2647
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2648
    :catch_0
    move-exception v0

    .line 2649
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not showKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2153
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2155
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2161
    :goto_0
    return v1

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public exists(I)Z
    .locals 5
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    .line 896
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v3, :cond_0

    .line 898
    :try_start_0
    const-string/jumbo v3, "sys.knox.exists"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, "value":Ljava/lang/String;
    const/16 v3, 0x64

    if-ge p1, v3, :cond_1

    .line 910
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 902
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 903
    invoke-static {v1, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 905
    :cond_2
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 906
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 907
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v4, "Could not get user info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 948
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2042
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2044
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getAdminUidForPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2050
    :goto_0
    return v1

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2050
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2256
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2258
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2263
    :goto_0
    return-object v1

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 8
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 1037
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "PM.getCallerInfo()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v5, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcp"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 1040
    .local v1, "rcpm":Landroid/os/RCPManager;
    if-nez v1, :cond_0

    .line 1041
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :goto_0
    return-object v4

    .line 1045
    :cond_0
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 1046
    if-nez v0, :cond_1

    .line 1047
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1052
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 1053
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 1054
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v2

    .line 1056
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t complete call to getCallerInfo , inside PersonaManager with exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getContainerHideUsageStatsApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4182
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4184
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getContainerHideUsageStatsApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4189
    :goto_0
    return-object v1

    .line 4185
    :catch_0
    move-exception v0

    .line 4186
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get usage stats app hide list "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4189
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getContainerIcon(I)[B
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4332
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4334
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getContainerAppIcon(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4339
    :goto_0
    return-object v1

    .line 4335
    :catch_0
    move-exception v0

    .line 4336
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4339
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 4345
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4347
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getContainerName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4352
    :goto_0
    return-object v1

    .line 4348
    :catch_0
    move-exception v0

    .line 4349
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4352
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "originalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "mUser"    # Landroid/os/UserHandle;

    .prologue
    .line 4107
    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/PersonaManager;->getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCustomBadgedIconifRequired(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "originalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "mUser"    # Landroid/os/UserHandle;
    .param p5, "position"    # I

    .prologue
    .line 4112
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 4113
    .local v2, "userId":I
    invoke-static {v2}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4127
    .end local p2    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p2

    .line 4116
    .restart local p2    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4120
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p3, v2}, Landroid/os/IPersonaManager;->getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I

    move-result v0

    .line 4121
    .local v0, "badgeResourceId":I
    if-eqz v0, :cond_0

    .line 4124
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, p4, v0, p5}, Landroid/content/pm/PackageManager;->getCustomBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 4126
    .end local v0    # "badgeResourceId":I
    :catch_0
    move-exception v1

    .line 4127
    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDefaultQuickSettings()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4138
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4140
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getDefaultQuickSettings()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4145
    :goto_0
    return-object v1

    .line 4141
    :catch_0
    move-exception v0

    .line 4142
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDefaultQuickSettings from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4145
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2396
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2398
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2403
    :goto_0
    return-object v1

    .line 2399
    :catch_0
    move-exception v0

    .line 2400
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2403
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getECBadge(I)[B
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4293
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4295
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getECBadge(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4300
    :goto_0
    return-object v1

    .line 4296
    :catch_0
    move-exception v0

    .line 4297
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4300
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getECIcon(I)[B
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4305
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4307
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getECIcon(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4312
    :goto_0
    return-object v1

    .line 4308
    :catch_0
    move-exception v0

    .line 4309
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4312
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getECName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4281
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4283
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getECName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4288
    :goto_0
    return-object v1

    .line 4284
    :catch_0
    move-exception v0

    .line 4285
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4288
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFidoRpContext(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3073
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3075
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFidoRpContext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getFidoRpContext(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3081
    :goto_0
    return-object v1

    .line 3077
    :catch_0
    move-exception v0

    .line 3078
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3081
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getFingerCount()I
    .locals 3

    .prologue
    .line 3172
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3174
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getFingerCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3180
    :goto_0
    return v1

    .line 3176
    :catch_0
    move-exception v0

    .line 3177
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3180
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFingerprintHash(I)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4014
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4016
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFingerprintHash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getFingerprintHash(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4022
    :goto_0
    return-object v1

    .line 4018
    :catch_0
    move-exception v0

    .line 4019
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getFingerprintHash from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4022
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFingerprintIndex(I)[I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3987
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3989
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getFingerprintIndex(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3995
    :goto_0
    return-object v1

    .line 3991
    :catch_0
    move-exception v0

    .line 3992
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3995
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedUser()I
    .locals 3

    .prologue
    .line 3219
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3222
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getFocusedUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3227
    :goto_0
    return v1

    .line 3223
    :catch_0
    move-exception v0

    .line 3224
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3227
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getForegroundUser()I
    .locals 3

    .prologue
    .line 3203
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3205
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getForegroundUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getForegroundUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3211
    :goto_0
    return v1

    .line 3207
    :catch_0
    move-exception v0

    .line 3208
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getForegroundUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3211
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsAdminLockedJustBefore()Z
    .locals 3

    .prologue
    .line 3107
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3109
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsAdminLockedJustBefore(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3115
    :goto_0
    return v1

    .line 3111
    :catch_0
    move-exception v0

    .line 3112
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3115
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerAsSupplement()Z
    .locals 3

    .prologue
    .line 2814
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2816
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerAsSupplement(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2822
    :goto_0
    return v1

    .line 2818
    :catch_0
    move-exception v0

    .line 2819
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2822
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 3

    .prologue
    .line 3140
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3142
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerIdentifyFailed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3148
    :goto_0
    return v1

    .line 3144
    :catch_0
    move-exception v0

    .line 3145
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3148
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerReset()Z
    .locals 3

    .prologue
    .line 3008
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3010
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3016
    :goto_0
    return v1

    .line 3012
    :catch_0
    move-exception v0

    .line 3013
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3016
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerTimeout()Z
    .locals 3

    .prologue
    .line 2944
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2946
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2952
    :goto_0
    return v1

    .line 2948
    :catch_0
    move-exception v0

    .line 2949
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2952
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsIrisReset()Z
    .locals 3

    .prologue
    .line 3040
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3042
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsIrisReset(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3048
    :goto_0
    return v1

    .line 3044
    :catch_0
    move-exception v0

    .line 3045
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsBioReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3048
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsIrisTimeout()Z
    .locals 3

    .prologue
    .line 2976
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2978
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsBioTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsIrisTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2984
    :goto_0
    return v1

    .line 2980
    :catch_0
    move-exception v0

    .line 2981
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsBioTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2984
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsQuickAccessUIEnabled()Z
    .locals 3

    .prologue
    .line 2911
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2913
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsQuickAccessUIEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsQuickAccessUIEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2919
    :goto_0
    return v1

    .line 2915
    :catch_0
    move-exception v0

    .line 2916
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsQuickAccessUIEnabled from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2919
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsUnlockedAfterTurnOn()Z
    .locals 3

    .prologue
    .line 2878
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2880
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsUnlockedAfterTurnOn(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2886
    :goto_0
    return v1

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2886
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyguardShowState()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2706
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v2

    .line 2707
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2715
    :cond_0
    :goto_0
    return v3

    .line 2710
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PersonaInfo;

    .line 2711
    .local v0, "i":Landroid/content/pm/PersonaInfo;
    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2712
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getKeyguardShowState(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2694
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2696
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2701
    :goto_0
    return v1

    .line 2697
    :catch_0
    move-exception v0

    .line 2698
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2701
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 3684
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3686
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxIconChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3692
    :goto_0
    return-object v1

    .line 3688
    :catch_0
    move-exception v0

    .line 3689
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxIconChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3692
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3702
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3704
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxIconChangedAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3705
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3710
    :goto_0
    return-object v1

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxIconChangedAsUser from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3710
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 3548
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3550
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxNameChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3556
    :goto_0
    return-object v1

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxNameChanged from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3556
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getKnoxNameChangedAsUser(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3566
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3568
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxNameChangedAsUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKnoxNameChangedAsUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3574
    :goto_0
    return-object v1

    .line 3570
    :catch_0
    move-exception v0

    .line 3571
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKnoxNameChangedAsUser from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3574
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getKnoxSecurityTimeout()I
    .locals 3

    .prologue
    .line 3415
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3417
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getKnoxSecurityTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3423
    :goto_0
    return v1

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getKnoxSecurityTimeout from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3423
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const v1, 0x927c0

    goto :goto_0
.end method

.method public getLastKeyguardUnlockTime()J
    .locals 4

    .prologue
    .line 2846
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2848
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getLastKeyguadUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getLastKeyguardUnlockTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2854
    :goto_0
    return-wide v2

    .line 2850
    :catch_0
    move-exception v0

    .line 2851
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2854
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4388
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4389
    .local v8, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 4391
    .local v2, "isAllowMoveTo":Ljava/lang/String;
    const/16 v9, 0xe6

    invoke-static {v9}, Landroid/os/PersonaManager;->isKnoxVersionSupported(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4483
    :cond_0
    :goto_0
    return-object v8

    .line 4395
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 4398
    invoke-static {p1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 4402
    const-string/jumbo v9, "persona"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 4404
    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v5}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v6

    .line 4405
    .local v6, "personaIds":[I
    if-eqz v6, :cond_0

    array-length v9, v6

    if-eqz v9, :cond_0

    .line 4407
    array-length v9, v6

    if-lez v9, :cond_0

    .line 4409
    const/4 v3, 0x0

    .line 4411
    .local v3, "isKnoxAdded":Z
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    if-nez v9, :cond_9

    .line 4412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v6

    if-ge v1, v9, :cond_0

    .line 4413
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4416
    .local v4, "item":Landroid/os/Bundle;
    const-string/jumbo v9, "move-file-to-container"

    const/4 v10, 0x0

    aget v11, v6, v1

    invoke-static {p1, v9, v10, v11}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4417
    const-string/jumbo v2, "true"

    .line 4421
    :goto_2
    aget v9, v6, v1

    invoke-static {v9}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 4425
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v9, "com.sec.knox.switcher"

    const-string v10, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 4427
    sget-object v9, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "is secure folder"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4428
    const-string v9, "com.sec.knox.moveto.name"

    aget v10, v6, v1

    invoke-virtual {v5, v10, p1}, Landroid/os/PersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4429
    const-string v9, "com.sec.knox.moveto.containerType"

    sget v10, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4430
    const-string v9, "com.sec.knox.moveto.containerId"

    aget v10, v6, v1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4453
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :goto_3
    if-eqz v4, :cond_2

    .line 4454
    const-string v9, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4455
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4412
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4419
    :cond_3
    const-string v2, "false"

    goto :goto_2

    .line 4432
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 4434
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    aget v9, v6, v1

    invoke-virtual {p0, v9}, Landroid/os/PersonaManager;->isECContainer(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4435
    sget-object v9, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "is enterprise contianer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    const-string v9, "com.sec.knox.moveto.name"

    aget v10, v6, v1

    invoke-virtual {p0, v10}, Landroid/os/PersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4437
    const-string v9, "com.sec.knox.moveto.containerType"

    sget v10, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4438
    const-string v9, "com.sec.knox.moveto.containerId"

    aget v10, v6, v1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 4439
    :cond_6
    aget v9, v6, v1

    invoke-static {v9}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4440
    sget-object v9, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "is BBCContainer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4443
    :cond_7
    sget-object v9, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "is knox"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    if-nez v3, :cond_8

    .line 4445
    const/4 v3, 0x1

    .line 4446
    const-string v9, "com.sec.knox.moveto.name"

    const-string v10, "Knox"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4447
    const-string v9, "com.sec.knox.moveto.containerType"

    sget v10, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4448
    const-string v9, "com.sec.knox.moveto.containerId"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 4450
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 4458
    .end local v1    # "i":I
    .end local v4    # "item":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-static {v9}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4461
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4463
    .restart local v4    # "item":Landroid/os/Bundle;
    const-string v9, "com.sec.knox.moveto.name"

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v10

    invoke-virtual {v5, v10, p1}, Landroid/os/PersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4465
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-static {v9}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4466
    const-string v9, "com.sec.knox.moveto.containerType"

    sget v10, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4471
    :goto_5
    const-string v9, "com.sec.knox.moveto.containerId"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4473
    const-string/jumbo v9, "move-file-to-owner"

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v11

    invoke-static {p1, v9, v10, v11}, Landroid/os/PersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4474
    const-string/jumbo v2, "true"

    .line 4478
    :goto_6
    const-string v9, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4469
    :cond_a
    const-string v9, "com.sec.knox.moveto.containerType"

    sget v10, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 4476
    :cond_b
    const-string v2, "false"

    goto :goto_6
.end method

.method public getMoveToKnoxStatus()Z
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 772
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getMoveToKnoxStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 777
    :goto_0
    return v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNonSecureAppList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4205
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4207
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getNonSecureAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4212
    :goto_0
    return-object v1

    .line 4208
    :catch_0
    move-exception v0

    .line 4209
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getNonSecureAppList from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4212
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNormalizedState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 958
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 960
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 965
    :goto_0
    return v1

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 4150
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4152
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4157
    :goto_0
    return-object v1

    .line 4153
    :catch_0
    move-exception v0

    .line 4154
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackageInfo from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4157
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2444
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2446
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2451
    :goto_0
    return-object v1

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2451
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentId(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 757
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getParentId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getParentUserForCurrentPersona()I
    .locals 3

    .prologue
    .line 715
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 717
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 722
    :goto_0
    return v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2456
    const/4 v1, 0x0

    .line 2457
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2459
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2465
    :cond_0
    :goto_0
    return-object v1

    .line 2461
    :catch_0
    move-exception v0

    .line 2462
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1984
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1986
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1991
    :goto_0
    return-wide v2

    .line 1987
    :catch_0
    move-exception v0

    .line 1988
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getPersonaBackgroundTime , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1991
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 867
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 869
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 874
    :goto_0
    return-object v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2003
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2005
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2011
    :goto_0
    return-object v1

    .line 2007
    :catch_0
    move-exception v0

    .line 2008
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIds()[I
    .locals 3

    .prologue
    .line 2192
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2194
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPersonaIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2199
    :goto_0
    return-object v1

    .line 2195
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2199
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 745
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 747
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 752
    :goto_0
    return-object v1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 831
    :goto_0
    return-object v1

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1008
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 1011
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    .line 1015
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 804
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 806
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    :goto_0
    return-object v1

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 691
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 696
    :goto_0
    return-object v1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 732
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 3
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 886
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 891
    :goto_0
    return-object v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 705
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 710
    :goto_0
    return-object v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    .line 1064
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 1066
    .local v1, "rcpm":Landroid/os/RCPManager;
    const/4 v0, 0x0

    .line 1067
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_0

    .line 1068
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 1069
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 1073
    :goto_0
    return-object v2

    .line 1072
    :cond_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScreenOffTime(I)J
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 2345
    const-wide/16 v2, 0x1388

    .line 2346
    .local v2, "screenOffTime":J
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2348
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getScreenOffTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    :cond_0
    :goto_0
    return-wide v2

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStateManager(I)Landroid/os/PersonaManager$StateManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3315
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "getStateManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    new-instance v0, Landroid/os/PersonaManager$StateManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/PersonaManager$StateManager;-><init>(Landroid/content/Context;Landroid/os/IPersonaManager;ILandroid/os/PersonaManager$1;)V

    return-object v0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 4
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2081
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2083
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2089
    :goto_0
    return-object v1

    .line 2085
    :catch_0
    move-exception v0

    .line 2086
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2089
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    .line 2124
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->handleHomeShow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2129
    :goto_0
    return v1

    .line 2126
    :catch_0
    move-exception v0

    .line 2127
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2129
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hideScrim()V
    .locals 3

    .prologue
    .line 2720
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2722
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->hideScrim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to hideScrim()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 982
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 984
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 990
    :goto_0
    return v1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isECContainer(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4317
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4319
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isECContainer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4324
    :goto_0
    return v1

    .line 4320
    :catch_0
    move-exception v0

    .line 4321
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4324
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabledFingerprintIndex(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 3973
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3975
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isEnabledFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isEnabledFingerprintIndex(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3981
    :goto_0
    return v1

    .line 3977
    :catch_0
    move-exception v0

    .line 3978
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isEnabledFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3981
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExternalStorageEnabled(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4490
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4492
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isExternalStorageEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4497
    :goto_0
    return v1

    .line 4493
    :catch_0
    move-exception v0

    .line 4494
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4497
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFOTAUpgrade()Z
    .locals 3

    .prologue
    .line 665
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 667
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->isFOTAUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get FOTAUpgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFingerLockscreenActivated()Z
    .locals 4

    .prologue
    .line 3270
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3272
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFingerLockscreenActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->isFingerLockscreenActivated(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3278
    :goto_0
    return v1

    .line 3274
    :catch_0
    move-exception v0

    .line 3275
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3278
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFingerSupplementActivated()Z
    .locals 4

    .prologue
    .line 3253
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3255
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFingerSupplementActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->isFingerSupplementActivated(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3261
    :goto_0
    return v1

    .line 3257
    :catch_0
    move-exception v0

    .line 3258
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3261
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .locals 3

    .prologue
    .line 4227
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4229
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->isFotaUpgradeVersionChanged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4234
    :goto_0
    return v1

    .line 4230
    :catch_0
    move-exception v0

    .line 4231
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get isFotaUpgradeVersionChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4234
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 15
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1910
    const/4 v7, 0x0

    .line 1912
    .local v7, "isApprovedPackages":Z
    if-eqz p3, :cond_0

    const-string v12, ""

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "null"

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1913
    :cond_0
    const/4 v12, 0x0

    .line 1979
    :goto_0
    return v12

    .line 1916
    :cond_1
    invoke-virtual {p0}, Landroid/os/PersonaManager;->isUserManaged()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1917
    const/4 v12, 0x0

    goto :goto_0

    .line 1921
    :cond_2
    sget-object v3, Landroid/os/PersonaManager;->excludedPackages:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v9, :cond_4

    aget-object v10, v3, v6

    .line 1922
    .local v10, "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1923
    const/4 v12, 0x0

    goto :goto_0

    .line 1921
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1927
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-static {}, Landroid/os/PersonaManager;->isSecBrandAsGalaxy()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1928
    sget-object v3, Landroid/os/PersonaManager;->excludedPackagesForJPN:[Ljava/lang/String;

    array-length v9, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    aget-object v10, v3, v6

    .line 1929
    .restart local v10    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1930
    const/4 v12, 0x0

    goto :goto_0

    .line 1928
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1935
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_6
    sget-object v3, Landroid/os/PersonaManager;->mdmPackages:[Ljava/lang/String;

    array-length v9, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_8

    aget-object v10, v3, v6

    .line 1936
    .restart local v10    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1937
    const/4 v12, 0x0

    goto :goto_0

    .line 1935
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1942
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_8
    sget-object v3, Landroid/os/PersonaManager;->approvedPackages:[Ljava/lang/String;

    array-length v9, v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_a

    aget-object v10, v3, v6

    .line 1943
    .restart local v10    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1944
    const/4 v7, 0x1

    .line 1942
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1950
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_a
    if-nez v7, :cond_f

    .line 1951
    const/4 v2, 0x0

    .line 1953
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1954
    if-nez v2, :cond_b

    .line 1955
    const/4 v12, 0x0

    goto :goto_0

    .line 1956
    :cond_b
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1957
    .local v4, "b":Landroid/os/Bundle;
    if-eqz v4, :cond_c

    const-string v12, "com.samsung.android.multiuser.install_only_owner"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1958
    .local v8, "isOnlyForOwner":Z
    :goto_5
    if-eqz v4, :cond_d

    if-eqz v8, :cond_d

    .line 1959
    sget-object v12, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isOnlyForOwner() true - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1957
    .end local v8    # "isOnlyForOwner":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    .line 1962
    .end local v4    # "b":Landroid/os/Bundle;
    :catch_0
    move-exception v5

    .line 1963
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1966
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v8    # "isOnlyForOwner":Z
    :cond_d
    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-eq v12, v13, :cond_e

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v12, v12, 0x80

    const/16 v13, 0x80

    if-ne v12, v13, :cond_f

    .line 1968
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1972
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v8    # "isOnlyForOwner":Z
    :cond_f
    iget-object v12, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v12, :cond_10

    .line 1974
    :try_start_1
    iget-object v12, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v12, v0, v1}, Landroid/os/IPersonaManager;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    goto/16 :goto_0

    .line 1975
    :catch_1
    move-exception v11

    .line 1976
    .local v11, "re":Landroid/os/RemoteException;
    sget-object v12, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v13, "Could not get isPossibleAddAppsToContainer , inside PersonaManager with exception:"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 6

    .prologue
    .line 2526
    const/4 v2, 0x0

    .line 2527
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 2529
    :try_start_0
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2530
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 2531
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2532
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2539
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2534
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2535
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2536
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 2506
    const/4 v2, 0x0

    .line 2507
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 2509
    :try_start_0
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2510
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 2511
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isKioskModeEnabled  persona "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 2513
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 2520
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2513
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2515
    :cond_2
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4, p1}, Landroid/os/IPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 2516
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2517
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskModeEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKnoxKeyguardShown(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 2678
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2680
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isKnoxKeyguardShown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2685
    :goto_0
    return v1

    .line 2681
    :catch_0
    move-exception v0

    .line 2682
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isKnoxKeyguardShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2685
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKnoxMultiWindowExist()Z
    .locals 3

    .prologue
    .line 4357
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4359
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->isKnoxMultiWindowExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4364
    :goto_0
    return v1

    .line 4360
    :catch_0
    move-exception v0

    .line 4361
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4364
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNFCAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3921
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersonaManager;->isNFCAllowed(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isNFCAllowed(ILandroid/content/Intent;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3934
    if-eqz p2, :cond_1

    .line 3935
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 3936
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3937
    iget-object v0, p0, Landroid/os/PersonaManager;->NFCblackList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 3938
    .local v3, "intentData":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3939
    sget-object v6, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "NFC action is in blacklist. return false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const/4 v6, 0x0

    .line 3953
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intentData":Ljava/lang/String;
    .end local v4    # "len$":I
    :goto_1
    return v6

    .line 3937
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intentData":Ljava/lang/String;
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3945
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intentData":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    iget-object v6, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v6, :cond_2

    .line 3947
    :try_start_0
    sget-object v6, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isNFCAllowed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    iget-object v6, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v6, p1}, Landroid/os/IPersonaManager;->isNFCAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 3949
    :catch_0
    move-exception v5

    .line 3950
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v6, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to isNFCAllowed from PMS"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3953
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2428
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2430
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2435
    :goto_0
    return v1

    .line 2431
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2435
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPersonaActivated()Z
    .locals 8

    .prologue
    .line 915
    const/4 v2, 0x0

    .line 917
    .local v2, "isKnoxActive":Z
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 919
    .local v5, "personaIds":[I
    if-eqz v5, :cond_1

    .line 920
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 922
    .local v4, "personaId":I
    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 925
    :cond_0
    const/4 v2, 0x1

    .line 931
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "personaId":I
    :cond_1
    return v2

    .line 920
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "personaId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isResetPersonaOnRebootEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2609
    const/4 v1, 0x0

    .line 2610
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2612
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isResetPersonaOnRebootEnabled  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2618
    :cond_0
    :goto_0
    return v1

    .line 2614
    :catch_0
    move-exception v0

    .line 2615
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to isResetPersonaOnRebootEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSessionExpired(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2106
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2108
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isSessionExpired(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2114
    :goto_0
    return v1

    .line 2110
    :catch_0
    move-exception v0

    .line 2111
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2114
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUserManaged()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4259
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4260
    .local v0, "secureFoldervalue":Ljava/lang/String;
    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string/jumbo v2, "securefolder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/os/PersonaManager;->isShopdemo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4264
    :cond_0
    :goto_0
    return v1

    .line 4262
    :cond_1
    const-string v2, "2"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-direct {p0}, Landroid/os/PersonaManager;->isShopdemo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4263
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchPersonaHome(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 641
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->launchPersonaHome(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 648
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to profile user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockPersona(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2094
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2096
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->lockPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 2055
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2057
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "dstPath"    # Ljava/lang/String;
    .param p4, "excludeMediaTypes"    # I
    .param p5, "containerId"    # I

    .prologue
    .line 3474
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 3476
    :try_start_0
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mountOldContainer, pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3482
    :goto_0
    return v0

    .line 3478
    :catch_0
    move-exception v6

    .line 3479
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "can\'t mount Knox 1.0 partition from PMS"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3482
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToSkipResetOnReboot()Z
    .locals 3

    .prologue
    .line 677
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 679
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->needToSkipResetOnReboot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 684
    :goto_0
    return v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get needToSkipResetOnReboot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 2661
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2663
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2665
    :catch_0
    move-exception v0

    .line 2666
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyguardBackPressed(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 3458
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3460
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyguardBackPressed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->onKeyguardBackPressed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3466
    :cond_0
    :goto_0
    return-void

    .line 3462
    :catch_0
    move-exception v0

    .line 3463
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to onKeyguardBackPressed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 7
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2380
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 2382
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2383
    :catch_0
    move-exception v6

    .line 2384
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshTimer(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2358
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2360
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->refreshTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2365
    :cond_0
    :goto_0
    return-void

    .line 2361
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    .locals 3
    .param p1, "mKnoxModeChangeObserver"    # Landroid/content/pm/IKnoxModeChangeObserver;

    .prologue
    .line 603
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerKnoxModeChangeObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 591
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 553
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 555
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in PersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    :goto_0
    return v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 2240
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2242
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2247
    :cond_0
    :goto_0
    return-void

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeKnoxAppsinFota(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 4239
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4241
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removeKnoxAppsinFota(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4246
    :cond_0
    :goto_0
    return-void

    .line 4242
    :catch_0
    move-exception v0

    .line 4243
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not removeKnoxAppsinFota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 2289
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2291
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 653
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removePersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 660
    :goto_0
    return v1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x4b1

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2303
    const/4 v1, 0x0

    .line 2304
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2306
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2311
    :cond_0
    :goto_0
    return v1

    .line 2307
    :catch_0
    move-exception v0

    .line 2308
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 970
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 972
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->resetPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 977
    :goto_0
    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2565
    const/4 v1, 0x0

    .line 2566
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2568
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2574
    :cond_0
    :goto_0
    return v1

    .line 2570
    :catch_0
    move-exception v0

    .line 2571
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersonaPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "pwdResetToken"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 4032
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4034
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetPersonaPassword for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4041
    :cond_0
    :goto_0
    return-void

    .line 4036
    :catch_0
    move-exception v0

    .line 4037
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to resetPersonaPassword from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2321
    const/4 v1, 0x0

    .line 2322
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2324
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2329
    :cond_0
    :goto_0
    return v1

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccessPermission(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "canAccess"    # Z

    .prologue
    .line 2754
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2756
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAccessPermission for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canAccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2762
    :cond_0
    :goto_0
    return-void

    .line 2758
    :catch_0
    move-exception v0

    .line 2759
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setAccessPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackPressed(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 2550
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2552
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setBackPressed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2557
    :cond_0
    :goto_0
    return-void

    .line 2553
    :catch_0
    move-exception v0

    .line 2554
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFidoRpContext(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "rpContext"    # Ljava/lang/String;

    .prologue
    .line 3091
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3093
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFidoRpContext(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3099
    :cond_0
    :goto_0
    return-void

    .line 3095
    :catch_0
    move-exception v0

    .line 3096
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setFidoRpContext from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerCount(I)V
    .locals 3
    .param p1, "setFingerCount"    # I

    .prologue
    .line 3188
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3190
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setFingerCount(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3196
    :cond_0
    :goto_0
    return-void

    .line 3192
    :catch_0
    move-exception v0

    .line 3193
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerprintHash(ILjava/util/List;)V
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4001
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4003
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerprintHash"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFingerprintHash(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4009
    :cond_0
    :goto_0
    return-void

    .line 4005
    :catch_0
    move-exception v0

    .line 4006
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setFingerprintHash from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerprintIndex(IZ[I)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z
    .param p3, "list"    # [I

    .prologue
    .line 3960
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3962
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerprintIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setFingerprintIndex(IZ[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3968
    :cond_0
    :goto_0
    return-void

    .line 3964
    :catch_0
    move-exception v0

    .line 3965
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setFingerprintIndex from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFocusedUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3236
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3238
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedUser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setFocusedUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    :cond_0
    :goto_0
    return-void

    .line 3240
    :catch_0
    move-exception v0

    .line 3241
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFocusedUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFsMountState(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 936
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 938
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFsMountState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsAdminLockedJustBefore(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isAdminLockedJustBefore"    # Z

    .prologue
    .line 3123
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3125
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsAdminLockedJustBefore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsAdminLockedJustBefore(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3131
    :cond_0
    :goto_0
    return-void

    .line 3127
    :catch_0
    move-exception v0

    .line 3128
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsAdminLockedJustBefore from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerAsSupplement(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z

    .prologue
    .line 2830
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2832
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerAsSupplement(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2838
    :cond_0
    :goto_0
    return-void

    .line 2834
    :catch_0
    move-exception v0

    .line 2835
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 3
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 3156
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3158
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setIsFingerIdentifyFailed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3164
    :cond_0
    :goto_0
    return-void

    .line 3160
    :catch_0
    move-exception v0

    .line 3161
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerReset(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerReset"    # Z

    .prologue
    .line 3024
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3026
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerReset(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 3028
    :catch_0
    move-exception v0

    .line 3029
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerTimeout(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerTimeout"    # Z

    .prologue
    .line 2960
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2962
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerTimeout(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsIrisReset(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isIrisReset"    # Z

    .prologue
    .line 3056
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3058
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsIrisReset(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3064
    :cond_0
    :goto_0
    return-void

    .line 3060
    :catch_0
    move-exception v0

    .line 3061
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsBioReset from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsIrisTimeout(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isIrisTimeout"    # Z

    .prologue
    .line 2992
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2994
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsBioTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsIrisTimeout(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2996
    :catch_0
    move-exception v0

    .line 2997
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsBioTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsQuickAccessUIEnabled(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isUnlockBefore"    # Z

    .prologue
    .line 2927
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2929
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsQuickAccessUIEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsQuickAccessUIEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2935
    :cond_0
    :goto_0
    return-void

    .line 2931
    :catch_0
    move-exception v0

    .line 2932
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsQuickAccessUIEnabled from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsUnlockedAfterTurnOn(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isUnlockBefore"    # Z

    .prologue
    .line 2894
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2896
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsUnlockedAfterTurnOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsUnlockedAfterTurnOn(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    :cond_0
    :goto_0
    return-void

    .line 2898
    :catch_0
    move-exception v0

    .line 2899
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsUnlockedAfterTurnOn from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKnoxBackupPin(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 3527
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3529
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setKnoxBackupPin(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3535
    :cond_0
    :goto_0
    return-void

    .line 3531
    :catch_0
    move-exception v0

    .line 3532
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to verifyKnoxBackupPin from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKnoxSecurityTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 3432
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PersonaManager;->setKnoxSecurityTimeout(II)V

    .line 3433
    return-void
.end method

.method public setKnoxSecurityTimeout(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 3442
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3444
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setKnoxSecurityTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setKnoxSecurityTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3450
    :cond_0
    :goto_0
    return-void

    .line 3446
    :catch_0
    move-exception v0

    .line 3447
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setKnoxSecurityTimeout from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLastKeyguardUnlockTime(IJ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lastKeyguardUnlockTime"    # J

    .prologue
    .line 2862
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2864
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setLastKeyguardUnlockTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setLastKeyguardUnlockTime(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2870
    :cond_0
    :goto_0
    return-void

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setLastKeyguardUnlockTime from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 2334
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2336
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    :cond_0
    :goto_0
    return-void

    .line 2337
    :catch_0
    move-exception v0

    .line 2338
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMoveToKnoxStatus(Z)V
    .locals 3
    .param p1, "isProgressing"    # Z

    .prologue
    .line 782
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 784
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setMoveToKnoxStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 851
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 853
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 793
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 838
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 816
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 818
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShownHelp(IIZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I
    .param p3, "value"    # Z

    .prologue
    .line 2785
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2787
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShownHelp for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setShownHelp(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2789
    :catch_0
    move-exception v0

    .line 2790
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setShownHelp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public settingSyncAllowed(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2204
    const/4 v1, 0x0

    .line 2205
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2207
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->settingSyncAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2212
    :cond_0
    :goto_0
    return v1

    .line 2208
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setupComplete(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 4045
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 4047
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setupComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setupComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4053
    :cond_0
    :goto_0
    return-void

    .line 4049
    :catch_0
    move-exception v0

    .line 4050
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setupComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showKeyguard(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2629
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2631
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->showKeyguard(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2636
    :cond_0
    :goto_0
    return-void

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not showKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 631
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 994
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 995
    .local v1, "result":I
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 997
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in PersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1003
    :cond_0
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmarkForRemoval(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 2068
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2070
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmarkForRemoval(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    :cond_0
    :goto_0
    return-void

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmountOldContainer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 3491
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3493
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmountOldContainer, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmountOldContainer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3499
    :goto_0
    return v1

    .line 3495
    :catch_0
    move-exception v0

    .line 3496
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t unmount Knox 1.0 partition from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3499
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I

    .prologue
    .line 2591
    const/4 v1, 0x0

    .line 2592
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 2594
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IPersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2600
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePersonaInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    return v1

    .line 2596
    :catch_0
    move-exception v0

    .line 2597
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to updatePersonaInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public userActivity(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 2369
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2371
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->userActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    :cond_0
    :goto_0
    return-void

    .line 2372
    :catch_0
    move-exception v0

    .line 2373
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public verifyKnoxBackupPin(ILjava/lang/String;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "backupPin"    # Ljava/lang/String;

    .prologue
    .line 3510
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 3512
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verifyKnoxBackupPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->verifyKnoxBackupPin(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3518
    :goto_0
    return v1

    .line 3514
    :catch_0
    move-exception v0

    .line 3515
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t verify Knox Backup Pin from PMS. return default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3518
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
