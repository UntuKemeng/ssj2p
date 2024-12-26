.class public Lcom/samsung/android/server/wifi/SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;,
        Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_REQUEST_AP_TX_POWER:I = 0x20132

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RESPONSE_AP_TX_POWER:I = 0x20133

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_AP_TX_POWER:I = 0x20131

.field static final CMD_SOFTAP_INTERFACE_STATE:I = 0x20134

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field public static final CMD_WIFI_STARTED_FROM_MHS:I = 0x20135

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static DBG:Z = false

.field private static DBGMHS:Z = false

.field public static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field static final FIRST_MHSIP_RANGE:I = 0x1

.field static final SECOND_MHSIP_RANGE:I = 0x2

.field public static final SUPPORTMOBILEAPONTRIGGER_CSC:Z

.field public static final SUPPORTMOBILEAPONTRIGGER_SPF:Z = false

.field private static final TAG:Ljava/lang/String; = "SoftApStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field static final WIFI_FIRMWARE_TYPE_AP:I = 0x1

.field static final WIFI_FIRMWARE_TYPE_STA:I

.field private static bIsFirstCall:Z

.field private static bUseMobileData:Z

.field private static mAmountMobileRxBytes:J

.field private static mAmountMobileTxBytes:J

.field private static mAmountTimeOfMobileData:J

.field private static mBaseRxBytes:J

.field private static mBaseTxBytes:J

.field private static mIface:Ljava/lang/String;

.field private static mLogMessages:Z

.field private static mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private static mStartTimeOfMobileData:J

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mTempMobileRxBytes:J

.field private static mTempMobileTxBytes:J

.field private static mTimeOfStartMobileAp:J


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mFirmwareType:I

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceState:I

.field private mIsBootCompleteForLogging:Z

.field private mIsProvisioningNeeded:Z

.field private mLastDriverErrorMessage:I

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPending_StopApCmd:Z

.field private mPreviousTetherData:I

.field private mRVFMode:I

