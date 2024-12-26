.class public abstract Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.super Landroid/os/Handler;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_DEFAULT_MILLIS:I = 0x1388

.field protected static final APN_FAIL_FAST_DELAY_DEFAULT_MILLIS:I = 0xbb8

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEBUG_PROV_APN_ALARM:Ljava/lang/String; = "persist.debug.prov_apn_alarm"

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field private static final DEFAULT_MDC_INITIAL_RETRY:I = 0x1

.field private static final EVENT_RECONNECT_ALARM:I = 0x2

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field protected static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-stall"

.field protected static final INTENT_DUN_INITIALIZE_STATE:Ljava/lang/String; = "com.android.internal.telephony.cdma-initializeState"

.field protected static final INTENT_GET_DATA_ENABLED:Ljava/lang/String; = "com.android.internal.telephony.GET_DATA_ENABLED"

.field private static final INTENT_HONGBAO_MODE_DEACTIVATED:Ljava/lang/String; = "android.intent.action.ACTION_HONGBAO_MODE_DEACTIVATED"

.field private static final INTENT_HONGBAO_RECEIVED:Ljava/lang/String; = "android.intent.action.ACTION_HONGBAO_RECEIVED"

.field protected static final INTENT_IMS_RECOVERY_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.IMS_RECOVERY_REQUEST"

.field protected static final INTENT_PREFERED_DATA_1:Ljava/lang/String; = "com.android.internal.telephony.preferred_data_1"

.field protected static final INTENT_PREFERED_DATA_2:Ljava/lang/String; = "com.android.internal.telephony.preferred_data_2"

.field protected static final INTENT_PROVISIONING_APN_ALARM:Ljava/lang/String; = "com.android.internal.telephony.provisioning_apn_alarm"

.field protected static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-reconnect"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM:Ljava/lang/String; = "com.android.internal.telephony.data-restart-trysetup"

.field protected static final INTENT_RESTART_TRYSETUP_ALARM_EXTRA_TYPE:Ljava/lang/String; = "restart_trysetup_alarm_extra_type"

.field protected static final INTENT_SET_DATA_ENABLED:Ljava/lang/String; = "com.android.internal.telephony.SET_DATA_ENABLED"

.field private static final LOG_TAG:Ljava/lang/String; = "DctBase"

.field protected static final NETWORK_MODE_SYNC:Ljava/lang/String; = "com.android.server.status.network_mode_sync"

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final PDP_RESET_TEST:Ljava/lang/String; = "android.intent.action.PDP_RESET_TEST"

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final PROVISIONING_APN_ALARM_DELAY_IN_MS_DEFAULT:I = 0xdbba0

.field protected static final PROVISIONING_APN_ALARM_TAG_EXTRA:Ljava/lang/String; = "provisioning.apn.alarm.tag"

.field protected static final RADIO_TESTS:Z = false

.field private static final REDPACKET_MODE_SETTING:Ljava/lang/String; = "red_packet_mode"

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z = false

.field protected static final VDBG_STALL:Z = true

.field private static final mEpdgObj:Ljava/lang/Object;

.field static mIsCleanupRequired:Z

.field static retryTCECounter:I

.field static retryTCECounterTimeMillis:J

.field protected static sEnableFailFastRefCounter:I


# instance fields
.field protected MAX_RETRY_FOR_PERMANENT_FAILURE:I

.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected dunActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field protected dunNetworkType:I

.field protected dunRxBarLevel:I

.field protected dunState:I

.field protected dunTxBarLevel:I

.field private imsRecoveryStep:I

.field protected mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field mAlarmManager:Landroid/app/AlarmManager;

.field protected mAllApnSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected final mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mAutoAttachOnCreationConfig:Z

.field protected mCamaMaintReq:Z

.field mCm:Landroid/net/ConnectivityManager;

.field protected mConditions4AlwaysOnApns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mDataAuthFail:Z

