.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final AP_CONNECTED:I = 0x5

.field private static final AUSHARE_GO_INTENT:I = 0x5

.field private static final BROKER_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DEFAULT_GO_INTENT:I = 0xd

.field private static final DEFAULT_SCAN_CHANNEL:I = 0x64b

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field private static final EXTRA_INFO_TYPE:Ljava/lang/String; = "info_type"

.field private static final FULLSCAN_TIME_DELAY_MILLIS:I = 0x3e8

.field private static final INFO_TYPE_DPM_WIFI:I = 0x2

.field private static final KDDI_SOURCE_CONNECT_SUCCESS_ACTION:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

.field private static final KDDI_SOURCE_DISCONNECT_SUCCESS_ACTION:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final POPUP_CAUSE_OXYGEN_NETWORK_ENABLED:I = 0x22090

.field private static final RESTART_SCANNING_TIME_MILLIS:I = 0x32

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final SCANNING_TIME_MILLIS:I = 0x2710

.field private static final SCAN_MAX_RETRIES:I = 0x0

.field private static final SIDESYNC_CLOSING_TIME_MILLIS:I = 0x2ee

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"


# instance fields
.field private configDisconnect:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectState:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectByUser:Z

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private mDongleUpdateOnGoing:Z

.field private mDongleUpdateResult:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mFullScanTimer:Ljava/lang/Runnable;

.field private mFullScanningInProgress:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsBootCompleted:Z

.field private mKDDIServiceConnected:Z

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mP2pClientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPartialScanningInProgress:Z

.field private mPinRequired:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private mRemoteIP:Ljava/lang/String;

.field private mRequestPendingSetup:Z

.field private mRequestedScanChannel:I

.field private mRestartTriggered:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private mScanRequestedInConnected:Z

.field private final mSupportsProtectedBuffers:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mUpdateURL:Ljava/lang/String;

.field private mWaitForAction:Z

.field private final mWaitTillBrokerClosed:Ljava/lang/Runnable;

.field private final mWaitTillSideSyncClosed:Ljava/lang/Runnable;

.field private mWfdConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWfdFrequency:I

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pConnected:Z

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pPrevState:Z

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

.field private mZeroSettingsConcept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mKDDIServiceConnected:Z

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 262
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 277
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectState:I

    .line 285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mP2pClientsList:Ljava/util/ArrayList;

    .line 287
    const/16 v3, 0x64b

    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    .line 2268
    new-instance v3, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 2276
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWaitTillBrokerClosed:Ljava/lang/Runnable;

    .line 2283
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mFullScanTimer:Ljava/lang/Runnable;

    .line 2311
    iput-object v6, p0, Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;

    .line 2320
    new-instance v3, Lcom/android/server/display/WifiDisplayController$28;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 2332
    new-instance v3, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 2542
    new-instance v3, Lcom/android/server/display/WifiDisplayController$32;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$32;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 296
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 297
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 299
    const-string/jumbo v3, "wifip2p"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 300
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 339
    new-instance v2, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 346
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 397
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    const-string/jumbo v3, "wifi_display_certification_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    const-string/jumbo v3, "wifi_display_wps_config"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 428
    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayController;->mSupportsProtectedBuffers:Z

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "x2"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$3220(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 14
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    .line 2377
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_1

    .line 2382
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2383
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2384
    .local v3, "oldSurface":Landroid/view/Surface;
    iget v7, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 2385
    .local v7, "oldDisplayWidth":I
    iget v8, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 2387
    .local v8, "oldDisplayHeight":I
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 2388
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 2389
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 2390
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 2391
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 2393
    iget-boolean v9, p0, Lcom/android/server/display/WifiDisplayController;->mRequestPendingSetup:Z

    .line 2395
    .local v9, "requestPendingSetup":Z
    iget-object v13, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$31;

    move-object v2, p0

    move-object/from16 v4, p2

    move-object v6, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIZIII)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2448
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v7    # "oldDisplayWidth":I
    .end local v8    # "oldDisplayHeight":I
    .end local v9    # "requestPendingSetup":Z
    :cond_1
    return-void
.end method

.method private computeFeatureState()I
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x1

    .line 1180
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1435
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_3

    .line 1436
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1454
    :cond_3
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1455
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 1456
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    goto :goto_0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2537
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2522
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2526
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method private disconnect()V
    .locals 1

    .prologue
    .line 1479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1480
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1482
    return-void
.end method

.method private getCPUPowerSavingMode()I
    .locals 1

    .prologue
    .line 885
    const/4 v0, -0x1

    return v0
.end method

