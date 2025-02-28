.class public Lcom/samsung/android/server/wifi/WifiDefaultApController;
.super Ljava/lang/Object;
.source "WifiDefaultApController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;
    }
.end annotation


# static fields
.field private static final ACTION_CSC_WIFI_DEFAULTAP_DONE:Ljava/lang/String; = "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

.field private static final ACTION_CSC_WIFI_GENERALINFO_DONE:Ljava/lang/String; = "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

.field private static final ACTION_OTA_SET_WIFI_PROPILE:Ljava/lang/String; = "com.samsung.android.intent.action.SET_WIFI"

.field private static final CONFIG_PRIORITY_AP:Ljava/lang/String;

.field private static DBG:Z = false

.field private static final ENABLE_SPNAME:Z

.field private static final REMOVABLE_DEFAULT_AP:Z

.field private static final TAG:Ljava/lang/String; = "WifiDefaultApController"

.field private static mAddedWifiProfile:Ljava/lang/String;

.field public static mFirstScanAddProfile:Z

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mOTACount:I

.field private static mRemoveWifiProfile:Z

.field private static mRemovedDefaultAp:Z

.field public static mWifiProfileLoaded:Z

.field private static mfilePathCscUpdateDoneCheck:Ljava/io/File;

.field private static mfilePathDefaultAp:Ljava/io/File;

.field private static mfilePathDefaultApCheck:Ljava/io/File;

.field private static mfilePathDefaultApInSystem:Ljava/io/File;

.field private static mfilePathGeneralNwInfo:Ljava/io/File;

.field private static mfilePathPrevNwInfo:Ljava/io/File;

.field private static mflagBootCompleted:Z

.field private static mflagCscUpdateDoneChecked:Z

.field private static mflagForGotVendorAp:Z

.field private static mflagForNWNameCreate:Z


# instance fields
.field private final CRED_DOWNLOAD_PATH:Ljava/lang/String;

.field private final CSC_CRED_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultApEapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApIdentityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApKeymgmtLIst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPasswordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPhaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApPskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApSpnameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApSsidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultApWepkeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoMccmncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralNwInfoSpnameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceName:Ljava/lang/String;

.field private mPrevNetworknameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

.field private mWifiService:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfileLoaded:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mFirstScanAddProfile:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagBootCompleted:Z

    sput-boolean v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagCscUpdateDoneChecked:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mAddedWifiProfile:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_SupportProfileSimProviderName"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigPriorAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->CONFIG_PRIORITY_AP:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.check"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/need_remove_profile.check"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathCscUpdateDoneCheck:Ljava/io/File;

    sput v1, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mOTACount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/misc/wifi/"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->CRED_DOWNLOAD_PATH:Ljava/lang/String;

    const-string v0, "cred.conf"

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->CSC_CRED_NAME:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    new-instance v0, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;Lcom/samsung/android/server/wifi/WifiDefaultApController$1;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const-string v0, "wifi.interface"

    const-string v1, "wlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$1;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$2;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$3;-><init>(Lcom/samsung/android/server/wifi/WifiDefaultApController;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApCheck:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathPrevNwInfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagCscUpdateDoneChecked:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagCscUpdateDoneChecked:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mPrevNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$2300()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    return v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForNWNameCreate:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    return v0
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mRemovedDefaultAp:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mflagForGotVendorAp:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/WifiDefaultApController;)Lcom/android/server/wifi/WifiServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiDefaultApController;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiService:Lcom/android/server/wifi/WifiServiceImpl;

    return-object v0
.end method

.method static synthetic access$800()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathCscUpdateDoneCheck:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->REMOVABLE_DEFAULT_AP:Z

    return v0
.end method


# virtual methods
.method public addVendorNetworkafterFactoryReset()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .local v6, "simState_int":I
    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addVendorNetworkafterFactoryReset : sim state not ready ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "simState_int":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultApInSystem:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset : clearDefaultApList and then reset DefaultApList from system."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const-string v9, "/system/etc/wifi/default_ap.conf"

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    if-nez v8, :cond_4

    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset - mDefaultApSsidList is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset : clearDefaultApList and then reset DefaultApList from data."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiDefaultApController;->clearDefaultApList()V

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    const-string v9, "/data/misc/wifi/default_ap.conf"

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset : defaut_ap.conf does not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "networkCount":I
    const/4 v0, 0x0

    .local v0, "addedNetworkCount":I
    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mfilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "existGeneralinfoFile":Z
    sget-boolean v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "WifiDefaultApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addVendorNetworkafterFactoryReset: mDefaultAp networkCount("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_9

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "networkname":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "spname":Ljava/lang/String;
    if-eqz v2, :cond_8

    sget-boolean v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->ENABLE_SPNAME:Z

    if-eqz v8, :cond_7

    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    sget-object v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mMatchedNetworkName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->addWifiVendorProfile(I)Z
    invoke-static {v8, v3}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$4500(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;I)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v5    # "networkname":Ljava/lang/String;
    .end local v7    # "spname":Ljava/lang/String;
    :cond_9
    if-ne v4, v0, :cond_0

    sget-boolean v8, Lcom/samsung/android/server/wifi/WifiDefaultApController;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiDefaultApController"

    const-string v9, "addVendorNetworkafterFactoryReset: defaultAp addition success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public clearDefaultApList()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApWepkeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApEapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApIdentityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPasswordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPhaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApPskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApHiddenSsidScanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearGeneralNwInfoList()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoMccmncList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoNetworknameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mGeneralNwInfoSpnameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultApKeymgmtList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApKeymgmtLIst:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultApSsidList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mWifiProfile:Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;

    # invokes: Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->getVendorApInfo()V
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;->access$400(Lcom/samsung/android/server/wifi/WifiDefaultApController$WifiProfile;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiDefaultApController;->mDefaultApSsidList:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