.field protected mDataConnectionAcHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnabled:[Z

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected volatile mDataStallDetectionEnabled:Z

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

.field protected mDataWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDcHandlerThread:Landroid/os/HandlerThread;

.field protected mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field protected mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

.field protected mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private mEnabledCount:I

.field protected mExcludeImsPacketCount:Z

.field protected volatile mFailFast:Z

.field private mHongBaoObserver:Landroid/database/ContentObserver;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsMobileInterface:Ljava/lang/String;

.field private mImsRecoveryPolicy:[I

.field protected mInVoiceCall:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field private mIsHongbaoModeActivated:Z

.field private mIsMobileDataOffCalled:Z

.field protected mIsProvisioning:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsSetAlwaysOnPdn:Z

.field protected mIsSilentMode:Z

.field protected mIsVoiceCentric:Z

.field protected mIsWifiConnected:Z

.field private mLteRoamingEnableObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileDataSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;

.field protected mNeedDataSelctionPopup:Z

.field protected mNeedRoamingDataSelctionPopup:Z

.field public mNetAuthMgr:Lcom/android/internal/telephony/gsm/NetAuthManager;

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field private mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

.field protected mNoRecvPollCount:I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected mPermanentFailedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPhones:[Lcom/android/internal/telephony/Phone;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPollNetStat:Ljava/lang/Runnable;

.field protected mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected final mPrioritySortedApnContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

.field protected mProvisioningApnAlarmTag:I

.field protected mProvisioningUrl:Ljava/lang/String;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mReplyAc:Lcom/android/internal/util/AsyncChannel;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mTxPkts:J

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z

.field private final mVoLteRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;

.field private final mVoLteSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;

.field protected mWaitingForUserSelection:Z

.field protected sPolicyDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    sput-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsCleanupRequired:Z

    .line 212
    sput v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounter:I

    .line 213
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounterTimeMillis:J

    .line 247
    :try_start_0
    const-string v1, "sbmcgm-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 248
    const-string v1, "DctBase"

    const-string v2, "sbmcgm library loaded"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 519
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEpdgObj:Ljava/lang/Object;

    return-void

    .line 249
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 250
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DctBase"

    const-string v2, "sbmcgm library not found!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 32
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 1413
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 176
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    .line 180
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 185
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 188
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 192
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedDataSelctionPopup:Z

    .line 193
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNeedRoamingDataSelctionPopup:Z

    .line 194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mWaitingForUserSelection:Z

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSilentMode:Z

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataAuthFail:Z

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCamaMaintReq:Z

    .line 207
    const/16 v2, 0x13

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 217
    const-string v2, "default"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 235
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->MAX_RETRY_FOR_PERMANENT_FAILURE:I

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    .line 287
    const-string v2, "gsm.radioreset"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    .line 316
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dunActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dunNetworkType:I

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    .line 355
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 356
    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 357
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 358
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    .line 363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 365
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    .line 377
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 385
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreationConfig:Z

    .line 392
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mExcludeImsPacketCount:Z

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsMobileInterface:Ljava/lang/String;

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSetAlwaysOnPdn:Z

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 414
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 417
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 421
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    .line 425
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 429
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 443
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    .line 449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 452
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 482
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    .line 485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsVoiceCentric:Z

    .line 489
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    .line 491
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mConditions4AlwaysOnApns:Ljava/util/HashMap;

    .line 496
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataWhiteList:Ljava/util/HashSet;

    .line 500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsMobileDataOffCalled:Z

    .line 504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z

    .line 526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 527
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMeteredIfaces:Ljava/util/HashSet;

    .line 530
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 855
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    .line 877
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1177
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mHongBaoObserver:Landroid/database/ContentObserver;

    .line 1185
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$5;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 1414
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1415
    const-string v2, "DCT.constructor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 1417
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v3, 0x42021

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "netpolicy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 1430
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v30

    .line 1431
    .local v30, "phoneSubId":I
    new-instance v22, Landroid/content/IntentFilter;

    invoke-direct/range {v22 .. v22}, Landroid/content/IntentFilter;-><init>()V

    .line 1432
    .local v22, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1433
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1434
    const-string v2, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1435
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1436
    const-string v2, "com.android.internal.telephony.data-stall"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1437
    const-string v2, "com.android.internal.telephony.provisioning_apn_alarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1441
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1

    .line 1444
    const-string v2, "com.android.internal.telephony.preferred_data_1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1445
    const-string v2, "com.android.internal.telephony.GET_DATA_ENABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1446
    const-string v2, "com.android.internal.telephony.SET_DATA_ENABLED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1448
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1449
    const-string v2, "com.android.internal.telephony.preferred_data_2"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->CdmaDunEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1455
    const-string v2, "com.android.internal.telephony.cdma-initializeState"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    :cond_3
    const-string v2, "android.intent.action.SET_POLICY_DATA_ENABLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1465
    const-string v2, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1466
    const-string v2, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1472
    :cond_5
    const-string v2, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    :cond_6
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1478
    const-string v2, "com.android.phone.UsimDownload.end"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1496
    :cond_7
    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1497
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1500
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1501
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1502
    const-string v2, "android.intent.action.EXCLUDE_IMS_PACKET_COUNT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1506
    :cond_9
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1507
    const-string v2, "android.intent.action.retrySetupData"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1511
    :cond_a
    const-string v2, "android.intent.action.PDP_RESET_TEST"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1517
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1518
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isSilentMode()V

    .line 1522
    :cond_b
    const-string v2, "ALL_UNIFIED_CONTROL"

    const-string v3, "ALL_UNIFIED_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 1531
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1532
    const-string v2, "android.intent.action.SET_DEPENDENCY_MET"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1542
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1543
    .local v21, "feature":Ljava/lang/String;
    if-eqz v21, :cond_d

    const-string v2, "hongbao"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1544
    const-string v2, "android.intent.action.ACTION_HONGBAO_RECEIVED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v2, "android.intent.action.ACTION_HONGBAO_MODE_DEACTIVATED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "red_packet_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mHongBaoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z

    .line 1554
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1555
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    const-string v4, "net.def_data_on_boot"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_f

    .line 1567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 1570
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1571
    .local v31, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "disabled_on_boot_key"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1577
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMobileDataSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;

    .line 1578
    const-string v2, "ALL_UNIFIED_CONTROL"

    const-string v3, "ALL_UNIFIED_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMobileDataSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->register()V

    .line 1583
    :cond_10
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLteRoamingEnableObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lte_roaming_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLteRoamingEnableObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1589
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mVoLteSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteSettingObserver;

    .line 1597
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mVoLteRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;

    .line 1599
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "KDI"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mVoLteRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->register()V

    .line 1606
    :cond_11
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "DcHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcHandlerThread:Landroid/os/HandlerThread;

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1608
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1611
    .local v17, "dcHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1612
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsVoiceCentric:Z

    .line 1620
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    .line 1622
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1624
    .local v9, "apnStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v9    # "apnStrings":[Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ForceConnectIMS"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    :cond_13
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsVoiceCentric:Z

    if-eqz v2, :cond_14

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    const-string v3, "emergency"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    :cond_14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mConditions4AlwaysOnApns:Ljava/util/HashMap;

    .line 1649
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigAlwaysOnApn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1651
    .local v8, "alwaysOnApns":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1652
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1653
    .local v13, "argList":[Ljava/lang/String;
    move-object v14, v13

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    aget-object v12, v14, v23

    .line 1654
    .local v12, "arg":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1655
    .local v28, "options":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_18

    .line 1653
    :cond_15
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 1523
    .end local v8    # "alwaysOnApns":Ljava/lang/String;
    .end local v12    # "arg":Ljava/lang/String;
    .end local v13    # "argList":[Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v17    # "dcHandler":Landroid/os/Handler;
    .end local v21    # "feature":Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v24    # "len$":I
    .end local v28    # "options":[Ljava/lang/String;
    .end local v31    # "sp":Landroid/content/SharedPreferences;
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1527
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    goto/16 :goto_1

    .line 1625
    .restart local v17    # "dcHandler":Landroid/os/Handler;
    .restart local v21    # "feature":Ljava/lang/String;
    .restart local v31    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v19

    .line 1626
    .local v19, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Allowed on Data Disabled list is not found"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1659
    .end local v19    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v8    # "alwaysOnApns":Ljava/lang/String;
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v13    # "argList":[Ljava/lang/String;
    .restart local v14    # "arr$":[Ljava/lang/String;
    .restart local v23    # "i$":I
    .restart local v24    # "len$":I
    .restart local v28    # "options":[Ljava/lang/String;
    :cond_18
    const/4 v2, 0x0

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1660
    .local v10, "apnType":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1661
    .local v26, "needRemove":Z
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_19

    .line 1662
    const/16 v26, 0x1

    .line 1663
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1665
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v11

    .line 1666
    .local v11, "apnTypeId":I
    if-eqz v11, :cond_15

    const/4 v2, -0x1

    if-eq v11, v2, :cond_15

    .line 1667
    if-eqz v26, :cond_1a

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from mApnTypesAllowedOnDataDisabled by CscFeature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1672
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnTypesAllowedOnDataDisabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type into mApnTypeAllowedOnDataDisabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1674
    .local v25, "logStr":Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mConditions4AlwaysOnApns:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Set;

    .line 1676
    .local v29, "options4ApnType":Ljava/util/Set;
    if-nez v29, :cond_1b

    .line 1677
    new-instance v29, Ljava/util/HashSet;

    .end local v29    # "options4ApnType":Ljava/util/Set;
    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 1678
    .restart local v29    # "options4ApnType":Ljava/util/Set;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mConditions4AlwaysOnApns:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    :cond_1b
    const/4 v2, 0x1

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 1681
    .local v27, "option":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1684
    .end local v27    # "option":Ljava/lang/String;
    .end local v29    # "options4ApnType":Ljava/util/Set;
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by CscFeature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_4

    .line 1693
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "apnTypeId":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v13    # "argList":[Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v23    # "i$":I
    .end local v24    # "len$":I
    .end local v25    # "logStr":Ljava/lang/String;
    .end local v26    # "needRemove":Z
    .end local v28    # "options":[Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigWhiteListMccmncForDataUse"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1694
    .local v16, "dataWhiteList":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1695
    new-instance v2, Ljava/util/HashSet;

    const-string v3, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataWhiteList:Ljava/util/HashSet;

    .line 1699
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_NamSupport"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1701
    new-instance v2, Lcom/android/internal/telephony/gsm/NetAuthManager;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/gsm/NetAuthManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetAuthMgr:Lcom/android/internal/telephony/gsm/NetAuthManager;

    .line 1704
    :cond_1f
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1706
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1707
    .local v15, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1709
    .local v18, "dos":Ljava/io/DataOutputStream;
    const/16 v2, 0x23

    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1710
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1711
    const/4 v2, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1712
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1713
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1714
    const-string v2, "persist.radio.setnwkmode"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1720
    if-eqz v18, :cond_20

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1721
    :cond_20
    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1726
    :cond_21
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1729
    :try_start_3
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1730
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V

    .line 1732
    const/16 v2, 0x23

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1733
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1734
    const/4 v2, 0x7

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1735
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1737
    const-string v2, "persist.radio.setnwkmode"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1743
    if-eqz v18, :cond_22

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1744
    :cond_22
    if-eqz v15, :cond_23

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1749
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1751
    .end local v15    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    :cond_24
    :goto_9
    return-void

    .line 1713
    .restart local v15    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    :cond_25
    const/4 v2, 0x0

    goto :goto_5

    .line 1722
    :catch_1
    move-exception v20

    .line 1723
    .local v20, "ex":Ljava/lang/Exception;
    const-string v2, "DATA"

    const-string v3, "finally Exception"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1715
    .end local v20    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v19

    .line 1716
    .local v19, "e":Ljava/io/IOException;
    :try_start_5
    const-string v2, "DATA"

    const-string v3, "IOException in send data setting!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1720
    if-eqz v18, :cond_26

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1721
    :cond_26
    if-eqz v15, :cond_24

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    .line 1722
    :catch_3
    move-exception v20

    .line 1723
    .restart local v20    # "ex":Ljava/lang/Exception;
    const-string v2, "DATA"

    const-string v3, "finally Exception"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1719
    .end local v19    # "e":Ljava/io/IOException;
    .end local v20    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1720
    if-eqz v18, :cond_27

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1721
    :cond_27
    if-eqz v15, :cond_28

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1724
    :cond_28
    :goto_a
    throw v2

    .line 1722
    :catch_4
    move-exception v20

    .line 1723
    .restart local v20    # "ex":Ljava/lang/Exception;
    const-string v3, "DATA"

    const-string v4, "finally Exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1736
    .end local v20    # "ex":Ljava/lang/Exception;
    :cond_29
    const/4 v2, 0x0

    goto :goto_7

    .line 1745
    :catch_5
    move-exception v20

    .line 1746
    .restart local v20    # "ex":Ljava/lang/Exception;
    const-string v2, "DATA"

    const-string v3, "finally Exception"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1738
    .end local v20    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v19

    .line 1739
    .restart local v19    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v2, "DATA"

    const-string v3, "IOException in send data setting!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1743
    if-eqz v18, :cond_2a

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1744
    :cond_2a
    if-eqz v15, :cond_24

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    .line 1745
    :catch_7
    move-exception v20

    .line 1746
    .restart local v20    # "ex":Ljava/lang/Exception;
    const-string v2, "DATA"

    const-string v3, "finally Exception"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1742
    .end local v19    # "e":Ljava/io/IOException;
    .end local v20    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    .line 1743
    if-eqz v18, :cond_2b

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 1744
    :cond_2b
    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1747
    :cond_2c
    :goto_b
    throw v2

    .line 1745
    :catch_8
    move-exception v20

    .line 1746
    .restart local v20    # "ex":Ljava/lang/Exception;
    const-string v3, "DATA"

    const-string v4, "finally Exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->changeMobileState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendDataSettingToRIL()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method private changeMobileState(Z)V
    .locals 4
    .param p1, "wifiConn"    # Z

    .prologue
    .line 4143
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    .line 4145
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "hipri"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "hipri"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_2

    .line 4148
    const-string v0, "DctBase"

    const-string v1, "changeMobileState() : mobile -> Suspended (disconnected)"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "WIFI_Connected"

    const-string v2, "default"

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 4157
    :cond_1
    :goto_0
    return-void

    .line 4152
    :cond_2
    const-string v0, "DctBase"

    const-string v1, "changeMobileState() : mobile -> Connected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "WIFI_Disconnected"

    const-string v2, "default"

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0
.end method

.method public static is1xEvdo(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 3880
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSilentMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 4077
    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    .line 4078
    .local v0, "FOTA_MODE_PATH":Ljava/lang/String;
    const-string v1, "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

    .line 4079
    .local v1, "SILENT_REBOOT_PATH":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4080
    .local v7, "mSilentRebootFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 4081
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 4082
    .local v2, "bufReader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 4085
    .local v8, "str":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4086
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4087
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .local v3, "bufReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 4092
    if-eqz v6, :cond_0

    .line 4093
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 4095
    :cond_0
    if-eqz v3, :cond_1

    .line 4096
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v2, v3

    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 4103
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    :cond_2
    :goto_0
    const-string v9, "AUTO_INSTALL"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4104
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSilentMode:Z

    .line 4105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FotaMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 4110
    :cond_3
    :goto_1
    return-void

    .line 4098
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 4099
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 4101
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 4088
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 4089
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4092
    if-eqz v5, :cond_4

    .line 4093
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 4095
    :cond_4
    if-eqz v2, :cond_2

    .line 4096
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 4098
    :catch_2
    move-exception v4

    .line 4099
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4091
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 4092
    :goto_3
    if-eqz v5, :cond_5

    .line 4093
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 4095
    :cond_5
    if-eqz v2, :cond_6

    .line 4096
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4100
    :cond_6
    :goto_4
    throw v9

    .line 4098
    :catch_3
    move-exception v4

    .line 4099
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 4106
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4107
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSilentMode:Z

    .line 4108
    const-string v9, "T-SafetyMode"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4091
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 4088
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2736
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnId"    # I

    .prologue
    .line 2710
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$6;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2730
    :goto_0
    :pswitch_0
    return-void

    .line 2716
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 2721
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2723
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 2710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static native sbmcgm_genId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native sbmcgm_genPasswd(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private sendDataSettingToRIL()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4422
    const-string v8, "ATT"

    sget-object v9, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4452
    :cond_0
    :goto_0
    return-void

    .line 4425
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4426
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4427
    .local v2, "dos":Ljava/io/DataOutputStream;
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v8, :cond_3

    move v1, v6

    .line 4428
    .local v1, "domesticData":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v6

    .line 4430
    .local v5, "roamingData":I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domesticData= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", roamingData="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4433
    const/16 v6, 0x9

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4434
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4435
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4436
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4437
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4439
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4444
    :goto_3
    if-eqz v2, :cond_2

    .line 4445
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 4446
    :cond_2
    if-eqz v0, :cond_0

    .line 4447
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4449
    :catch_0
    move-exception v4

    .line 4450
    .local v4, "ex":Ljava/io/IOException;
    const-string v6, "close fail!!!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "domesticData":I
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "roamingData":I
    :cond_3
    move v1, v7

    .line 4427
    goto :goto_1

    .restart local v1    # "domesticData":I
    :cond_4
    move v5, v7

    .line 4428
    goto :goto_2

    .line 4440
    .restart local v5    # "roamingData":I
    :catch_1
    move-exception v3

    .line 4441
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception occured during refresh Attach APN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private sendMobileDataEnablePopupBroadcast(Z)V
    .locals 11
    .param p1, "enabled"    # Z

    .prologue
    .line 2967
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigPco"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2968
    .local v1, "feature":Ljava/lang/String;
    const-string v8, "VZW_PREPAID"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "VZW_TABLET"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2997
    :cond_0
    :goto_0
    return-void

    .line 2972
    :cond_1
    const-string v8, "persist.sys.pcovalue"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2973
    .local v7, "value":I
    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    :cond_2
    if-eqz p1, :cond_0

    .line 2976
    const/4 v4, 0x0

    .line 2977
    .local v4, "isActivationAgent":Z
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2978
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2979
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2980
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.android.app.setupwizard"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2981
    const/4 v4, 0x1

    .line 2989
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-nez v4, :cond_0

    .line 2990
    const-string v8, "VZW: Sending Broadcast: MOBILE_DATA_ENABLE"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2991
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.pco.MOBILE_DATA_ENABLED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2992
    .local v6, "pcoIntent":Landroid/content/Intent;
    const-string v8, "com.sec.android.app.setupwizard"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2993
    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2994
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "android.permission.INVOKE_CARRIER_SETUP"

    invoke-virtual {v8, v6, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setForNamAccount(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 38
    .param p1, "initialAttachApnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 4191
    const-string v32, ""

    .line 4192
    .local v32, "imsi":Ljava/lang/String;
    const-string v30, ""

    .line 4193
    .local v30, "iccid":Ljava/lang/String;
    const-string v35, ""

    .line 4194
    .local v35, "msisdn":Ljava/lang/String;
    const-string v31, ""

    .line 4195
    .local v31, "imei":Ljava/lang/String;
    const-string v13, ""

    .line 4196
    .local v13, "aid":Ljava/lang/String;
    const-string v14, ""

    .line 4197
    .local v14, "apass":Ljava/lang/String;
    const-string v37, "99999,00101,45001"

    .line 4198
    .local v37, "testNum":Ljava/lang/String;
    const-string v34, "44020"

    .line 4199
    .local v34, "mccmncforSBM":Ljava/lang/String;
    const/16 v33, 0x1

    .line 4200
    .local v33, "mNamState":Z
    const/4 v3, 0x0

    .line 4201
    .local v3, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4203
    .local v36, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v36, :cond_0

    .line 4204
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v32

    .line 4205
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v30

    .line 4206
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v35

    .line 4209
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v4, :cond_1

    .line 4210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v31

    .line 4211
    move-object/from16 v3, p1

    .line 4214
    :cond_1
    const-string v4, "DctBase"

    const-string v5, "[SBMNAM] setForNamAccount()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    if-eqz v3, :cond_2

    .line 4216
    iget-object v13, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 4217
    iget-object v14, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 4220
    :cond_2
    if-eqz v32, :cond_6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4221
    if-eqz v35, :cond_3

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_4

    .line 4222
    :cond_3
    const-string v4, "DctBase"

    const-string v5, "[SBMNAM] setForNamAccount() msisdn length is less than 11."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-lt v4, v5, :cond_b

    .line 4224
    const/4 v4, 0x4

    const/16 v5, 0xf

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 4227
    :goto_0
    const-string v4, "DctBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SBMNAM] setForNamAccount() msisdn is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_4
    if-eqz v31, :cond_5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_6

    .line 4231
    :cond_5
    const-string v4, "DctBase"

    const-string v5, "[SBMNAM] setForNamAccount() imei length is less than 14."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    const-string v31, "12345678901234"

    .line 4233
    const-string v4, "DctBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SBMNAM] setForNamAccount() imei is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :cond_6
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4238
    :cond_7
    const/16 v33, 0x0

    .line 4263
    :cond_8
    :goto_1
    if-nez v13, :cond_9

    .line 4264
    const-string v13, ""

    .line 4267
    :cond_9
    if-nez v14, :cond_a

    .line 4268
    const-string v14, ""

    .line 4271
    :cond_a
    const-string v5, "ril.allowDataEnableByNam"

    if-eqz v33, :cond_15

    const-string v4, "true"

    :goto_2
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    new-instance v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v3    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v3 .. v29}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 4279
    .restart local v3    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v3

    .line 4226
    :cond_b
    const-string v35, "01234567890"

    goto/16 :goto_0

    .line 4240
    :cond_c
    if-nez v13, :cond_d

    if-eqz v14, :cond_e

    :cond_d
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 4241
    :cond_e
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-le v4, v5, :cond_f

    .line 4242
    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 4243
    :cond_f
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-le v4, v5, :cond_10

    .line 4244
    const/4 v4, 0x0

    const/16 v5, 0xe

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 4245
    :cond_10
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_11

    .line 4246
    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 4247
    :cond_11
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x13

    if-le v4, v5, :cond_12

    .line 4248
    const/4 v4, 0x0

    const/16 v5, 0x13

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 4249
    :cond_12
    const-string v4, "DctBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SBMNAM] setForNamAccount() msisdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / imei : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / imsi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / iccid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    const-string v4, "44020"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "NAM"

    const-string v5, "ril.testmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4253
    :cond_13
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sbmcgm_genId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4254
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 4255
    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sbmcgm_genPasswd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 4257
    :cond_14
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 4271
    :cond_15
    const-string v4, "false"

    goto/16 :goto_2
.end method

.method private updateDataStallInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 3388
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v1, p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;)V

    .line 3394
    .local v1, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    const-string v6, "labtest"

    const-string v7, "ril.testmode"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3395
    .local v0, "isTestMode":Z
    if-nez v0, :cond_0

    const-string v6, "TMB"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TMK"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "VZW"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3399
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTcpTxRxSum()V

    .line 3406
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " preTxRxSum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3410
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iget-wide v8, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v4, v6, v8

    .line 3411
    .local v4, "sent":J
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iget-wide v8, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v2, v6, v8

    .line 3419
    .local v2, "received":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_2

    cmp-long v6, v2, v10

    if-lez v6, :cond_2

    .line 3420
    const-string v6, "updateDataStallInfo: IN/OUT"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3421
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 3422
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 3440
    :goto_1
    return-void

    .line 3401
    .end local v2    # "received":J
    .end local v4    # "sent":J
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    goto :goto_0

    .line 3423
    .restart local v2    # "received":J
    .restart local v4    # "sent":J
    :cond_2
    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    cmp-long v6, v2, v10

    if-nez v6, :cond_4

    .line 3424
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_3

    .line 3425
    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 3430
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataStallInfo: OUT sent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSentSinceLastRecv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3427
    :cond_3
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    goto :goto_2

    .line 3433
    :cond_4
    cmp-long v6, v4, v10

    if-nez v6, :cond_5

    cmp-long v6, v2, v10

    if-lez v6, :cond_5

    .line 3434
    const-string v6, "updateDataStallInfo: IN"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3435
    iput-wide v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 3436
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_1

    .line 3438
    :cond_5
    const-string v6, "updateDataStallInfo: NONE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private useV4EpdnInRomaing()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1978
    const/16 v8, 0x12

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "310260"

    aput-object v8, v4, v7

    const-string v8, "310160"

    aput-object v8, v4, v6

    const/4 v8, 0x2

    const-string v9, "310200"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string v9, "310210"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string v9, "310220"

    aput-object v9, v4, v8

    const/4 v8, 0x5

    const-string v9, "310230"

    aput-object v9, v4, v8

    const/4 v8, 0x6

    const-string v9, "310240"

    aput-object v9, v4, v8

    const/4 v8, 0x7

    const-string v9, "310250"

    aput-object v9, v4, v8

    const/16 v8, 0x8

    const-string v9, "310270"

    aput-object v9, v4, v8

    const/16 v8, 0x9

    const-string v9, "310300"

    aput-object v9, v4, v8

    const/16 v8, 0xa

    const-string v9, "310310"

    aput-object v9, v4, v8

    const/16 v8, 0xb

    const-string v9, "310490"

    aput-object v9, v4, v8

    const/16 v8, 0xc

    const-string v9, "310530"

    aput-object v9, v4, v8

    const/16 v8, 0xd

    const-string v9, "310580"

    aput-object v9, v4, v8

    const/16 v8, 0xe

    const-string v9, "310590"

    aput-object v9, v4, v8

    const/16 v8, 0xf

    const-string v9, "310640"

    aput-object v9, v4, v8

    const/16 v8, 0x10

    const-string v9, "310660"

    aput-object v9, v4, v8

    const/16 v8, 0x11

    const-string v9, "310800"

    aput-object v9, v4, v8

    .line 1986
    .local v4, "operator":[Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v9

    aget v9, v9, v7

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 1988
    .local v5, "simOperator":Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1989
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1992
    .end local v3    # "mccmnc":Ljava/lang/String;
    :goto_1
    return v6

    .line 1988
    .restart local v3    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 1992
    goto :goto_1
.end method

.method private useV6OnlyEpdn()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1954
    const/16 v9, 0x13

    new-array v5, v9, [Ljava/lang/String;

    const-string v9, "310260"

    aput-object v9, v5, v8

    const-string v9, "310160"

    aput-object v9, v5, v7

    const/4 v9, 0x2

    const-string v10, "310200"

    aput-object v10, v5, v9

    const/4 v9, 0x3

    const-string v10, "310210"

    aput-object v10, v5, v9

    const/4 v9, 0x4

    const-string v10, "310220"

    aput-object v10, v5, v9

    const/4 v9, 0x5

    const-string v10, "310230"

    aput-object v10, v5, v9

    const/4 v9, 0x6

    const-string v10, "310240"

    aput-object v10, v5, v9

    const/4 v9, 0x7

    const-string v10, "310250"

    aput-object v10, v5, v9

    const/16 v9, 0x8

    const-string v10, "310270"

    aput-object v10, v5, v9

    const/16 v9, 0x9

    const-string v10, "310300"

    aput-object v10, v5, v9

    const/16 v9, 0xa

    const-string v10, "310310"

    aput-object v10, v5, v9

    const/16 v9, 0xb

    const-string v10, "310490"

    aput-object v10, v5, v9

    const/16 v9, 0xc

    const-string v10, "310530"

    aput-object v10, v5, v9

    const/16 v9, 0xd

    const-string v10, "310580"

    aput-object v10, v5, v9

    const/16 v9, 0xe

    const-string v10, "310590"

    aput-object v10, v5, v9

    const/16 v9, 0xf

    const-string v10, "310640"

    aput-object v10, v5, v9

    const/16 v9, 0x10

    const-string v10, "310660"

    aput-object v10, v5, v9

    const/16 v9, 0x11

    const-string v10, "310800"

    aput-object v10, v5, v9

    const/16 v9, 0x12

    const-string v10, "44010"

    aput-object v10, v5, v9

    .line 1963
    .local v5, "operator":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "configNetworkTypeCapability":Ljava/lang/String;
    const-string v9, "BMC-TLS-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return v7

    .line 1968
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v10

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    .line 1970
    .local v6, "simOperator":Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1971
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1970
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "mccmnc":Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 1974
    goto :goto_0
.end method


# virtual methods
.method public abstract CdmaDunEnabled()Z
.end method

.method public abstract DoGprsAttachOrDetach(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public GetRegionForPdpRetry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4339
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 4343
    .local v0, "mccmnc":Ljava/lang/String;
    const-string v1, "26003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "23101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "23105"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "21403"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "22610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "34001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "64700"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4346
    :cond_0
    const-string v1, "GetRegionForPdpRetry() : ORANGE_EUR"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4347
    const-string v1, "ORANGE_EUR"

    .line 4405
    :goto_0
    return-object v1

    .line 4352
    :cond_1
    const-string v1, "23430"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23431"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23432"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23433"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "23486"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4354
    :cond_2
    const-string v1, "GetRegionForPdpRetry() : EE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4355
    const-string v1, "EE"

    goto :goto_0

    .line 4359
    :cond_3
    const-string v1, "52501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "52502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "52503"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "52505"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "52802"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "52811"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4361
    :cond_4
    const-string v1, "GetRegionForPdpRetry() : SINGAPORE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4362
    const-string v1, "SINGAPORE"

    goto :goto_0

    .line 4367
    :cond_5
    const-string v1, "26201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "23001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "20416"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "26002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "20201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "22603"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "21901"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "23102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "21630"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "20420"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4371
    :cond_6
    const-string v1, "GetRegionForPdpRetry() : TMOBILE_EUR"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4372
    const-string v1, "TMOBILE_EUR"

    goto/16 :goto_0

    .line 4377
    :cond_7
    const-string v1, "23415"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "22210"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "21401"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "26202"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "26801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "22801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "29501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4380
    :cond_8
    const-string v1, "GetRegionForPdpRetry() : VODAFONE_EUR"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4381
    const-string v1, "VODAFONE_EUR"

    goto/16 :goto_0

    .line 4386
    :cond_9
    const-string v1, "24007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "24201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "23802"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "23877"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "24008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4388
    :cond_a
    const-string v1, "GetRegionForPdpRetry() : TELE2"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4389
    const-string v1, "TELE2"

    goto/16 :goto_0

    .line 4393
    :cond_b
    const-string v1, "20402"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4394
    const-string v1, "GetRegionForPdpRetry() : TELE2_Netherland"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4395
    const-string v1, "TELE2_Netherland"

    goto/16 :goto_0

    .line 4400
    :cond_c
    const-string v1, "50501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "50503"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4401
    :cond_d
    const-string v1, "GetRegionForPdpRetry() : TEL"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4402
    const-string v1, "TEL"

    goto/16 :goto_0

    .line 4405
    :cond_e
    const-string v1, "UNKNOWN"

    goto/16 :goto_0
.end method

.method public IgnoreDataEnabledOnRoaming()Z
    .locals 1

    .prologue
    .line 3983
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3984
    const/4 v0, 0x1

    .line 3986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected IncludeFixedApn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "requestedApnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1847
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigFixedApn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, "ConfigFixedApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1858
    :cond_0
    :goto_0
    return v3

    .line 1851
    :cond_1
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1852
    .local v2, "types":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1853
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IncludeFixedApn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is Fixed APN."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1855
    const/4 v3, 0x1

    goto :goto_0

    .line 1852
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public abstract IsApnExist(Ljava/lang/String;)Z
.end method

.method public IsOnlyLteDataAllowed(Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4285
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 4287
    .local v0, "mccmnc":Ljava/lang/String;
    const-string v2, "ims"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4288
    const-string v2, "24007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20402"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20801"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20408"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20469"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "23003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "23802"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "23415"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "22210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "26207"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "26202"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "21401"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "26201"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "23001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20810"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "302610"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52501"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52503"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52505"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "42402"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "41903"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "50501"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "50503"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "50502"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "65501"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "34001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "64700"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "22610"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52004"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "26801"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "26006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "28601"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "28602"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "28603"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20811"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4327
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsOnlyLteDataAllowed() : true, apnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4328
    const/4 v1, 0x1

    .line 4333
    :goto_0
    return v1

    .line 4332
    :cond_1
    const-string v2, "IsOnlyLteDataAllowed() : false"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract UpdateIccRecords(Z)V
.end method

.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2629
    packed-switch p1, :pswitch_data_0

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2672
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 2631
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 2633
    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 2635
    :pswitch_2
    const-string v0, "supl"

    goto :goto_0

    .line 2637
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 2639
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 2641
    :pswitch_5
    const-string v0, "ims"

    goto :goto_0

    .line 2643
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 2645
    :pswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 2647
    :pswitch_8
    const-string v0, "ia"

    goto :goto_0

    .line 2649
    :pswitch_9
    const-string v0, "emergency"

    goto :goto_0

    .line 2652
    :pswitch_a
    const-string v0, "mms2"

    goto :goto_0

    .line 2654
    :pswitch_b
    const-string v0, "cmdm"

    goto :goto_0

    .line 2656
    :pswitch_c
    const-string v0, "cmmail"

    goto :goto_0

    .line 2658
    :pswitch_d
    const-string v0, "wap"

    goto :goto_0

    .line 2660
    :pswitch_e
    const-string v0, "bip"

    goto :goto_0

    .line 2662
    :pswitch_f
    const-string v0, "cas"

    goto :goto_0

    .line 2664
    :pswitch_10
    const-string v0, "xcap"

    goto :goto_0

    .line 2666
    :pswitch_11
    const-string v0, "ent1"

    goto :goto_0

    .line 2668
    :pswitch_12
    const-string v0, "ent2"

    goto :goto_0

    .line 2629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2583
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    const/4 v0, 0x0

    .line 2624
    :goto_0
    return v0

    .line 2585
    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2586
    const/4 v0, 0x1

    goto :goto_0

    .line 2587
    :cond_1
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2588
    const/4 v0, 0x2

    goto :goto_0

    .line 2589
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2590
    const/4 v0, 0x3

    goto :goto_0

    .line 2591
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2592
    const/4 v0, 0x4

    goto :goto_0

    .line 2593
    :cond_4
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2594
    const/4 v0, 0x5

    goto :goto_0

    .line 2595
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2596
    const/4 v0, 0x6

    goto :goto_0

    .line 2597
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2598
    const/4 v0, 0x7

    goto :goto_0

    .line 2599
    :cond_7
    const-string v0, "ia"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2600
    const/16 v0, 0x8

    goto :goto_0

    .line 2601
    :cond_8
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2602
    const/16 v0, 0x9

    goto :goto_0

    .line 2604
    :cond_9
    const-string v0, "mms2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2605
    const/16 v0, 0xf

    goto :goto_0

    .line 2606
    :cond_a
    const-string v0, "cmdm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2607
    const/16 v0, 0xa

    goto :goto_0

    .line 2608
    :cond_b
    const-string v0, "cmmail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2609
    const/16 v0, 0xb

    goto :goto_0

    .line 2610
    :cond_c
    const-string v0, "wap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2611
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 2612
    :cond_d
    const-string v0, "bip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2613
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 2614
    :cond_e
    const-string v0, "cas"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2615
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 2616
    :cond_f
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2617
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 2618
    :cond_10
    const-string v0, "ent1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2619
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 2620
    :cond_11
    const-string v0, "ent2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2621
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 2624
    :cond_12
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method protected abstract changeConfigureForLteRoaming()V
.end method

.method protected abstract changeCscUpdateStatus()V
.end method

.method protected abstract changePreferedNetworkByMobileData()V
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 2944
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2945
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2946
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2947
    return-void
.end method

.method protected abstract completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
.end method

.method public abstract currentUpdate()V
.end method

.method public abstract decApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1754
    const-string v2, "DCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1755
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1756
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnect()V

    goto :goto_0

    .line 1758
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1759
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    .line 1760
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1761
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1762
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    if-eqz v2, :cond_1

    .line 1763
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    .line 1765
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1768
    const-string v2, "ALL_UNIFIED_CONTROL"

    const-string v3, "ALL_UNIFIED_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1769
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mMobileDataSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$MobileDataSettingObserver;->unregister()V

    .line 1773
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetworkPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 1777
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mLteRoamingEnableObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$LteRoamingEnableObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1786
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "KDI"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1788
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mVoLteRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$VoLteRoamingSettingObserver;->unregister()V

    .line 1792
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dispose()V

    .line 1793
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->dispose()V

    .line 1796
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 1797
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcHandlerThread:Landroid/os/HandlerThread;

    .line 1800
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_NamSupport"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1802
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetAuthMgr:Lcom/android/internal/telephony/gsm/NetAuthManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetAuthManager;->dispose()V

    .line 1803
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetAuthMgr:Lcom/android/internal/telephony/gsm/NetAuthManager;

    .line 1805
    :cond_5
    return-void
.end method

.method protected doImsRecovery(I)V
    .locals 3
    .param p1, "recoveryAction"    # I

    .prologue
    .line 3907
    const-string v1, "ims"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 3908
    packed-switch p1, :pswitch_data_0

    .line 3927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doImsRecovery() Invalid recoveryAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3932
    :cond_0
    :goto_0
    return-void

    .line 3910
    :pswitch_0
    const-string v1, "doImsRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3911
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    goto :goto_0

    .line 3914
    :pswitch_1
    const-string v1, "doImsRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3915
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "ims"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3916
    .local v0, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 3919
    .end local v0    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_2
    const-string v1, "doImsRecovery() re-register"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3920
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0

    .line 3923
    :pswitch_3
    const-string v1, "doImsRecovery() restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto :goto_0

    .line 3908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected doRecovery()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3300
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_1

    .line 3302
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 3303
    .local v0, "recoveryAction":I
    packed-switch v0, :pswitch_data_0

    .line 3378
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3305
    :pswitch_0
    const v1, 0xc3c6

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3307
    const-string v1, "doRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3308
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 3309
    const-string v1, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3312
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApnEx()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3313
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApnEx()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "vpdn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3314
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 3381
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    .line 3383
    .end local v0    # "recoveryAction":I
    :cond_1
    return-void

    .line 3320
    .restart local v0    # "recoveryAction":I
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z

    if-ne v1, v5, :cond_3

    .line 3321
    const-string v1, "[Hongbao] mIsHongbaoModeActivated = true, skip PDP reset!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 3325
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 3328
    :pswitch_1
    const v1, 0xc3c7

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3329
    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3330
    const-string v1, "pdpReset"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3333
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AIO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MTR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3338
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 3340
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 3344
    :pswitch_2
    const v1, 0xc3c8

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3346
    const-string v1, "doRecovery() re-register"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3347
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 3350
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto :goto_0

    .line 3354
    :pswitch_3
    const v1, 0xc3c9

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3356
    const-string v1, "restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3357
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    .line 3358
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 3367
    :pswitch_4
    const v1, 0xc3ca

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3368
    const-string v1, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3369
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3374
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    .line 3375
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->putRecoveryAction(I)V

    goto/16 :goto_0

    .line 3373
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3755
    const-string v20, "DcTrackerBase:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3756
    const-string v20, " RADIO_TESTS=false"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mInternalDataEnabled="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mUserDataEnabled="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " sPolicyDataEnabed="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3760
    const-string v20, " mDataEnabled:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 3762
    const-string v20, "  mDataEnabled[%d]=%b\n"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v16

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3761
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3764
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3765
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mEnabledCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3766
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mRequestedApnType="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mPhone="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3768
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mActivity="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mTxPkts="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mRxPkts="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mNetStatPollPeriod="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3773
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mNetStatPollEnabled="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mDataStallTxRxSum="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallTxRxSum:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3775
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mDataStallAlarmTag="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mDataStallDetectionEanbled="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mSentSinceLastRecv="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mNoRecvPollCount="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNoRecvPollCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mResolver="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mIsWifiConnected="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mReconnectIntent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mAutoAttachOnCreation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mIsScreenOn="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mUniqueIdGenerator="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3786
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 3788
    .local v9, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    if-eqz v9, :cond_1

    .line 3789
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3793
    :goto_1
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3794
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    .line 3795
    .local v10, "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    if-eqz v10, :cond_2

    .line 3796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    .line 3797
    .local v18, "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mDataConnections: count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3799
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    const-string v20, " *** mDataConnection[%d] \n"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3800
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 3791
    .end local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "mDcSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;>;"
    :cond_1
    const-string v20, " mDcc=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3803
    .restart local v10    # "dcs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    :cond_2
    const-string v20, "mDataConnections=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    :cond_3
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3806
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3807
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 3808
    .local v7, "apnToDcId":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 3809
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 3810
    .local v8, "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mApnToDataConnectonId size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3811
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3812
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v20, " mApnToDataConnectonId[%s]=%d\n"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 3815
    .end local v8    # "apnToDcIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v20, "mApnToDataConnectionId=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3817
    :cond_5
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3818
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3820
    .local v4, "apnCtxs":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v4, :cond_7

    .line 3821
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 3822
    .local v5, "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mApnContexts size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3823
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 3824
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 3826
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_6
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3830
    .end local v5    # "apnCtxsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3831
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mActiveApn="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    .line 3833
    .local v6, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v6, :cond_9

    .line 3834
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mAllApnSettings size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    const/16 v16, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 3836
    const-string v20, " mAllApnSettings[%d]: %s\n"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 3835
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 3828
    .end local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_7
    const-string v20, " mApnContexts=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3838
    .restart local v6    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3842
    :goto_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mPreferredApn="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3843
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mIsPsRestricted="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3844
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mIsDisposed="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mIntentReceiver="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mDataRoamingSettingObserver="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3847
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3849
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    .line 3851
    .local v19, "permanentFailedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v19, :cond_a

    .line 3852
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 3853
    .local v15, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " mPermanentFailedMap size="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3854
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 3855
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v20, " mPermanentFailedMap[%s]=%s\n"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_8

    .line 3840
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v15    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "permanentFailedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_9
    const-string v20, " mAllApnSettings=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3859
    .restart local v19    # "permanentFailedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_a
    const-string v20, "mPermanentFailedMap=null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3861
    :cond_b
    const-string v20, " ***************************************"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3862
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 3864
    return-void
.end method

.method protected fetchApn(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1940
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1941
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1942
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equalsType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1949
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 17

    .prologue
    .line 1863
    const-string v14, "dun"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->IncludeFixedApn(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1868
    const-string v14, "TGY"

    sget-object v15, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "45403"

    const-string v15, "gsm.sim.operator.numeric"

    const-string v16, "none"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1869
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v14, :cond_3

    .line 1870
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1871
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v14, "dun"

    invoke-virtual {v1, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equalsType(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1872
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "apn info : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    move-object v7, v1

    .line 1929
    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-object v7

    .line 1880
    :cond_3
    const-string v14, "net.tethering.noprovisioning"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1881
    const-string v14, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1882
    const/4 v7, 0x0

    goto :goto_0

    .line 1884
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 1885
    .local v5, "bearer":I
    const/4 v13, 0x0

    .line 1886
    .local v13, "retDunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "tether_dun_apn"

    invoke-static {v14, v15}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1887
    .local v3, "apnData":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->arrayFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1888
    .local v8, "dunSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1889
    .local v12, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1890
    .local v7, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 1891
    .local v11, "operator":Ljava/lang/String;
    :goto_1
    iget v14, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-static {v14, v5}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1892
    iget-object v14, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1893
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1894
    if-eqz v12, :cond_5

    iget-object v14, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v15, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v12, v14, v15}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_0

    .line 1890
    .end local v11    # "operator":Ljava/lang/String;
    :cond_6
    const-string v11, ""

    goto :goto_1

    .line 1908
    .end local v7    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1909
    .local v6, "c":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1910
    .local v2, "apnArrayData":[Ljava/lang/String;
    move-object v4, v2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v10, :cond_b

    aget-object v1, v4, v9

    .line 1911
    .local v1, "apn":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v7

    .line 1912
    .restart local v7    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v7, :cond_8

    .line 1913
    iget v14, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-static {v14, v5}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1910
    :cond_8
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1914
    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1915
    if-eqz v12, :cond_8

    iget-object v14, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v15, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v12, v14, v15}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto/16 :goto_0

    .line 1923
    :cond_a
    move-object v13, v7

    goto :goto_3

    .end local v1    # "apn":Ljava/lang/String;
    .end local v7    # "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_b
    move-object v7, v13

    .line 1929
    goto/16 :goto_0
.end method

.method protected fetchEmergencyApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 28

    .prologue
    .line 1996
    const-string v2, "emergency"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchApn(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 1997
    .local v1, "emApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v1, :cond_0

    .line 1998
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->useV6OnlyEpdn()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v15, "IPV6"

    .line 1999
    .local v15, "apnProtocol":Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->useV4EpdnInRomaing()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v16, "IPV4"

    .line 2000
    .local v16, "apnRoamingProtocol":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v1    # "emApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, -0x1

    const-string v3, ""

    const-string v4, "Emergency"

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "emergency"

    aput-object v18, v14, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 2004
    .end local v15    # "apnProtocol":Ljava/lang/String;
    .end local v16    # "apnRoamingProtocol":Ljava/lang/String;
    .restart local v1    # "emApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    return-object v1

    .line 1998
    :cond_1
    const-string v15, "IPV4V6"

    goto :goto_0

    .restart local v15    # "apnProtocol":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v15

    .line 1999
    goto :goto_1
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2020
    const/4 v0, 0x0

    .line 2021
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 2022
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 2024
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    .line 2010
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 2015
    .local v0, "result":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2012
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 2013
    .restart local v0    # "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method protected getAirplaneMode()Z
    .locals 4

    .prologue
    .line 4067
    const/4 v0, 0x0

    .line 4068
    .local v0, "isAirplaneMode":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4069
    const/4 v0, 0x1

    .line 4071
    :cond_0
    return v0
.end method

.method public getAnyDataEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2551
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2552
    :try_start_0
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2553
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v3, :cond_2

    .line 2561
    .local v0, "result":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2563
    :cond_1
    return v0

    .end local v0    # "result":Z
    :cond_2
    move v0, v1

    .line 2553
    goto :goto_0

    .line 2558
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v3, :cond_4

    .restart local v0    # "result":Z
    :goto_1
    goto :goto_0

    .end local v0    # "result":Z
    :cond_4
    move v0, v1

    goto :goto_1

    .line 2561
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1830
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoAttachOnCreation()Z
    .locals 1

    .prologue
    .line 3751
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDataEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2094
    const-string v4, "true"

    const-string v5, "ro.com.android.mobiledata"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2098
    .local v0, "retVal":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2099
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2100
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "data_roaming"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 2114
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 2100
    goto :goto_0

    .line 2104
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 2106
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabled: getIntWithSubId retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v0

    .line 2114
    goto :goto_0

    :cond_2
    move v0, v3

    .line 2104
    goto :goto_1

    .line 2107
    :catch_0
    move-exception v1

    .line 2108
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "true"

    const-string v3, "ro.com.android.mobiledata"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabled: system property ro.com.android.mobiledata retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract getDataOnDunEnabled()Z
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2051
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    :cond_0
    const-string v2, "ALL_UNIFIED_CONTROL"

    const-string v3, "ALL_UNIFIED_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2058
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2061
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2058
    goto :goto_0

    .line 2061
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "data_roaming"

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->appendId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public abstract getDefaultApnName()Ljava/lang/String;
.end method

.method public getDunActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dunActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public abstract getDunDataRxBarLevel()I
.end method

.method public abstract getDunDataState()I
.end method

.method public abstract getDunDataTxBarLevel()I
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 2525
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dunNetworkType:I

    return v0
.end method

.method protected getImsRecoveryAction()I
    .locals 3

    .prologue
    .line 3890
    const/4 v0, -0x1

    .line 3891
    .local v0, "recoveryAction":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRecoveryAction: imsRecoveryStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3892
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsRecoveryPolicy:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3893
    const-string v1, "getImsRecoveryAction: max action already taken"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3903
    :goto_0
    return v0

    .line 3895
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mImsRecoveryPolicy:[I

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    aget v0, v1, v2

    .line 3896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3897
    const-string v1, "ims"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_1

    .line 3898
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    goto :goto_0

    .line 3900
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->imsRecoveryStep:I

    goto :goto_0
.end method

.method protected getInitialMaxRetry()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1215
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eqz v1, :cond_0

    .line 1216
    const/4 v1, 0x0

    .line 1227
    :goto_0
    return v1

    .line 1219
    :cond_0
    const-string v1, "mdc_initial_max_retry"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1221
    .local v0, "value":I
    if-ne v0, v2, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mdc_initial_max_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2677
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 2679
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2680
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2681
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 2683
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getLteDataOnEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2076
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "lte_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLteDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2072
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "lte_roaming_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2688
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 2689
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2690
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2691
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 2693
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public abstract getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public getPreferredApnEx()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    .line 4123
    const-string v0, "getPreferredApnEx() Need to implement in sub classs"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 3285
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3287
    .local v0, "action":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3288
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .param p1, "forDefault"    # Z

    .prologue
    .line 3137
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 3139
    .local v0, "nt":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3146
    :cond_0
    const-string v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3152
    :goto_0
    return-object v1

    .line 3149
    :cond_1
    if-eqz p1, :cond_2

    .line 3150
    const-string v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3152
    :cond_2
    const-string v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2123
    const-string v0, "/sys/class/sec/slot_switch/slot_sel"

    .line 2124
    .local v0, "FILE_PATH":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2125
    .local v2, "in":Ljava/io/BufferedReader;
    const-string v1, "0"

    .line 2127
    .local v1, "current_slot":Ljava/lang/String;
    const-string v3, "CTC"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2155
    :cond_0
    return-object v1
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getSubId()J
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2224
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 2509
    const-string v13, "DATA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unidentified event msg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2226
    :sswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2227
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2228
    .local v4, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2229
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->disconnected()V

    goto :goto_0

    .line 2233
    .end local v4    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :sswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableApn(II)V

    goto :goto_0

    .line 2237
    :sswitch_2
    const/4 v10, 0x0

    .line 2238
    .local v10, "reason":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 2239
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v10    # "reason":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2241
    .restart local v10    # "reason":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 2245
    .end local v10    # "reason":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataStallAlarm(I)V

    goto :goto_0

    .line 2249
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOff()V

    goto :goto_0

    .line 2253
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRoamingOn()V

    goto :goto_0

    .line 2257
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioAvailable()V

    .line 2259
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendDataSettingToRIL()V

    goto :goto_0

    .line 2264
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 2268
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2272
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2276
    :sswitch_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2277
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2289
    :sswitch_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataConnectionTracker.handleMessage: EVENT_DISCONNECT_DC_RETRYING msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2290
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onDisconnectDcRetrying(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2294
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 2298
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 2302
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2306
    :sswitch_f
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_2

    const/4 v12, 0x0

    .line 2307
    .local v12, "tearDown":Z
    :goto_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v14, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 2306
    .end local v12    # "tearDown":Z
    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    .line 2311
    :sswitch_10
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v6, 0x1

    .line 2312
    .local v6, "enabled":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .line 2311
    .end local v6    # "enabled":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 2316
    :sswitch_11
    const-string v13, "EVENT_RESET_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2317
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2321
    :sswitch_12
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v6, 0x1

    .line 2322
    .restart local v6    # "enabled":Z
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2324
    const-string v13, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2326
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AlwaysOnPdn sent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSetAlwaysOnPdn:Z

    if-eqz v13, :cond_6

    const-string v13, "true"

    :goto_4
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mIsWifiConnected: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-eqz v13, :cond_7

    const-string v13, "true"

    :goto_5
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2328
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsSetAlwaysOnPdn:Z

    if-nez v13, :cond_4

    .line 2329
    const-string v13, "Mobile data is turned on while Wi-Fi is connected, so SetAlwaysOnPdn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2330
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyAlwaysOnPdnToRIL(ZLandroid/os/Message;)V

    .line 2334
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .line 2321
    .end local v6    # "enabled":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 2326
    .restart local v6    # "enabled":Z
    :cond_6
    const-string v13, "false"

    goto :goto_4

    :cond_7
    const-string v13, "false"

    goto :goto_5

    .line 2338
    .end local v6    # "enabled":Z
    :sswitch_13
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    const/4 v9, 0x1

    .line 2339
    .local v9, "met":Z
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2340
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2341
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 2342
    const-string v13, "apnType"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2343
    .local v2, "apnType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2344
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2338
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v9    # "met":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    .line 2350
    :sswitch_14
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    const/4 v6, 0x1

    .line 2351
    .restart local v6    # "enabled":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .line 2350
    .end local v6    # "enabled":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 2355
    :sswitch_15
    sget v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c

    const/4 v13, 0x1

    :goto_8
    add-int/2addr v13, v14

    sput v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 2357
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:  sEnableFailFastRefCounter="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2360
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-gez v13, :cond_a

    .line 2361
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: sEnableFailFastRefCounter:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " < 0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2363
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2364
    const/4 v13, 0x0

    sput v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    .line 2366
    .end local v11    # "s":Ljava/lang/String;
    :cond_a
    sget v13, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    if-lez v13, :cond_d

    const/4 v6, 0x1

    .line 2368
    .restart local v6    # "enabled":Z
    :goto_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: enabled="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sEnableFailFastRefCounter="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sEnableFailFastRefCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2371
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    if-eq v13, v6, :cond_0

    .line 2372
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mFailFast:Z

    .line 2373
    if-nez v6, :cond_e

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    .line 2374
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2379
    :cond_b
    const-string v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: start data stall"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2381
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 2355
    .end local v6    # "enabled":Z
    :cond_c
    const/4 v13, -0x1

    goto/16 :goto_8

    .line 2366
    :cond_d
    const/4 v6, 0x0

    goto :goto_9

    .line 2373
    .restart local v6    # "enabled":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_a

    .line 2383
    :cond_f
    const-string v13, "CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA: stop data stall"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 2391
    .end local v6    # "enabled":Z
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2392
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_10

    .line 2394
    :try_start_0
    const-string v13, "provisioningUrl"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2400
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2401
    const-string v13, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url is empty, ignoring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2402
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2403
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 2395
    :catch_0
    move-exception v5

    .line 2396
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_ENABLE_MOBILE_PROVISIONING: provisioning url not a string"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2397
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    goto :goto_b

    .line 2405
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_ENABLE_MOBILE_PROVISIONING: provisioningUrl="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2406
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2407
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startProvisioningApnAlarm()V

    goto/16 :goto_0

    .line 2412
    .end local v3    # "bundle":Landroid/os/Bundle;
    :sswitch_17
    const-string v13, "EVENT_PROVISIONING_APN_ALARM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v14, "default"

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2414
    .local v1, "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectedOrConnecting()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2415
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-ne v13, v14, :cond_12

    .line 2416
    const-string v13, "EVENT_PROVISIONING_APN_ALARM: Disconnecting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2417
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 2418
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopProvisioningApnAlarm()V

    .line 2420
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 2423
    :cond_12
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_PROVISIONING_APN_ALARM: ignore stale tag, mProvisioningApnAlarmTag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != arg1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2429
    :cond_13
    const-string v13, "EVENT_PROVISIONING_APN_ALARM: Not connected ignore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2434
    .end local v1    # "apnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_18
    const-string v13, "CMD_IS_PROVISIONING_APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2437
    const/4 v2, 0x0

    .line 2438
    .restart local v2    # "apnType":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2439
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_14

    .line 2440
    const-string v13, "apnType"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2442
    :cond_14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 2443
    const-string v13, "CMD_IS_PROVISIONING_APN: apnType is empty"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2444
    const/4 v8, 0x0

    .line 2452
    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v8, "isProvApn":Z
    :goto_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_IS_PROVISIONING_APN: ret="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mReplyAc:Lcom/android/internal/util/AsyncChannel;

    const v15, 0x42026

    if-eqz v8, :cond_16

    const/4 v13, 0x1

    :goto_d
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15, v13}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2446
    .end local v8    # "isProvApn":Z
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_15
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isProvisioningApn(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .restart local v8    # "isProvApn":Z
    goto :goto_c

    .line 2448
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isProvApn":Z
    :catch_1
    move-exception v5

    .line 2449
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    const-string v13, "CMD_IS_PROVISIONING_APN: NO provisioning url ignoring"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 2450
    const/4 v8, 0x0

    .restart local v8    # "isProvApn":Z
    goto :goto_c

    .line 2453
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :cond_16
    const/4 v13, 0x0

    goto :goto_d

    .line 2458
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v8    # "isProvApn":Z
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onUpdateIcc()V

    goto/16 :goto_0

    .line 2462
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio()V

    goto/16 :goto_0

    .line 2466
    :sswitch_1b
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_17

    .line 2467
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 2468
    :cond_17
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_0

    .line 2469
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto/16 :goto_0

    .line 2475
    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onPlmnChanged()V

    goto/16 :goto_0

    .line 2480
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 2482
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    goto/16 :goto_0

    .line 2487
    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 2488
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 2491
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onScreenStateChanged(Z)V

    goto/16 :goto_0

    .line 2497
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    .line 2498
    .local v7, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2503
    .end local v7    # "i":Landroid/content/Intent;
    :sswitch_20
    const-string v13, "[Hongbao] Timer expired, set mIsHongbaoModeActivated = false!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2504
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsHongbaoModeActivated:Z

    goto/16 :goto_0

    .line 2224
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1f
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_c
        0x42008 -> :sswitch_d
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_a
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_f
        0x4201a -> :sswitch_1a
        0x4201b -> :sswitch_10
        0x4201c -> :sswitch_11
        0x4201d -> :sswitch_e
        0x4201e -> :sswitch_12
        0x4201f -> :sswitch_13
        0x42020 -> :sswitch_14
        0x42021 -> :sswitch_19
        0x42022 -> :sswitch_b
        0x42023 -> :sswitch_9
        0x42024 -> :sswitch_15
        0x42025 -> :sswitch_16
        0x42026 -> :sswitch_18
        0x42027 -> :sswitch_17
        0x42028 -> :sswitch_1b
        0x4206c -> :sswitch_1c
        0x42070 -> :sswitch_20
    .end sparse-switch
.end method

.method protected handleStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 3208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 3209
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 3210
    return-void
.end method

.method protected handleStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 3220
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 3221
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 3222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 3223
    return-void
.end method

.method public hasMatchedTetherApnSetting()Z
    .locals 3

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1934
    .local v0, "matched":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMatchedTetherApnSetting: APN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1935
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract incApnRefCount(Ljava/lang/String;Landroid/util/LocalLog;)V
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2757
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2758
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2760
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1826
    const/4 v0, 0x0

    return v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1836
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1837
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1838
    .local v0, "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_2

    .line 1839
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1842
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    move v1, v2

    .line 1839
    goto :goto_0

    .line 1842
    .end local v0    # "dunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2749
    if-nez p1, :cond_0

    .line 2750
    const/4 v0, 0x0

    .line 2752
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isCarrierEnabledOnHome(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 9
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3992
    const/4 v6, 0x1

    .line 3993
    .local v6, "carrierEnabledOnHome":Z
    const/4 v7, 0x0

    .line 3995
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 3996
    const/4 v0, 0x0

    .line 4025
    :goto_0
    return v0

    .line 4000
    :cond_0
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4004
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4006
    if-eqz v7, :cond_4

    .line 4007
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4008
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4010
    :cond_1
    const-string v0, "1"

    const-string v1, "carrier_enabled"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4011
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4020
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 4021
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4024
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarrierEnabledOnHome: apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " carrierEnabledOnHome = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    move v0, v6

    .line 4025
    goto/16 :goto_0

    .line 4015
    :cond_4
    :try_start_1
    const-string v0, "isCarrierEnabledOnHome: No record found. "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4017
    :catch_0
    move-exception v8

    .line 4018
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarrierEnabledOnHome: exception caught  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4020
    if-eqz v7, :cond_3

    .line 4021
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4020
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 4021
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public isCarrierEnabledOnRoaming(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 9
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 4030
    const/4 v6, 0x0

    .line 4031
    .local v6, "carrierEnabledOnRoaming":Z
    const/4 v7, 0x0

    .line 4033
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 4034
    const/4 v0, 0x0

    .line 4063
    :goto_0
    return v0

    .line 4038
    :cond_0
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4042
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4044
    if-eqz v7, :cond_4

    .line 4045
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4046
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4048
    :cond_1
    const-string v0, "1"

    const-string v1, "carrier_enabled_roaming"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4049
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 4058
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 4059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4062
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarrierEnabledOnRoaming: apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " carrierEnabledOnRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    move v0, v6

    .line 4063
    goto/16 :goto_0

    .line 4053
    :cond_4
    :try_start_1
    const-string v0, "isCarrierEnabledOnRoaming: No record found."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4055
    :catch_0
    move-exception v8

    .line 4056
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarrierEnabledOnRoaming: exception caught  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4058
    if-eqz v7, :cond_3

    .line 4059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4058
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 4059
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public abstract isCdmaRat(I)Z
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 3296
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isConnecting()Z
.end method

.method protected abstract isDataAllowed()Z
.end method

.method public isDataInLegacy3gpp(I)Z
    .locals 2
    .param p1, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 3869
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method public isDataWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataWhiteList:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4413
    const/4 v0, 0x0

    .line 4416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract isDebugLevelNotLow()Z
.end method

.method public abstract isDisconnected()Z
.end method

.method public isDomesticCard()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3937
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3938
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3939
    .local v1, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    const-string v4, ""

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3941
    .local v0, "mcc":Ljava/lang/String;
    :goto_1
    const-string v4, "450"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3942
    const/4 v3, 0x1

    .line 3944
    :cond_0
    return v3

    .line 3938
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "operator":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 3939
    .restart local v1    # "operator":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public isDomesticModel()Z
    .locals 2

    .prologue
    .line 3949
    const-string v0, "SKT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KTT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LGT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KOO"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3953
    :cond_0
    const/4 v0, 0x1

    .line 3955
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEmergency()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2568
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2570
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2571
    .local v0, "radioTech":I
    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 2579
    .end local v0    # "radioTech":I
    :cond_0
    :goto_0
    return v1

    .line 2575
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2576
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 2577
    .local v1, "result":Z
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmergency: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2577
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected abstract isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
.end method

.method protected abstract isProvisioningApn(Ljava/lang/String;)Z
.end method

.method public isWifiActualConnected()Z
    .locals 6

    .prologue
    .line 4159
    const/4 v2, 0x0

    .line 4161
    .local v2, "res":Z
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 4162
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    .line 4165
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mCm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 4166
    .local v3, "wifiStatus":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 4168
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4170
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 4174
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 4175
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 4177
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAuthenticated() ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4179
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v2

    .line 4183
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiActualConnected() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 4185
    return v2
.end method

.method public isWifiConnected()Z
    .locals 1

    .prologue
    .line 4115
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public needToRunAutoRoamingApn()Z
    .locals 3

    .prologue
    .line 3962
    const-string v1, "ril.simtype"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3971
    .local v0, "simType":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KTT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SKT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3974
    :cond_2
    const/4 v1, 0x1

    .line 3977
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract notifyAlwaysOnPdnToRIL(ZLandroid/os/Message;)V
.end method

.method protected abstract notifyChangeProfileReqToRIL(ILandroid/os/Message;)Z
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2699
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 2700
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 2701
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2704
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2705
    return-void
.end method

.method public abstract notifyDataConnectionForSST(Ljava/lang/String;)V
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2741
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 2742
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2743
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 2741
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2746
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1401
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1403
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1404
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    return-void
.end method

.method protected onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentProvisioningApnAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3651
    const v1, 0x42027

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3653
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "provisioning.apn.alarm.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3654
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3655
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1312
    const-string v11, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1313
    .local v10, "reason":Ljava/lang/String;
    const-string v11, "reconnect_alarm_extra_type"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, "apnType":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v9

    .line 1316
    .local v9, "phoneSubId":I
    const-string v11, "subscription"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1318
    .local v4, "currSubId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActionIntentReconnectAlarm: currSubId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " phoneSubId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1322
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eq v4, v9, :cond_3

    :cond_0
    const-string v11, "mms"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "ril.datacross.slotid"

    const/4 v12, -0x1

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 1327
    :cond_1
    const-string v11, "receive ReconnectAlarm but subId incorrect, ignore"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1386
    :cond_2
    :goto_0
    return-void

    .line 1332
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1333
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object v6, v0

    .line 1334
    .local v6, "otherApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v3, 0x0

    .line 1335
    .local v3, "checkDefault":Z
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    .line 1338
    .local v7, "otherApnContextState":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActionIntentReconnectAlarm: mState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " apnType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " apnContext="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mDataConnectionAsyncChannels="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1342
    const-string v11, "default"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "hipri"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1343
    :cond_4
    const/4 v3, 0x1

    .line 1345
    const-string v11, "default"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1346
    const-string v8, "hipri"

    .line 1350
    .local v8, "otherApnType":Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "otherApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1351
    .restart local v6    # "otherApnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    .line 1352
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkDefault : otherApnType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " otherApnContextState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1354
    .end local v8    # "otherApnType":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1355
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1358
    .local v1, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActionIntentReconnectAlarm: apnContext state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1360
    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v11, :cond_6

    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v11, :cond_a

    .line 1362
    :cond_6
    if-eqz v3, :cond_8

    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v7, v11, :cond_8

    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v7, v11, :cond_8

    .line 1363
    const-string v11, "for default : other apn state is connecting. Do no disassociate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1382
    :goto_2
    const v11, 0x42003

    invoke-virtual {p0, v11, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1384
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1348
    .end local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_7
    const-string v8, "default"

    .restart local v8    # "otherApnType":Ljava/lang/String;
    goto :goto_1

    .line 1366
    .end local v8    # "otherApnType":Ljava/lang/String;
    .restart local v1    # "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    :cond_8
    const-string v11, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v5

    .line 1369
    .local v5, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v5, :cond_9

    .line 1371
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActionIntentReconnectAlarm: tearDown apnContext="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1373
    const-string v11, ""

    const/4 v12, 0x0

    invoke-virtual {v5, v0, v11, v12}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 1375
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1376
    sget-object v11, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_2

    .line 1379
    .end local v5    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_a
    const-string v11, "onActionIntentReconnectAlarm: keep associated"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1389
    const-string v2, "restart_trysetup_alarm_extra_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    .local v1, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1392
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionIntentRestartTrySetupAlarm: mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDataConnectionAsyncChannels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1396
    const v2, 0x42003

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 1397
    return-void
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDataSetupCompleteError(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 8
    .param p1, "tag"    # I

    .prologue
    .line 3443
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    if-eq v4, p1, :cond_0

    .line 3445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3482
    :goto_0
    return-void

    .line 3449
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataStallInfo()V

    .line 3451
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pdp_watchdog_trigger_packet_count"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3456
    .local v0, "hangWatchdogTrigger":I
    const-string v4, "labtest"

    const-string v5, "ril.testmode"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3457
    .local v1, "isTestMode":Z
    if-eqz v1, :cond_1

    .line 3458
    const v0, 0x7fffffff

    .line 3462
    :cond_1
    const/4 v3, 0x0

    .line 3463
    .local v3, "suspectedStall":Z
    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 3465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStallAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " do recovery action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3467
    const/4 v3, 0x1

    .line 3470
    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3471
    .local v2, "numeric":Ljava/lang/String;
    const-string v4, "SKT"

    const-string v5, "EUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "00101"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3472
    const v4, 0x42012

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3481
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 3477
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStallAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSentSinceLastRecv:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onDisconnectDcRetrying(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDunInitializeStateTimerExpired()V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2840
    if-ne p2, v4, :cond_3

    .line 2841
    monitor-enter p0

    .line 2842
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 2843
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 2844
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 2846
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2847
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 2848
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2849
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2850
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    .line 2884
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2846
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2852
    .restart local v1    # "type":Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 2856
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 2857
    .local v0, "didDisable":Z
    monitor-enter p0

    .line 2858
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 2859
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 2860
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    .line 2861
    const/4 v0, 0x1

    .line 2863
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2864
    if-eqz v0, :cond_1

    .line 2865
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 2866
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2867
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 2872
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 2873
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2879
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 2880
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onEnableNewApn()V

    goto :goto_0

    .line 2863
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 2893
    return-void
.end method

.method protected onPlmnChanged()V
    .locals 6

    .prologue
    .line 3659
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 3660
    .local v3, "plmn":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 3661
    :cond_0
    const-string v4, "onPlmnChanged: Skip if current operator numeric is invalid"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    .line 3683
    :cond_1
    :goto_0
    return-void

    .line 3665
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 3666
    :cond_3
    const-string v4, "onPlmnChanged: Skip if NOT permanent failed yet"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3669
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlmnChanged: Number of permanent failed PLMNs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3671
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3672
    .local v1, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    .line 3673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlmnChanged: Current PLMN= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", apnList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3675
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3676
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setPermanentRetryCount(I)V

    goto :goto_1

    .line 3679
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlmnChanged: Not permanent failed plmn. TrySetupdata with : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3680
    const-string v4, "plmnChanged"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2903
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2904
    const/4 v0, 0x0

    .line 2905
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2906
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "reason":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 2908
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 2909
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected abstract onScreenStateChanged(Z)V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 3103
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2931
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2932
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 2933
    if-eqz p1, :cond_0

    .line 2934
    const-string v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2935
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 2940
    :goto_0
    monitor-exit v1

    .line 2941
    return-void

    .line 2937
    :cond_0
    const-string v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2938
    const-string v0, "dataDisabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 2940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3106
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3107
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v2

    .line 3108
    .local v2, "prevEnabled":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 3109
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 3110
    .local v1, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 3111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetPolicyDataEnabled: ignore set PolicyDataEnabled phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3112
    monitor-exit v6

    .line 3134
    .end local v1    # "phoneId":I
    :goto_0
    return-void

    .line 3115
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-eq v5, p1, :cond_1

    .line 3116
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    .line 3119
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3120
    .local v0, "i":Landroid/content/Intent;
    const-string v7, "policyData"

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-nez v5, :cond_2

    move v5, v3

    :goto_1
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3121
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATAUSAGE_REACH_TO_LIMIT = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sPolicyDataEnabled:Z

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 3126
    if-nez v2, :cond_4

    .line 3127
    const-string v3, "dataEnabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 3133
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    :goto_3
    monitor-exit v6

    goto :goto_0

    .end local v2    # "prevEnabled":Z
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i":Landroid/content/Intent;
    .restart local v2    # "prevEnabled":Z
    :cond_2
    move v5, v4

    .line 3120
    goto :goto_1

    :cond_3
    move v3, v4

    .line 3122
    goto :goto_2

    .line 3129
    :cond_4
    :try_start_1
    const-string v3, "specificDisabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3001
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3002
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v1

    .line 3003
    .local v1, "prevEnabled":Z
    const-string v4, "dsds"

    const-string v6, "persist.radio.multisim.config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3011
    :cond_0
    :goto_0
    const-string v4, "ril.datacross.slotid"

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3012
    .local v0, "datacross":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetUserDataEnabled: mUserDataEnabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "enabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3014
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-ne v4, p1, :cond_1

    if-lez v0, :cond_4

    .line 3015
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    .line 3016
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data"

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3020
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.sec.settings.MOBILE_DATA_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3023
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMobileDataEnablePopupBroadcast(Z)V

    .line 3025
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 3027
    if-eqz p1, :cond_7

    .line 3028
    const-string v2, "roamingOn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3034
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAnyDataEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 3035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetUserDataEnabled: preveEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3036
    if-nez v1, :cond_8

    .line 3037
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    .line 3099
    :cond_4
    :goto_2
    monitor-exit v5

    .line 3100
    return-void

    .line 3007
    .end local v0    # "datacross":I
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v3

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    goto/16 :goto_0

    .line 3099
    .end local v1    # "prevEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "prevEnabled":Z
    :cond_6
    move v4, v2

    .line 3007
    goto :goto_3

    .line 3030
    .restart local v0    # "datacross":I
    :cond_7
    :try_start_1
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 3039
    :cond_8
    const-string v2, "specificDisabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected abstract onTetherStateChanged(Z)V
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()V
.end method

.method protected abstract onVoLteOn(Z)V
.end method

.method protected abstract onVoLteRoamingOn()V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3293
    return-void
.end method

.method protected resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 3158
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 3159
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 3160
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    .line 3161
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 3537
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3549
    :goto_0
    return-void

    .line 3540
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v0

    .line 3542
    .local v0, "nextAction":I
    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$500(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3543
    const-string v1, "restartDataStallAlarm: action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3546
    :cond_1
    const-string v1, "restartDataStallAlarm: stop then start."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3547
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 3548
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected abstract restartRadio()V
.end method

.method sendCleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 3736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCleanUpConnection: tearDown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " apnContext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3737
    const v1, 0x42018

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3738
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3739
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3740
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3741
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3742
    return-void

    :cond_0
    move v1, v2

    .line 3738
    goto :goto_0
.end method

.method sendRestartRadio()V
    .locals 2

    .prologue
    .line 3745
    const-string v1, "sendRestartRadio:"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3746
    const v1, 0x4201a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3747
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3748
    return-void
.end method

.method public sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 3200
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3201
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3202
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3203
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3204
    return-void
.end method

.method public sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 3213
    const v1, 0x42028

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3214
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3215
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3216
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 3217
    return-void
.end method

.method setActivity(Lcom/android/internal/telephony/DctConstants$Activity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/telephony/DctConstants$Activity;

    .prologue
    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 1817
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1819
    return-void
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2084
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2085
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: sendMessage: enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CallingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2088
    return-void

    .line 2085
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract setDataOnDunEnabled(Z)V
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2031
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2032
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2034
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "ALL_UNIFIED_CONTROL"

    const-string v4, "ALL_UNIFIED_CONTROL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2035
    const-string v3, "data_roaming"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2043
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendDataSettingToRIL()V

    .line 2045
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 2035
    goto :goto_0

    .line 2038
    :cond_2
    const-string v3, "data_roaming"

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->appendId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected setDataProfilesAsNeeded()V
    .locals 10

    .prologue
    .line 3624
    const-string v7, "setDataProfilesAsNeeded"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3625
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3627
    .local v3, "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3628
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-eqz v7, :cond_0

    .line 3629
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V

    .line 3631
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const/4 v6, 0x0

    .line 3632
    .local v6, "isDup":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 3633
    .local v2, "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3634
    const/4 v6, 0x1

    .line 3638
    .end local v2    # "dpIn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_2
    if-nez v6, :cond_0

    .line 3639
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3643
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isDup":Z
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 3644
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/dataconnection/DataProfile;

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V

    .line 3647
    .end local v3    # "dps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    :cond_4
    return-void
.end method

.method public abstract setDataSubscription(I)V
.end method

.method public setDependencyMet(Z)V
    .locals 6
    .param p1, "met"    # Z

    .prologue
    .line 4130
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4131
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v4, "apnType"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4132
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 4133
    .local v3, "msg":Landroid/os/Message;
    const v4, 0x4201f

    iput v4, v3, Landroid/os/Message;->what:I

    .line 4134
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 4135
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4136
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4134
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 4138
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method protected setEnabled(IZ)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0xe

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 2765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEnabled("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") with old state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabled:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and enabledCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEnabledCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2768
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 2769
    .local v1, "radioTech":I
    const v2, 0x4200d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2770
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2771
    if-eqz p2, :cond_3

    move v2, v3

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2773
    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_4

    .line 2774
    const-string v2, "setEnabled : add delay 1.6 sec for ril rat change time"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2775
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEpdgObj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2776
    const-wide/16 v4, 0x640

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2785
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2787
    if-eq p1, v7, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v9, :cond_0

    if-ne p1, v8, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v4, :cond_2

    .line 2791
    :cond_1
    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2792
    if-ne p1, v7, :cond_6

    .line 2793
    const-string v2, "DctBase"

    const-string v3, "hipri will connected immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "Hipri_Requested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2796
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "Hipri_Requested"

    const-string v4, "hipri"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2831
    :cond_2
    :goto_2
    return-void

    .line 2771
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2780
    :cond_4
    if-nez p1, :cond_5

    .line 2781
    const v2, 0x4200d

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mEpdgObj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeMessages(ILjava/lang/Object;)V

    .line 2783
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2798
    :cond_6
    if-ne p1, v6, :cond_7

    .line 2799
    const-string v2, "DctBase"

    const-string v3, "supl will connected immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "supl_Requested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2802
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "supl_Requested"

    const-string v4, "supl"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_2

    .line 2804
    :cond_7
    if-ne p1, v3, :cond_8

    .line 2805
    const-string v2, "DctBase"

    const-string v3, "MMS will connected immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "MMS_Requested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2808
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "MMS_Requested"

    const-string v4, "mms"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_2

    .line 2810
    :cond_8
    if-ne p1, v9, :cond_9

    .line 2811
    const-string v2, "DctBase"

    const-string v3, "XCAP will connected immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "XCAP_Requested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2814
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "XCAP_Requested"

    const-string v4, "xcap"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_2

    .line 2816
    :cond_9
    if-ne p1, v8, :cond_2

    .line 2817
    const-string v2, "DctBase"

    const-string v3, "BIP will connected immediately"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "BIP_Requested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2820
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "BIP_Requested"

    const-string v4, "bip"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto/16 :goto_2

    .line 2824
    :cond_a
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isWifiActualConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2825
    const-string v2, "DctBase"

    const-string v3, "hipri unreq - revert to suspend"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "Hipri_unRequested"

    const-string v4, "default"

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto/16 :goto_2
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected setInitialAttachApn()V
    .locals 14

    .prologue
    .line 3552
    const/4 v11, 0x0

    .line 3553
    .local v11, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v8, 0x0

    .line 3554
    .local v8, "defaultApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v9, 0x0

    .line 3556
    .local v9, "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: E mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3558
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3559
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3560
    .restart local v9    # "firstApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: firstApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3563
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3565
    .local v7, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v1, "ia"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-eqz v0, :cond_3

    .line 3568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: iaApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3569
    move-object v11, v7

    .line 3586
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v12, 0x0

    .line 3587
    .local v12, "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v11, :cond_4

    .line 3588
    const-string v0, "setInitialAttachApn: using iaApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3589
    move-object v12, v11

    .line 3601
    :cond_2
    :goto_1
    if-nez v12, :cond_7

    .line 3602
    const-string v0, "setInitialAttachApn: X There in no available apn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3621
    :goto_2
    return-void

    .line 3571
    .end local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    if-nez v8, :cond_0

    const-string v0, "default"

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialApn: defaultApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3575
    move-object v8, v7

    goto :goto_0

    .line 3590
    .end local v7    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "initialAttachApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_5

    .line 3591
    const-string v0, "setInitialAttachApn: using mPreferredApn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3592
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto :goto_1

    .line 3593
    :cond_5
    if-eqz v8, :cond_6

    .line 3594
    const-string v0, "setInitialAttachApn: using defaultApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3595
    move-object v12, v8

    goto :goto_1

    .line 3596
    :cond_6
    if-eqz v9, :cond_2

    .line 3597
    const-string v0, "setInitialAttachApn: using firstApnSetting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3598
    move-object v12, v9

    goto :goto_1

    .line 3605
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_NamSupport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3608
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setForNamAccount(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v13

    .line 3609
    .local v13, "namSupportApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "namSupportApnSetting:user - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "namSupportApnSetting:password - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3611
    move-object v12, v13

    .line 3615
    .end local v13    # "namSupportApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialAttachApn: X selected Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3617
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget v3, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v4, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, v12, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_2
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 2924
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2925
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2926
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    .line 2927
    return v2

    .line 2925
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLteDataOnRoamingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2068
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "lte_roaming_mode_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2069
    return-void

    .line 2068
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setPermanentFailedMapForPlmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    .line 3686
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3687
    .local v0, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 3688
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3690
    .restart local v0    # "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPermanentFailedMapForPlmn: plmn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apnList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3692
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPermanentFailedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    return-void
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected startDataStallAlarm(Z)V
    .locals 10
    .param p1, "suspectedStall"    # Z

    .prologue
    .line 3485
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getRecoveryAction()I

    move-result v2

    .line 3488
    .local v2, "nextAction":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallDetectionEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_2

    .line 3491
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$RecoveryAction;->access$500(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3492
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    const v5, 0xea60

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3501
    .local v0, "delayInMs":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 3503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3506
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.data-stall"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3507
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "data.stall.alram.tag"

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3508
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 3514
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3522
    .end local v0    # "delayInMs":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3496
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v5, 0x57e40

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "delayInMs":I
    goto :goto_0

    .line 3519
    .end local v0    # "delayInMs":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: NOT started, no connection tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method startNetStatPoll()V
    .locals 2

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 3169
    const-string v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    .line 3172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 3173
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 3176
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3178
    :cond_1
    return-void
.end method

.method protected startProvisioningApnAlarm()V
    .locals 10

    .prologue
    .line 3697
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "provisioning_apn_alarm_delay_in_ms"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3700
    .local v0, "delayInMs":I
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 3702
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3703
    .local v1, "delayInMsStrg":Ljava/lang/String;
    const-string v4, "persist.debug.prov_apn_alarm"

    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3705
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3710
    .end local v1    # "delayInMsStrg":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 3712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3715
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3716
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "provisioning.apn.alarm.tag"

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3717
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 3719
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3721
    return-void

    .line 3706
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "delayInMsStrg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3707
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startProvisioningApnAlarm: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected stopDataStallAlarm()V
    .locals 2

    .prologue
    .line 3526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDataStallAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataStallAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3529
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmTag:I

    .line 3530
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3531
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 3534
    :cond_0
    return-void
.end method

.method stopNetStatPoll()V
    .locals 1

    .prologue
    .line 3181
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-nez v0, :cond_1

    .line 3183
    const-string v0, "stopNetStatPoll already stopped"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3197
    :cond_0
    :goto_0
    return-void

    .line 3187
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    .line 3188
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3190
    const-string v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    goto :goto_0
.end method

.method protected stopProvisioningApnAlarm()V
    .locals 2

    .prologue
    .line 3725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopProvisioningApnAlarm: current tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProvsioningApnAlarmIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3728
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmTag:I

    .line 3729
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningApnAlarmIntent:Landroid/app/PendingIntent;

    .line 3733
    :cond_0
    return-void
.end method

.method public updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 3230
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;JJ)V

    .line 3231
    .local v0, "preTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 3232
    .local v6, "curTxRxSum":Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->updateTxRxSum()V

    .line 3233
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    .line 3234
    iget-wide v2, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    .line 3240
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    cmp-long v1, v2, v12

    if-gtz v1, :cond_0

    iget-wide v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    cmp-long v1, v2, v12

    if-lez v1, :cond_2

    .line 3241
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mTxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->txPkts:J

    sub-long v10, v2, v4

    .line 3242
    .local v10, "sent":J
    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRxPkts:J

    iget-wide v4, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$TxRxSum;->rxPkts:J

    sub-long v8, v2, v4

    .line 3246
    .local v8, "received":J
    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    cmp-long v1, v8, v12

    if-lez v1, :cond_3

    .line 3247
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 3257
    .local v7, "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v7, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-eqz v1, :cond_2

    .line 3258
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivity: newActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 3262
    :cond_1
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 3263
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 3266
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8    # "received":J
    .end local v10    # "sent":J
    :cond_2
    return-void

    .line 3248
    .restart local v8    # "received":J
    .restart local v10    # "sent":J
    :cond_3
    cmp-long v1, v10, v12

    if-lez v1, :cond_4

    cmp-long v1, v8, v12

    if-nez v1, :cond_4

    .line 3249
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 3250
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    cmp-long v1, v10, v12

    if-nez v1, :cond_5

    cmp-long v1, v8, v12

    if-lez v1, :cond_5

    .line 3251
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 3253
    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v2, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_1
    goto :goto_0

    .end local v7    # "newActivity":Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_1
.end method