.method private getChangedClientDevice(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 2807
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 6
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v5, 0x0

    .line 2463
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2486
    .local v1, "iface":Ljava/net/NetworkInterface;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain address of network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because it had no IPv4 addresses."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 2464
    :catch_0
    move-exception v0

    .line 2465
    .local v0, "ex":Ljava/net/SocketException;
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain address of network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2492
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2495
    const/16 v0, 0x216a

    .line 2497
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c44

    goto :goto_0
.end method

.method private getPowerSavingMode()I
    .locals 1

    .prologue
    .line 862
    const/4 v0, -0x1

    return v0
.end method

.method private getScreenSharingConnectedMode()I
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method private getScreenSharingMode()I
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    .prologue
    .line 2028
    if-nez p1, :cond_0

    .line 2029
    const/4 v0, 0x0

    .line 2041
    :goto_0
    return-object v0

    .line 2031
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 2032
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    goto :goto_0

    .line 2032
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v5, ""

    goto :goto_2
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 2179
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2180
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_1

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 2266
    :cond_1
    :goto_0
    return-void

    .line 2255
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_4

    .line 2256
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 2262
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_1

    .line 2263
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    goto :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 5
    .param p1, "timeoutOccurred"    # Z

    .prologue
    .line 2347
    const-string v1, "WifiDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    .line 2350
    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v1, :cond_2

    .line 2351
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2352
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2373
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    .line 2352
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const-wide/16 v2, 0x1f4

    goto :goto_0

    .line 2370
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_1
.end method

.method private handlePeersChanged()V
    .locals 0

    .prologue
    .line 2113
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 2114
    return-void
.end method

.method private handleScanFinished()V
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1395
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    .prologue
    .line 1370
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1371
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    .line 1372
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1373
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1374
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1377
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1372
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v5, p0, v2}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1386
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1367
    return-void
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2097
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 2106
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 2108
    return-void
.end method

.method private isAuSLServiceRunning()Z
    .locals 6

    .prologue
    .line 1024
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1027
    .local v1, "am":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 1028
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1029
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, "className":Ljava/lang/String;
    const-string v4, "com.sec.kddi.ausharelink.service"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const-string v4, "WifiDisplayController"

    const-string/jumbo v5, "isAuSLServiceRunning"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v4, 0x1

    .line 1036
    .end local v2    # "className":Ljava/lang/String;
    :goto_1
    return v4

    .line 1028
    .restart local v2    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isHotspotOn()Z
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x0

    return v0
.end method

.method private isP2pConnected()Z
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .param p0, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 2517
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSideSyncAppRunning()Z
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method private isSideSyncConnected()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2510
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiIbssEnabled()Z
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 2092
    const/4 v0, 0x0

    return-object v0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 2455
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2458
    return-void
.end method

.method private reportFeatureState()V
    .locals 3

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 1168
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1174
    return-void
.end method

.method private requestPeers()V
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1358
    return-void
.end method

