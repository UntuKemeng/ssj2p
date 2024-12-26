.class Lcom/android/server/wifi/WifiController;
.super Lcom/android/internal/util/StateMachine;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiController$NoLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;,
        Lcom/android/server/wifi/WifiController$FullLockHeldState;,
        Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;,
        Lcom/android/server/wifi/WifiController$DeviceInactiveState;,
        Lcom/android/server/wifi/WifiController$DeviceActiveState;,
        Lcom/android/server/wifi/WifiController$EcmState;,
        Lcom/android/server/wifi/WifiController$IbssEnabledState;,
        Lcom/android/server/wifi/WifiController$ApEnabledState;,
        Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;,
        Lcom/android/server/wifi/WifiController$StaEnabledState;,
        Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;,
        Lcom/android/server/wifi/WifiController$ApStaDisabledState;,
        Lcom/android/server/wifi/WifiController$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BASE:I = 0x26000

.field static final CMD_AIRPLANE_TOGGLED:I = 0x26009

.field static final CMD_AP_START_FAILURE:I = 0x2600d

.field static final CMD_BATTERY_CHANGED:I = 0x26004

.field static final CMD_DEFERRED_TOGGLE:I = 0x2600b

.field static final CMD_DEVICE_IDLE:I = 0x26005

.field static final CMD_EMERGENCY_MODE_CHANGED:I = 0x26001

.field static final CMD_IBSS_TOGGLED:I = 0x26015

.field static final CMD_LOCKS_CHANGED:I = 0x26006

.field static final CMD_RESET_AP:I = 0x26016

.field static final CMD_SCAN_ALWAYS_MODE_CHANGED:I = 0x26007

.field static final CMD_SCREEN_OFF:I = 0x26003

.field static final CMD_SCREEN_ON:I = 0x26002

.field static final CMD_SET_AP:I = 0x2600a

.field static final CMD_SET_AP_BOOSTER_FLAG:I = 0x26017

.field static final CMD_SET_AP_STA_DELAYED:I = 0x26019

.field static final CMD_SET_AP_STA_DISABLED:I = 0x26018

.field static final CMD_STATEMACHINE_RESET:I = 0x26014

.field static final CMD_USER_PRESENT:I = 0x2600c

.field static final CMD_WIFI_TOGGLED:I = 0x26008

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DEFAULT_REENABLE_DELAY_MS:J = 0x1f4L

.field private static final DEFER_MARGIN_MS:J = 0x5L

.field private static final IDLE_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiController"

.field private static final VZW_WIFI_MOBILEAP_DELAY_MS:J = 0xbb8L

.field private static final WIFI_MOBILEAP_DELAY_MS:J = 0x5dcL


# instance fields
.field private isShutDown:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

.field private mApOrStaEnabledState:Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

.field private mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

.field private mDeferredwifimhsnum:I

.field private mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

.field private mDeviceIdle:Z

.field private mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

.field private mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

.field private mFirstUserSignOnSeen:Z

.field private mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

.field private mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

.field private mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIdleMillis:J

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mLogMessages:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

.field private mPluggedType:I

.field private mReEnableDelayMillis:J

.field private mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

.field private mScreenOff:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSleepPolicy:I

.field final mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

.field private mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

.field private mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

.field private mStayAwakeConditions:I

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private salesCode:Ljava/lang/String;