.field private mSoftApReset:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWlanInterfaceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    .line 79
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_0
    :goto_1
    sput-boolean v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    .line 84
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLogMessages:Z

    .line 87
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    .line 95
    sput-object v4, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    sput-object v4, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 97
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bUseMobileData:Z

    .line 98
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z

    .line 147
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 148
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mModemPowerBackOff:Z

    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    .line 150
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    .line 78
    goto :goto_0

    :cond_2
    move v2, v1

    .line 79
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "WifiSM"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wlanInterface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    const-string v4, "SoftApStateMachine"

    invoke-direct {p0, v4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 85
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z

    .line 104
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    .line 105
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    .line 109
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    .line 110
    iput v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    .line 111
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    .line 115
    iput v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiState:I

    .line 116
    iput v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    .line 121
    iput v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    .line 158
    iput v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    .line 160
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 162
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 164
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 166
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartedState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 168
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheringState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 170
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetheredState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 172
    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$UntetheringState;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    .line 177
    new-instance v4, Landroid/net/NetworkInfo;

    const-string v5, "WIFI"

    const-string v6, ""

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 187
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 192
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWlanInterfaceName:Ljava/lang/String;

    .line 193
    const-string v4, "swlan0"

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 194
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 196
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 198
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$2;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.android.net.wifi.softap_interface"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$3;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$5;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 258
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 259
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 260
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 261
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 262
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 263
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 264
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 266
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setLogRecSize(I)V

    .line 267
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setLogOnlyTransitions(Z)V

    .line 268
    sget-boolean v4, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setDbg(Z)V

    .line 270
    :cond_0
    new-instance v4, Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    .line 271
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->start()V

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "provisionApp":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    .line 277
    return-void

    :cond_1
    move v2, v3

    .line 276
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    return p1
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiState:I

    return p1
.end method

.method static synthetic access$1100()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J

    return-wide p0
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mStartTimeOfMobileData:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mStartTimeOfMobileData:J

    return-wide p0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bUseMobileData:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z

    return p0
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J

    return-wide p0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    return-wide v0
.end method

.method static synthetic access$1602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    return-wide p0
.end method

.method static synthetic access$1700()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1702(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    return-wide p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isMobileApOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkMobileApWifiIp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$5104(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$6200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    return v0
.end method

.method static synthetic access$6702(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    return p1
.end method

.method static synthetic access$6800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/SoftApStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J

    return-wide v0
.end method

.method static synthetic access$902(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J

    return-wide p0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 3

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SoftApStateMachine"

    const-string v2, "checkAndSetConnectivityInstance - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkMobileApWifiChannel()Z
    .locals 5

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 391
    .local v1, "tempWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v0, -0x1

    .line 392
    .local v0, "operatingWifiChannel":I
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedFrequency()I

    move-result v2

    .line 394
    .local v2, "wifiFrequency":I
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedBand(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 395
    const-string v3, "Wifi and MobileAp are in same band. Now we verify for channel"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getWifiConnectedChannel(I)I

    move-result v0

    .line 397
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eq v3, v0, :cond_0

    .line 398
    const-string v3, "Wifi and MobileAp are in different channel. Reset MobileAp with Wifi Channel"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V

    .line 399
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 400
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 401
    const/4 v3, 0x1

    .line 404
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkMobileApWifiIp()Z
    .locals 8

    .prologue
    .line 413
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 414
    .local v4, "wifiInfoObject":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 415
    .local v5, "wlanIpAddress":I
    const/4 v3, 0x0

    .line 416
    .local v3, "ifcg":Landroid/net/InterfaceConfiguration;
    const/4 v1, 0x0

    .line 418
    .local v1, "bcmIpAddress":I
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "swlan0"

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v3}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 421
    .local v0, "bcmInetAddress":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "bcmInetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    :cond_0
    :goto_0
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->compareWlanBcmIPSubnet(II)Z

    move-result v6

    return v6

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getting swlan0 interface config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compareWlanBcmIPSubnet(II)Z
    .locals 4
    .param p1, "wlanIPAddress"    # I
    .param p2, "bcmIPAddress"    # I

    .prologue
    .line 376
    const-string v2, "255.255.255.0"

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 377
    .local v0, "maskInetAddress":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "maskInetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .line 378
    .local v1, "maskIpAddress":I
    and-int v2, p1, v1

    and-int v3, p2, v1

    if-ne v2, v3, :cond_0

    .line 379
    const/4 v2, 0x1

    .line 381
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private convertBytesToMegaByte(J)Ljava/lang/String;
    .locals 11
    .param p1, "tempValue"    # J

    .prologue
    .line 611
    const-wide/32 v4, 0x100000

    div-long v2, p1, v4

    .line 612
    .local v2, "valueOfDevided":J
    const/16 v0, 0x12c

    .line 614
    .local v0, "valueOfBarometer":I
    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "over"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    :goto_0
    return-object v1

    .line 616
    :cond_0
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_1

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 618
    :cond_1
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 620
    :cond_2
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 622
    :cond_3
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_4

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 624
    :cond_4
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_5

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 626
    :cond_5
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_6

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 628
    :cond_6
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_7

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 630
    :cond_7
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_8

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 632
    :cond_8
    long-to-double v4, v2

    int-to-double v6, v0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_9

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 634
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0~"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private convertMinute(J)Ljava/lang/String;
    .locals 7
    .param p1, "tempValue"    # J

    .prologue
    const-wide/16 v4, 0x3c

    .line 638
    move-wide v0, p1

    .line 640
    .local v0, "valueOfDevided":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hour"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    :goto_0
    return-object v2

    .line 642
    :cond_0
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 643
    const-string v2, "50~60minites"

    goto :goto_0

    .line 644
    :cond_1
    const-wide/16 v2, 0x28

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 645
    const-string v2, "40~50minites"

    goto :goto_0

    .line 646
    :cond_2
    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 647
    const-string v2, "30~40minites"

    goto :goto_0

    .line 648
    :cond_3
    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 649
    const-string v2, "20~30minites"

    goto :goto_0

    .line 650
    :cond_4
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 651
    const-string v2, "10~20 minites"

    goto :goto_0

    .line 652
    :cond_5
    const-string v2, "0~10minites"

    goto :goto_0
.end method

.method private getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 295
    const/4 v0, 0x2

    .line 296
    .local v0, "band":I
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 297
    const/4 v0, 0x2

    .line 301
    :goto_0
    return v0

    .line 299
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getWifiConnectedBand(I)I
    .locals 1
    .param p1, "WifiFrequency"    # I

    .prologue
    .line 313
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    .line 314
    const/4 v0, 0x2

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getWifiConnectedChannel(I)I
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    .line 338
    const/4 v1, -0x1

    .line 339
    .local v1, "channel":I
    const/16 v0, 0x96c

    .line 340
    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .line 341
    .local v2, "freqDiff":I
    if-nez v2, :cond_1

    .line 342
    const/4 v1, 0x1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    .line 345
    const/16 v3, 0xd

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    .line 346
    const/16 v1, 0xe

    .line 348
    :cond_2
    if-le v1, v4, :cond_0

    .line 349
    const/16 v1, 0x95

    goto :goto_0
.end method

.method private getWifiConnectedFrequency()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 305
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 306
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 309
    :cond_0
    return v1
.end method

.method private ipAddressFamilyTobeUsed()I
    .locals 8

    .prologue
    .line 360
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 361
    .local v3, "wifiInfoObject":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 363
    .local v5, "wifiIpAddress":I
    const-string v7, "255.255.255.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 364
    .local v1, "maskInet":Ljava/net/InetAddress;
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "maskInet":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v2

    .line 365
    .local v2, "maskInt":I
    and-int v4, v5, v2

    .line 366
    .local v4, "wifiIp":I
    invoke-static {v4}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    .line 367
    .local v6, "wifiIpFamily":Ljava/net/InetAddress;
    const-string v7, "192.168.43.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 369
    .local v0, "ip43Family":Ljava/net/InetAddress;
    invoke-virtual {v6, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    const/4 v7, 0x2

    .line 372
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isMobileApOn()Z
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v0

    .line 323
    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    const/4 v1, 0x1

    .line 326
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 331
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    .line 657
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 658
    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 659
    .local v3, "intf":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 660
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 661
    const/4 v7, 0x1

    .line 666
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :goto_1
    return v7

    .line 659
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private resetParameterForHotspotLogging()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 596
    sput-object v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 597
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    .line 598
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    .line 599
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J

    .line 600
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J

    .line 601
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J

    .line 602
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J

    .line 603
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J

    .line 604
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z

    .line 605
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    .line 606
    sput-wide v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseRxBytes:J

    .line 607
    sput-object v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 608
    return-void
.end method

.method private sendStickyBroadcastFromSoftApStateMachine(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 849
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send sticky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendStickyBroadcastFromSoftApStateMachineForCurrentUser(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 839
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 846
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send stciky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 866
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/SoftApStateMachine$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine$7;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 886
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 528
    const/4 v8, 0x0

    .line 530
    .local v8, "wifiAvailable":Z
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    .line 532
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 534
    .local v9, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 535
    .local v5, "intf":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 536
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 538
    const/4 v4, 0x0

    .line 540
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 541
    if-eqz v4, :cond_1

    .line 542
    const-string v11, "SoftApStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTethering, mRVFMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "intf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->isWifiConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ipAddressFamilyTobeUsed()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 545
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.60.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 547
    const-string v11, "SoftApStateMachine"

    const-string v12, "startTethering, setInterfaceUp swlan0 = 192.168.60.1 Second Ip Range"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_1
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 554
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    .line 562
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    .line 571
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "intf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :cond_2
    :goto_2
    return v10

    .line 549
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v5    # "intf":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 551
    const-string v11, "SoftApStateMachine"

    const-string v12, "startTethering, setInterfaceUp swlan0 = 192.168.43.1 First Ip Range"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 565
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iput-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 566
    const/4 v10, 0x1

    goto :goto_2

    .line 535
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_0

    .line 582
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 584
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    const-string v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    .line 593
    :cond_1
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1272
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoftApReset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRVFMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviousTetherData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPreviousTetherData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInterfaceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInterfaceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastDriverErrorMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1279
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 280
    if-lez p1, :cond_1

    .line 281
    sput-boolean v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    .line 282
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 283
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLogMessages:Z

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    sget-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLogMessages:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->setLogVisible(Z)V

    .line 292
    return-void

    .line 285
    :cond_0
    sput-boolean v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLogMessages:Z

    goto :goto_0

    .line 288
    :cond_1
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    .line 289
    sput-boolean v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLogMessages:Z

    goto :goto_0
.end method

.method public getRvfMode()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    return v0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 430
    if-eqz p2, :cond_0

    .line 434
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setRvfMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I

    .line 442
    return-void
.end method

.method public setSoftApReset(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z

    .line 450
    return-void
.end method

.method public setWifiApConfigTxPower(I)V
    .locals 2
    .param p1, "txPowerMode"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20131

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 502
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public setWifiApConfigurationToDefault()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20020

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 488
    return-void
.end method

.method public setWifiApState(II)V
    .locals 52
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v42

    .line 672
    .local v42, "previousWifiApState":I
    const/16 v48, 0xd

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_e

    .line 673
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 683
    sget-boolean v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v48, :cond_1

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "setWifiApState: "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    .line 685
    :cond_1
    const/16 v48, 0xd

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_2

    .line 690
    const-string v48, "wlan0"

    sput-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    .line 692
    const/16 v16, 0x0

    .line 694
    .local v16, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v48, v0

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-interface/range {v48 .. v49}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v16

    .line 695
    if-eqz v16, :cond_2

    .line 696
    const-string v48, "up"

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_2

    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    const-wide/16 v50, 0x0

    cmp-long v48, v48, v50

    if-nez v48, :cond_2

    .line 697
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->resetParameterForHotspotLogging()V

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 699
    .local v4, "StartTimeOfM":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    sput-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTimeOfStartMobileAp:J

    .line 700
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v48

    sput-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    .line 701
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v48

    sput-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseRxBytes:J

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v49, "phone"

    invoke-virtual/range {v48 .. v49}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/telephony/TelephonyManager;

    sput-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 704
    new-instance v48, Lcom/samsung/android/server/wifi/SoftApStateMachine$6;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine$6;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V

    sput-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 732
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v50, 0x40

    invoke-virtual/range {v48 .. v50}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 740
    .end local v4    # "StartTimeOfM":J
    .end local v16    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_2
    :goto_1
    const/16 v48, 0xa

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_6

    .line 742
    const/16 v16, 0x0

    .line 743
    .restart local v16    # "ifcg":Landroid/net/InterfaceConfiguration;
    const-string v40, ""

    .line 745
    .local v40, "mhsData":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v48, v0

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-interface/range {v48 .. v49}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v16

    .line 746
    if-eqz v16, :cond_3

    .line 747
    const-string v48, "up"

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_10

    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    const-wide/16 v50, 0x0

    cmp-long v48, v48, v50

    if-eqz v48, :cond_10

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 749
    .local v12, "endTime":J
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTimeOfStartMobileAp:J

    sub-long v48, v12, v48

    const-wide/32 v50, 0xea60

    div-long v44, v48, v50

    .line 752
    .local v44, "usedTimeOfMobileAp":J
    sget-boolean v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->bUseMobileData:Z

    if-eqz v48, :cond_f

    .line 753
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mStartTimeOfMobileData:J

    sub-long v48, v12, v48

    const-wide/32 v50, 0xea60

    div-long v46, v48, v50

    .line 754
    .local v46, "usedTimeOfMobileDataOff":J
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J

    add-long v8, v48, v46

    .line 755
    .local v8, "amountUsedTimeOfMobileData":J
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v24

    .line 756
    .local v24, "mEndTempMobileTxBytes":J
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v22

    .line 757
    .local v22, "mEndTempMobileRxBytes":J
    sget-wide v34, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    .line 758
    .local v34, "mTempAmountTxBytes":J
    sget-wide v32, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    .line 759
    .local v32, "mTempAmountRxBytes":J
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J

    sub-long v48, v24, v48

    add-long v48, v48, v34

    sput-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    .line 760
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J

    sub-long v48, v22, v48

    add-long v48, v48, v32

    sput-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    .line 764
    .end local v22    # "mEndTempMobileRxBytes":J
    .end local v24    # "mEndTempMobileTxBytes":J
    .end local v32    # "mTempAmountRxBytes":J
    .end local v34    # "mTempAmountTxBytes":J
    .end local v46    # "usedTimeOfMobileDataOff":J
    :goto_2
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v36

    .line 765
    .local v36, "mTx":J
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;

    invoke-static/range {v48 .. v48}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v26

    .line 766
    .local v26, "mRx":J
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseTxBytes:J

    sub-long v38, v36, v48

    .line 767
    .local v38, "mTxBytes":J
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBaseRxBytes:J

    sub-long v28, v26, v48

    .line 768
    .local v28, "mRxBytes":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertBytesToMegaByte(J)Ljava/lang/String;

    move-result-object v31

    .line 769
    .local v31, "mTxMB":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertBytesToMegaByte(J)Ljava/lang/String;

    move-result-object v30

    .line 770
    .local v30, "mRxMB":Ljava/lang/String;
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertBytesToMegaByte(J)Ljava/lang/String;

    move-result-object v19

    .line 771
    .local v19, "mAmountMobileTxMB":Ljava/lang/String;
    sget-wide v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J

    move-object/from16 v0, p0

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertBytesToMegaByte(J)Ljava/lang/String;

    move-result-object v18

    .line 772
    .local v18, "mAmountMobileRxMB":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertMinute(J)Ljava/lang/String;

    move-result-object v20

    .line 773
    .local v20, "mDevideTimeOfMobileAp":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->convertMinute(J)Ljava/lang/String;

    move-result-object v21

    .line 774
    .local v21, "mDevideTimeOfMobileData":Ljava/lang/String;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v40

    .line 785
    .end local v8    # "amountUsedTimeOfMobileData":J
    .end local v12    # "endTime":J
    .end local v18    # "mAmountMobileRxMB":Ljava/lang/String;
    .end local v19    # "mAmountMobileTxMB":Ljava/lang/String;
    .end local v20    # "mDevideTimeOfMobileAp":Ljava/lang/String;
    .end local v21    # "mDevideTimeOfMobileData":Ljava/lang/String;
    .end local v26    # "mRx":J
    .end local v28    # "mRxBytes":J
    .end local v30    # "mRxMB":Ljava/lang/String;
    .end local v31    # "mTxMB":Ljava/lang/String;
    .end local v36    # "mTx":J
    .end local v38    # "mTxBytes":J
    .end local v44    # "usedTimeOfMobileAp":J
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z

    move/from16 v48, v0

    if-eqz v48, :cond_4

    const-string v48, "TRUE"

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_4

    .line 786
    const-string v14, "MHSS"

    .line 787
    .local v14, "feature":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v14, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 790
    .end local v14    # "feature":Ljava/lang/String;
    :cond_4
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v48, :cond_5

    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 791
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->resetParameterForHotspotLogging()V

    .line 796
    .end local v16    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v40    # "mhsData":Ljava/lang/String;
    :cond_6
    :goto_4
    new-instance v15, Ljava/io/File;

    const-string v48, "/sdcard/mhsbackoff"

    move-object/from16 v0, v48

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v15, "file":Ljava/io/File;
    const/16 v43, 0x0

    .line 798
    .local v43, "tempBackOff":Z
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v48

    if-eqz v48, :cond_7

    .line 799
    const/16 v43, 0x1

    .line 801
    :cond_7
    sget-boolean v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    if-eqz v48, :cond_8

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "MHS SPF backoff : false MHS CSC backoff : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    sget-boolean v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " DBG : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    sget-boolean v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " tempBackOff : "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V

    .line 803
    :cond_8
    sget-boolean v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->SUPPORTMOBILEAPONTRIGGER_CSC:Z

    if-eqz v48, :cond_9

    const-string v48, ""

    const-string v49, "vold.encrypt_progress"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_a

    :cond_9
    sget-boolean v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBGMHS:Z

    if-eqz v48, :cond_d

    if-eqz v43, :cond_d

    .line 804
    :cond_a
    const/16 v48, 0xd

    move/from16 v0, p1

    move/from16 v1, v48

    if-eq v0, v1, :cond_b

    const/16 v48, 0xb

    move/from16 v0, p1

    move/from16 v1, v48

    if-eq v0, v1, :cond_b

    const/16 v48, 0xe

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_d

    .line 805
    :cond_b
    const/4 v6, 0x0

    .line 806
    .local v6, "TRANSMIT_POWER_DEFAULT":I
    const/4 v7, 0x4

    .line 807
    .local v7, "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    const/4 v10, 0x0

    .line 809
    .local v10, "backOffState":I
    const-string v48, "phone"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v41

    .line 810
    .local v41, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v48, "ril.backoffstate"

    const/16 v49, 0x0

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 811
    const-string v48, "SoftApStateMachine"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, " ril.backoffstate = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/16 v48, 0xd

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_15

    .line 814
    or-int/lit8 v10, v10, 0x4

    .line 818
    :cond_c
    :goto_5
    const-string v48, "SoftApStateMachine"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", backOffState = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :try_start_3
    move-object/from16 v0, v41

    invoke-interface {v0, v10}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 826
    .end local v6    # "TRANSMIT_POWER_DEFAULT":I
    .end local v7    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .end local v10    # "backOffState":I
    .end local v41    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_d
    :goto_6
    new-instance v17, Landroid/content/Intent;

    const-string v48, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v17, "intent":Landroid/content/Intent;
    const/high16 v48, 0x4000000

    move-object/from16 v0, v17

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    const-string v48, "wifi_state"

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    const-string v48, "previous_wifi_state"

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsProvisioningNeeded:Z

    move/from16 v48, v0

    if-eqz v48, :cond_17

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendStickyBroadcastFromSoftApStateMachineForCurrentUser(Landroid/content/Intent;)V

    .line 836
    :goto_7
    return-void

    .line 674
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v43    # "tempBackOff":Z
    :cond_e
    const/16 v48, 0xb

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_0

    .line 675
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v11

    .line 678
    .local v11, "e":Landroid/os/RemoteException;
    const-string v48, "Failed to note battery stats in wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v16    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_1
    move-exception v11

    .line 736
    .local v11, "e":Ljava/lang/Exception;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "SoftApStateMachine: Error in getting swlan0 interface config:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 762
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "endTime":J
    .restart local v40    # "mhsData":Ljava/lang/String;
    .restart local v44    # "usedTimeOfMobileAp":J
    :cond_f
    :try_start_5
    sget-wide v8, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J

    .restart local v8    # "amountUsedTimeOfMobileData":J
    goto/16 :goto_2

    .line 777
    .end local v8    # "amountUsedTimeOfMobileData":J
    .end local v12    # "endTime":J
    .end local v44    # "usedTimeOfMobileAp":J
    :cond_10
    const-string v48, "SoftApStateMachine"

    const-string v49, "unnormal status of interface"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v40, "-1 -1 -1 -1 -1 -1"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 781
    :catch_2
    move-exception v11

    .line 782
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "SoftApStateMachine : Error in getting swlan0 interface config:"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V

    .line 783
    const-string v40, "-1 -1 -1 -1 -1 -1"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 785
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z

    move/from16 v48, v0

    if-eqz v48, :cond_11

    const-string v48, "TRUE"

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_11

    .line 786
    const-string v14, "MHSS"

    .line 787
    .restart local v14    # "feature":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v14, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 790
    .end local v14    # "feature":Ljava/lang/String;
    :cond_11
    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v48, :cond_12

    sget-object v48, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 791
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->resetParameterForHotspotLogging()V

    goto/16 :goto_4

    .line 785
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v48

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIsBootCompleteForLogging:Z

    move/from16 v49, v0

    if-eqz v49, :cond_13

    const-string v49, "TRUE"

    sget-object v50, Lcom/samsung/android/server/wifi/SoftApStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_13

    .line 786
    const-string v14, "MHSS"

    .line 787
    .restart local v14    # "feature":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v14, v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 790
    .end local v14    # "feature":Ljava/lang/String;
    :cond_13
    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v49, :cond_14

    sget-object v49, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v50, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 791
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->resetParameterForHotspotLogging()V

    throw v48

    .line 815
    .end local v16    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v40    # "mhsData":Ljava/lang/String;
    .restart local v6    # "TRANSMIT_POWER_DEFAULT":I
    .restart local v7    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .restart local v10    # "backOffState":I
    .restart local v15    # "file":Ljava/io/File;
    .restart local v41    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v43    # "tempBackOff":Z
    :cond_15
    const/16 v48, 0xb

    move/from16 v0, p1

    move/from16 v1, v48

    if-eq v0, v1, :cond_16

    const/16 v48, 0xe

    move/from16 v0, p1

    move/from16 v1, v48

    if-ne v0, v1, :cond_c

    .line 816
    :cond_16
    and-int/lit8 v10, v10, -0x5

    goto/16 :goto_5

    .line 821
    :catch_3
    move-exception v11

    .line 822
    .local v11, "e":Landroid/os/RemoteException;
    const-string v48, "SoftApStateMachine"

    const-string v49, "RemoteException occurs in setTransmitPower"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 833
    .end local v6    # "TRANSMIT_POWER_DEFAULT":I
    .end local v7    # "TRANSMIT_POWER_MOBILEHOTSPOT_ENABLED":I
    .end local v10    # "backOffState":I
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v41    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendStickyBroadcastFromSoftApStateMachine(Landroid/content/Intent;)V

    goto/16 :goto_7
.end method

.method public syncGetWifiApConfigTxPower()I
    .locals 4

    .prologue
    .line 492
    const/4 v1, -0x1

    .line 493
    .local v1, "txPowerMode":I
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x20132

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "resultMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 495
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 496
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 498
    :cond_0
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "resultMsg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 480
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "ret":Landroid/net/wifi/WifiConfiguration;
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 481
    .restart local v1    # "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 483
    :cond_0
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 467
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 457
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 459
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 461
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 463
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 465
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncIsWifiApStateInitial()Z
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