.method private requestPopup(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 618
    return-void
.end method

.method private requestScreenMirroringEnable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 644
    return-void
.end method

.method private retryConnection()V
    .locals 2

    .prologue
    .line 1503
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1504
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1505
    return-void
.end method

.method private setUDP(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1485
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1488
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1493
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 1494
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1495
    const/4 v1, 0x0

    .line 1496
    return-void

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "WifiDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPeerDiscovery()V
    .locals 3

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1326
    return-void
.end method

.method private tryDiscoverPeers()V
    .locals 4

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1295
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1297
    return-void
.end method

.method private unadvertiseDisplay()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2451
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2452
    return-void
.end method

.method private updateConnection()V
    .locals 18

    .prologue
    .line 1519
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_1

    .line 1525
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopped listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_0

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2}, Landroid/media/RemoteDisplay;->dispose()V

    .line 1547
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1559
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_3

    .line 2025
    :cond_2
    :goto_0
    return-void

    .line 1567
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_5

    .line 1568
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1573
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1575
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1581
    .local v14, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->configDisconnect:Landroid/net/wifi/p2p/WifiP2pConfig;

    new-instance v6, Lcom/android/server/display/WifiDisplayController$16;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 1611
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1645
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_2

    .line 1653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v2, v4, :cond_6

    .line 1654
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling connection to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1658
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1665
    .restart local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1700
    .end local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_8

    .line 1701
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_7

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 1704
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    goto/16 :goto_0

    .line 1709
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v2, :cond_c

    .line 1710
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1719
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1720
    .local v9, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v17, Landroid/net/wifi/WpsInfo;

    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 1722
    .local v17, "wps":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    .line 1723
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1732
    :goto_1
    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1735
    const/4 v2, 0x0

    iput v2, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 1739
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1742
    .local v13, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/WifiDisplayController;->configDisconnect:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/server/display/WifiDisplayController$19;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v4, v9, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 1724
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v13    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1725
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 1726
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1728
    const/4 v2, 0x2

    move-object/from16 v0, v17

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 1730
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 1778
    .end local v9    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v17    # "wps":Landroid/net/wifi/WpsInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v2, :cond_2

    .line 1779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v8

    .line 1780
    .local v8, "addr":Ljava/net/Inet4Address;
    if-nez v8, :cond_d

    .line 1781
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    goto/16 :goto_0

    .line 1787
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1790
    .restart local v14    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v15

    .line 1791
    .local v15, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1792
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 1794
    const-string v2, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Listening for RTSP connection on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v11, 0x0

    .line 1887
    .local v11, "initParam":Lorg/json/JSONObject;
    new-instance v12, Lcom/android/server/display/WifiDisplayController$21;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2016
    .local v12, "listener":Landroid/media/RemoteDisplay$Listener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v12, v2, v4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 2020
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_e

    const/16 v16, 0x78

    .line 2023
    .local v16, "rtspTimeout":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2020
    .end local v16    # "rtspTimeout":I
    :cond_e
    const/16 v16, 0x1e

    goto :goto_2
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1400
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1401
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1407
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 1412
    :cond_0
    return-void
.end method

.method private updateScanState()V
    .locals 3

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    .line 1191
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_0

    .line 1192
    const-string v0, "WifiDisplayController"

    const-string v1, "Starting Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 1194
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 1195
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    .line 1233
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v1, :cond_2

    .line 1221
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDesiredDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_0

    .line 1225
    :cond_3
    const-string v0, "WifiDisplayController"

    const-string v1, "Stopping Wifi display scan."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 1227
    const/16 v0, 0x64b

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mRequestedScanChannel:I

    .line 1228
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 1229
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 451
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 457
    .local v1, "turningWifiDisplayOn":Z
    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 461
    const-string/jumbo v2, "wifi_display_certification_on"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 464
    iput v5, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 465
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_0

    .line 466
    const-string/jumbo v2, "wifi_display_wps_config"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 580
    return-void

    :cond_1
    move v2, v4

    .line 457
    goto :goto_0

    :cond_2
    move v3, v4

    .line 461
    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1080
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_1

    .line 1082
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v1, :cond_0

    .line 1083
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 1089
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 1090
    .local v0, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1091
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 1092
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 1097
    const/16 v1, 0x1c44

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 1098
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1164
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v1, :cond_3

    .line 1129
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 1130
    .restart local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 1131
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1153
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 1154
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 1155
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 1156
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 1162
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    goto :goto_0
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2880
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiDisplayOnSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiP2pEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWfdEnabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScanRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDiscoverPeersInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDesiredDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDisconnectingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCancelingDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectedDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mConnectionRetriesLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayInterface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteDisplayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplaySurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAdvertisedDisplayFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 718
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 720
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public isConnWithPinSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method public isKDDIServiceConnected()Z
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 929
    const/4 v0, 0x0

    return v0
.end method

.method public notifyEnterHomeSyncApp()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public renameDongle(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 1044
    return-void
.end method

.method public requestClearConnectedDisplayInfo()V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method public requestConnect(ILjava/lang/String;)V
    .locals 0
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 774
    return-void
.end method

.method public requestConnect(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "connectingMode"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isPendingRequest"    # Z

    .prologue
    .line 788
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 754
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 761
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method public requestConnectWithPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2820
    return-void
.end method

.method public requestDisableWiFiP2P()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public requestDisconnect()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1077
    return-void
.end method

.method public requestPause()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 1061
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 1070
    :cond_0
    return-void
.end method

.method public requestSaveConnectedDisplayInfo()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method

.method public requestStartScan()V
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_0

    .line 735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 738
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 740
    :cond_0
    return-void
.end method

.method public requestStartSettings()V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public requestStopScan()V
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 745
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 747
    :cond_0
    return-void
.end method

.method public restartWifiDisplay()V
    .locals 0

    .prologue
    .line 2840
    return-void
.end method

.method public setScanningChannel(I)V
    .locals 0
    .param p1, "requestedChannel"    # I

    .prologue
    .line 1051
    return-void
.end method

.method public syncRemoteDisplayStatus(IZ)V
    .locals 0
    .param p1, "connectMode"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 2832
    return-void
.end method