.field private tempWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    .line 120
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiController;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    const-string v2, "WifiController"

    invoke-direct {p0, v2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 81
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    .line 107
    new-instance v2, Landroid/net/NetworkInfo;

    const-string v3, "WIFI"

    const-string v4, ""

    invoke-direct {v2, v6, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 127
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 131
    iput-object v7, p0, Lcom/android/server/wifi/WifiController;->tempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 157
    new-instance v2, Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DefaultState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    .line 158
    new-instance v2, Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$StaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    .line 159
    new-instance v2, Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    .line 160
    new-instance v2, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mApOrStaEnabledState:Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    .line 161
    new-instance v2, Lcom/android/server/wifi/WifiController$ApEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    .line 162
    new-instance v2, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    .line 163
    new-instance v2, Lcom/android/server/wifi/WifiController$DeviceActiveState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DeviceActiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    .line 164
    new-instance v2, Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    .line 165
    new-instance v2, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    .line 166
    new-instance v2, Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$FullLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    .line 167
    new-instance v2, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    .line 168
    new-instance v2, Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$NoLockHeldState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    .line 169
    new-instance v2, Lcom/android/server/wifi/WifiController$EcmState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$EcmState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    .line 170
    new-instance v2, Lcom/android/server/wifi/WifiController$IbssEnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiController$IbssEnabledState;-><init>(Lcom/android/server/wifi/WifiController;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;

    .line 172
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->salesCode:Ljava/lang/String;

    .line 173
    iput v5, p0, Lcom/android/server/wifi/WifiController;->mDeferredwifimhsnum:I

    .line 176
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController;->mLogMessages:Z

    .line 183
    iput-object p1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    .line 184
    iget-object v2, p2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 188
    iput-object v7, p0, Lcom/android/server/wifi/WifiController;->mSoftApStateMachine:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .line 190
    iget-object v2, p2, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 191
    iget-object v2, p2, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .line 192
    iget-object v2, p2, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 197
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiTrafficPoller;->setThresholdValues()V

    .line 201
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v1, "idleIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    .line 221
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 223
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 224
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mStaEnabledState:Lcom/android/server/wifi/WifiController$StaEnabledState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 227
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 228
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 229
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDeviceInactiveState:Lcom/android/server/wifi/WifiController$DeviceInactiveState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 231
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 232
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mDefaultState:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiController;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 255
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x64

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setLogRecSize(I)V

    .line 256
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiController;->setLogOnlyTransitions(Z)V

    .line 257
    sget-boolean v2, Lcom/android/server/wifi/WifiController;->DBG:Z

    if-eqz v2, :cond_0

    .line 258
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiController;->mLogMessages:Z

    .line 259
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiController;->setDbg(Z)V

    .line 262
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiController;->isShutDown:Z

    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.net.wifi.ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wifi/WifiController$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiController$1;-><init>(Lcom/android/server/wifi/WifiController;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiController;->initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V

    .line 325
    return-void

    .line 252
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiController;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 255
    :cond_2
    const/16 v2, 0xc8

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiController;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->tempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiController;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Lcom/android/internal/util/State;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiController;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/server/wifi/WifiController;->DBG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->setFccChannel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiController;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApEnabledState:Lcom/android/server/wifi/WifiController$ApEnabledState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/wifi/WifiController;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceActiveState:Lcom/android/server/wifi/WifiController$DeviceActiveState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$IbssEnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mIbssEnabledState:Lcom/android/server/wifi/WifiController$IbssEnabledState;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->isShutDown:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiController;->isShutDown:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/WifiController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->isMobileApOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mApOrStaEnabledState:Lcom/android/server/wifi/WifiController$ApOrStaEnabledState;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/WifiController;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiController;->auditLog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/WifiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->isHotspotTestMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private auditLog(ZLjava/lang/String;)V
    .locals 5
    .param p1, "flag"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1782
    :try_start_0
    const-string v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1783
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1784
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    const-string v3, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    const-string v3, "outcome"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1787
    const-string v3, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    const-string v3, "component"

    const-string v4, "WifiController"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    const-string v3, "message"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 1791
    :catch_0
    move-exception v1

    .line 1792
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WifiController"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkLocksAndTransitionWhenDeviceIdle()V
    .locals 2

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->hasLocks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->getStrongestLockMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V

    .line 1710
    :goto_0
    return-void

    .line 1692
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullLockHeldState:Lcom/android/server/wifi/WifiController$FullLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1695
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mFullHighPerfLockHeldState:Lcom/android/server/wifi/WifiController$FullHighPerfLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1698
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mScanOnlyLockHeldState:Lcom/android/server/wifi/WifiController$ScanOnlyLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1707
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mNoLockHeldState:Lcom/android/server/wifi/WifiController$NoLockHeldState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initializeAndRegisterForSettingsChange(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 329
    .local v0, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readStayAwakeConditions()V

    .line 330
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForStayAwakeModeChange(Landroid/os/Handler;)V

    .line 331
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiIdleTime()V

    .line 332
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V

    .line 333
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiSleepPolicy()V

    .line 334
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiController;->registerForWifiSleepPolicyChange(Landroid/os/Handler;)V

    .line 335
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController;->readWifiReEnableDelay()V

    .line 336
    return-void
.end method

.method private isHotspotTestMode()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 628
    const/4 v6, 0x0

    .line 629
    .local v6, "isTestMode":Z
    const/4 v7, 0x0

    .line 631
    .local v7, "testModeintent":Z
    iget-object v10, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "att_hotspot_test"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    .line 632
    const/4 v7, 0x1

    .line 635
    :goto_0
    sget-boolean v10, Lcom/android/server/wifi/WifiController;->DBG:Z

    if-eqz v10, :cond_4

    .line 636
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 637
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 638
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 641
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 643
    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    const-string v10, "ATT_HOTSPOT"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 645
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-ne v10, v8, :cond_2

    move v6, v8

    :goto_2
    goto :goto_1

    .line 634
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_2
    move v6, v9

    .line 645
    goto :goto_2

    .line 652
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 653
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 659
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    move v9, v8

    :cond_6
    return v9

    .line 654
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 655
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 648
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 649
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 652
    if-eqz v1, :cond_4

    .line 653
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 654
    :catch_2
    move-exception v4

    .line 655
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 651
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 652
    :goto_5
    if-eqz v1, :cond_7

    .line 653
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 656
    :cond_7
    :goto_6
    throw v8

    .line 654
    :catch_3
    move-exception v4

    .line 655
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 651
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 648
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private isMobileApOn()Z
    .locals 2

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    .line 1734
    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1735
    :cond_0
    const/4 v1, 0x1

    .line 1737
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 1755
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1756
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1758
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1762
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiController"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 2

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 1747
    .local v0, "wifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1748
    :cond_0
    const/4 v1, 0x1

    .line 1750
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1767
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1768
    const-string v3, "WifiController"

    const-string v4, "Wifi Sharing Enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :goto_0
    return v1

    .line 1770
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1771
    const-string v1, "WifiController"

    const-string v3, "Wifi Sharing Not Enabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1772
    goto :goto_0

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiController"

    const-string v3, "Provider is not defined returning false"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 1777
    goto :goto_0
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mLogMessages:Z

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method private readStayAwakeConditions()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    .line 341
    return-void
.end method

.method private readWifiIdleTime()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_idle_ms"

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    .line 346
    return-void
.end method

.method private readWifiReEnableDelay()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_reenable_delay"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J

    .line 357
    return-void
.end method

.method private readWifiSleepPolicy()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sleep_policy"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    .line 352
    return-void
.end method

.method private registerForStayAwakeModeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 363
    new-instance v0, Lcom/android/server/wifi/WifiController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$2;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 370
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 373
    return-void
.end method

.method private registerForWifiIdleTimeChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 379
    new-instance v0, Lcom/android/server/wifi/WifiController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$3;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 386
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_idle_ms"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    return-void
.end method

.method private registerForWifiSleepPolicyChange(Landroid/os/Handler;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 395
    new-instance v0, Lcom/android/server/wifi/WifiController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiController$4;-><init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V

    .line 401
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 404
    return-void
.end method

.method private setFccChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    const-string v0, "WifiController"

    const-string v1, "[FCC]setFccChannel() is called !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "WifiController"

    const-string v1, "[FCC]WifiOnly model, setFccChannel(0)!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setFccChannel(I)V

    .line 472
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    const-string v0, "WifiController"

    const-string v1, "[FCC]Airplane on, setFccChannel(0)!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setFccChannel(I)V

    goto :goto_0

    .line 468
    :cond_1
    const-string v0, "WifiController"

    const-string v1, "[FCC]Airplane off, setFccChannel(-1)!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setFccChannel(I)V

    goto :goto_0
.end method

.method private shouldDeviceStayAwake(I)Z
    .locals 1
    .param p1, "pluggedType"    # I

    .prologue
    .line 451
    iget v0, p0, Lcom/android/server/wifi/WifiController;->mStayAwakeConditions:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(I)Z
    .locals 3
    .param p1, "pluggedType"    # I

    .prologue
    const/4 v0, 0x1

    .line 427
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    if-ne v1, v0, :cond_2

    if-nez p1, :cond_0

    .line 436
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController;->shouldDeviceStayAwake(I)Z

    move-result v0

    goto :goto_0
.end method

.method private updateBatteryWorkSource()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 476
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 480
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1714
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceIdle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPluggedType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mPluggedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIdleMillis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiController;->mIdleMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiController;->mSleepPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiController;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController;->printTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 546
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 510
    :sswitch_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, "emergency mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_0

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    goto :goto_1

    .line 518
    :sswitch_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 520
    const-string v1, "released"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :goto_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, "pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 522
    :cond_1
    const-string v1, "acquired mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 531
    :sswitch_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_2

    const-string v1, "enable"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string v1, "pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 532
    :cond_2
    const-string v1, "disable"

    goto :goto_3

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_0
        0x26006 -> :sswitch_1
        0x26008 -> :sswitch_2
        0x2600a -> :sswitch_2
        0x26015 -> :sswitch_2
    .end sparse-switch
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 560
    const-string v0, "unknown"

    .line 561
    .local v0, "s":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 620
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    .line 563
    :pswitch_1
    const-string v0, "CMD_EMERGENCY_MODE_CHANGED"

    .line 564
    goto :goto_0

    .line 566
    :pswitch_2
    const-string v0, "CMD_SCREEN_ON"

    .line 567
    goto :goto_0

    .line 569
    :pswitch_3
    const-string v0, "CMD_SCREEN_OFF"

    .line 570
    goto :goto_0

    .line 572
    :pswitch_4
    const-string v0, "CMD_BATTERY_CHANGED"

    .line 573
    goto :goto_0

    .line 575
    :pswitch_5
    const-string v0, "CMD_DEVICE_IDLE"

    .line 576
    goto :goto_0

    .line 578
    :pswitch_6
    const-string v0, "CMD_LOCKS_CHANGED"

    .line 579
    goto :goto_0

    .line 581
    :pswitch_7
    const-string v0, "CMD_SCAN_ALWAYS_MODE_CHANGED"

    .line 582
    goto :goto_0

    .line 584
    :pswitch_8
    const-string v0, "CMD_WIFI_TOGGLED"

    .line 585
    goto :goto_0

    .line 587
    :pswitch_9
    const-string v0, "CMD_AIRPLANE_TOGGLED"

    .line 588
    goto :goto_0

    .line 590
    :pswitch_a
    const-string v0, "CMD_SET_AP"

    .line 591
    goto :goto_0

    .line 593
    :pswitch_b
    const-string v0, "CMD_DEFERRED_TOGGLE"

    .line 594
    goto :goto_0

    .line 596
    :pswitch_c
    const-string v0, "CMD_USER_PRESENT"

    .line 597
    goto :goto_0

    .line 599
    :pswitch_d
    const-string v0, "CMD_AP_START_FAILURE"

    .line 600
    goto :goto_0

    .line 602
    :pswitch_e
    const-string v0, "CMD_STATEMACHINE_RESET"

    .line 603
    goto :goto_0

    .line 605
    :pswitch_f
    const-string v0, "CMD_IBSS_TOGGLED"

    .line 606
    goto :goto_0

    .line 608
    :pswitch_10
    const-string v0, "CMD_RESET_AP"

    .line 609
    goto :goto_0

    .line 611
    :pswitch_11
    const-string v0, "CMD_SET_AP_BOOSTER_FLAG"

    .line 612
    goto :goto_0

    .line 614
    :pswitch_12
    const-string v0, "CMD_SET_AP_STA_DISABLED"

    .line 615
    goto :goto_0

    .line 617
    :pswitch_13
    const-string v0, "CMD_SET_AP_STA_DELAYED"

    .line 618
    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiController;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
