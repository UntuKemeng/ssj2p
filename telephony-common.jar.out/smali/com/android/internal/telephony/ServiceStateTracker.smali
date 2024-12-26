.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$1;,
        Lcom/android/internal/telephony/ServiceStateTracker$SIMStateBroadcastReceiver;,
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;,
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    }
.end annotation


# static fields
.field protected static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field public static final ECM_EXIT_TIMER_WHEN_NOSVC:I = 0x38a4

.field protected static final ENABLE_SURVEY_MODE:Z

.field protected static final EVENT_ACB_INFO_CHANGED:I = 0x6e

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field public static final EVENT_CALL_HANGUP_BEFORE_DEACTIVEPDP:I = 0x64

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_MULTI_TIME_ZONE:I = 0x67

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_DELAYED_RADIO_POWERON:I = 0x81

.field protected static final EVENT_EMERGENCY_TIMEOUT:I = 0x7b

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_EXIT_ECB_MODE_WHEN_NOSVC:I = 0x68

.field protected static final EVENT_GET_ACB_INFO_DONE:I = 0x6f

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_PREF_NETWORK_TYPE_DONE:I = 0x6a

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field protected static final EVENT_HOME_NETWORK_NOTI:I = 0x6c

.field protected static final EVENT_ICCID_READY:I = 0x7c

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_RETRYOVER:I = 0x6a

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_LU_REJECT_CAUSE:I = 0x66

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0x80

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_REFRESH_NITZ_TIME:I = 0x69

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RETRY_GET_PREF_NETWORK_TYPE:I = 0x6b

.field protected static final EVENT_RETRY_NOTIFY_RIL_CONNECTED:I = 0x7f

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SCREEN_OFF:I = 0x7a

.field protected static final EVENT_SCREEN_ON:I = 0x79

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_PREF_NETWORK_TYPE_DONE:I = 0x6d

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_SYNC_NETWORK_SELECTION_STEP1:I = 0x7d

.field protected static final EVENT_SYNC_NETWORK_SELECTION_STEP2:I = 0x7e

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x65

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String;

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field public static final OTASP_COMPLETED:I = 0x4

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field protected static final POLL_PERIOD_MILLIS:I = 0x4e20

.field protected static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final SURVERY_PERMISSION:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field protected static final SURVEY_APP_NAME:Ljava/lang/String; = "com.android.internal.telephony"

.field protected static final SURVEY_FEATURE_ATTACHFAILURE:Ljava/lang/String; = "ATTF"

.field protected static final SURVEY_FEATURE_ATTACHINTERNALFAIL:Ljava/lang/String; = "ATTI"

.field protected static final SURVEY_FEATURE_ATTACHSUCCESS:Ljava/lang/String; = "ATTS"

.field protected static final SURVEY_FEATURE_CALLDROP:Ljava/lang/String; = "DROP"

.field protected static final SURVEY_FEATURE_CALLEND:Ljava/lang/String; = "CEND"

.field protected static final SURVEY_FEATURE_CPCRASH:Ljava/lang/String; = "CRSH"

.field protected static final SURVEY_FEATURE_PDPFAILURE:Ljava/lang/String; = "PDPF"

.field protected static final SURVEY_FEATURE_PDPINTERNALFAIL:Ljava/lang/String; = "PDPI"

.field protected static final SURVEY_FEATURE_PDPSUCCESS:Ljava/lang/String; = "PDPS"

.field protected static final SURVEY_FEATURE_SMSFAILURE:Ljava/lang/String; = "SMSF"

.field protected static final SURVEY_FEATURE_SMSINTERNALFAIL:Ljava/lang/String; = "SMSI"

.field protected static final SURVEY_FEATURE_SMSSUCCESS:Ljava/lang/String; = "SMSS"

.field public static final THRESHOLD_FOR_DATA_RESUME:I = 0x3

.field public static final THRESHOLD_FOR_DATA_SUSPENDED:I = 0x1

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field protected static final VDBG:Z

.field static mSignalBar:I

.field protected static mTimeDisplaySchema:Z


# instance fields
.field protected isReadyReceiveCall:Z

.field protected mAlarmSwitch:Z

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected final mCellInfo:Landroid/telephony/CellInfo;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCurDataSpn:Ljava/lang/String;

.field protected mCurPlmn:Ljava/lang/String;

.field protected mCurShowPlmn:Z

.field protected mCurShowSpn:Z

.field protected mCurSpn:Ljava/lang/String;

.field protected mDataCid:I

.field protected mDataLac:I

.field protected mDataPlmn:Ljava/lang/String;

.field protected mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mDataTac:I

.field protected mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mDeviceShuttingDown:Z

.field protected mDontPollSignalStrength:Z

.field protected mEPDGNetworkName:Ljava/lang/String;

.field protected mForceHasChanged:Z

.field protected mForceUpdateSpnDisplay:Z

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field protected mImsRegistrationOnOff:Z

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field protected mInternalDataSpn:Ljava/lang/String;

.field protected mInternalPlmn:Ljava/lang/String;

.field protected mInternalShowPlmn:Z

.field protected mInternalShowSpn:Z

.field protected mInternalSpn:Ljava/lang/String;

.field protected mInternalSpnDisplayRule:I

.field protected mInternalValidPlmn:Z

.field protected mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastCellInfoListTime:J

.field private mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mMoDataFactor:I

.field protected mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mNewSS:Landroid/telephony/ServiceState;

.field protected final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field private mPendingRadioPowerOff:Z

.field protected mPendingRadioPowerOffAfterDataOff:Z

.field protected mPendingRadioPowerOffAfterDataOffTag:I

.field protected mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field protected mPlmnChangeRegistrants:Landroid/os/RegistrantList;

.field protected mPollingContext:[I

.field protected mPowerOffDelayNeed:Z

.field protected mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field protected mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field protected mRadioOffIntent:Landroid/app/PendingIntent;

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field protected mRetryCount:I

.field protected mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

.field protected mSIMStateReceiver:Landroid/content/BroadcastReceiver;

.field public mSS:Landroid/telephony/ServiceState;

.field protected mSavedAtTime:J

.field protected mSavedTime:J

.field protected mSavedTimeZone:Ljava/lang/String;

.field protected mSignalStrength:Landroid/telephony/SignalStrength;

.field protected mSpnUpdatePending:Z

.field protected mSubId:I

.field protected mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mVoiceCapable:Z

.field protected mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z

.field public newDataRadioTech:I

.field public oldDataRadioTech:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    sput-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->mTimeDisplaySchema:Z

    .line 328
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    .line 339
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bf"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eh"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gh"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ml"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sl"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sn"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    .line 496
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/ServiceStateTracker;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 6
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/16 v5, 0x10

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 534
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 120
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 121
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 127
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 128
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 132
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 138
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 141
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 159
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 176
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 177
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 180
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 182
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 183
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 185
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    .line 193
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 194
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 196
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOff:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isReadyReceiveCall:Z

    .line 204
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRetryCount:I

    .line 323
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->oldDataRadioTech:I

    .line 324
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newDataRadioTech:I

    .line 371
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 372
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 373
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 374
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 377
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 379
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 380
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 381
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 382
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 383
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 384
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 385
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 387
    iput v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalSpnDisplayRule:I

    .line 388
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalSpn:Ljava/lang/String;

    .line 389
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalDataSpn:Ljava/lang/String;

    .line 390
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalPlmn:Ljava/lang/String;

    .line 391
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalShowPlmn:Z

    .line 392
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalShowSpn:Z

    .line 393
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mInternalValidPlmn:Z

    .line 397
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataLac:I

    .line 398
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataCid:I

    .line 399
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataTac:I

    .line 402
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataPlmn:Ljava/lang/String;

    .line 406
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    .line 410
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ConfigNetworkNameForEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    .line 413
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 416
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mForceUpdateSpnDisplay:Z

    .line 422
    new-instance v1, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 426
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mForceHasChanged:Z

    .line 608
    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 535
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 536
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 537
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0x2a

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2c

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 546
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 550
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.network.type"

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x2e

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 554
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x29

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    :cond_1
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6e

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x80

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 566
    new-instance v1, Lcom/android/internal/telephony/ServiceStateTracker$SIMStateBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker$SIMStateBroadcastReceiver;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.internal_sim_state_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 571
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    return-void
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1681
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1683
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1684
    const/4 v1, 0x1

    .line 1686
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setAcbInfo([I)V
    .locals 3
    .param p1, "acbInfo"    # [I

    .prologue
    .line 1732
    if-eqz p1, :cond_0

    array-length v1, p1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1733
    const/4 v1, 0x6

    aget v0, p1, v1

    .line 1734
    .local v0, "moDataValid":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1735
    const/4 v1, 0x7

    aget v1, p1, v1

    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcbInfo - MoDataFactor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1741
    .end local v0    # "moDataValid":I
    :cond_0
    :goto_0
    return-void

    .line 1738
    .restart local v0    # "moDataValid":I
    :cond_1
    const-string v1, "setAcbInfo - MoData is not valid"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    .line 1666
    const-string v0, "force_home_network_bool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 1397
    return-void
.end method

.method public final checkAcBarringState()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1712
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_2

    .line 1713
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1728
    :goto_0
    return v2

    .line 1717
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1718
    .local v1, "sRandom":Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1720
    .local v0, "random":I
    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    if-lt v0, v3, :cond_1

    .line 1721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access to the cell as barred (rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", factor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1724
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to the cell as not barred (rand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", factor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mMoDataFactor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1728
    .end local v0    # "random":I
    .end local v1    # "sRandom":Ljava/util/Random;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected checkCorrectThread()V
    .locals 2

    .prologue
    .line 1563
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1564
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ServiceStateTracker must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1567
    :cond_0
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 831
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 832
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 835
    :cond_0
    return-void
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 824
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 825
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 828
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 587
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 591
    :cond_1
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAcbInfoChanged(Landroid/os/Handler;)V

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 597
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSIMStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 602
    :cond_3
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1538
    const-string v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1549
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 818
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 812
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1481
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V

    .line 1483
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v3

    .line 1484
    .local v3, "ver":I
    const/16 v5, 0x8

    if-lt v3, v5, :cond_2

    .line 1485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST.getAllCellInfo(): CallingUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CallingPid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 1489
    const/16 v5, 0x2b

    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1490
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1491
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1492
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    :try_start_1
    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1511
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1512
    :try_start_3
    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 1514
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v4, :cond_3

    .line 1515
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1523
    :goto_2
    return-object v4

    .line 1495
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1498
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1500
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string v5, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1501
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1504
    :cond_1
    const-string v5, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1505
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1508
    :cond_2
    const-string v5, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1509
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1518
    :cond_3
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST.getAllCellInfo(): X size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " list="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1520
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    monitor-exit v5

    goto :goto_2

    .line 1525
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 1522
    :cond_4
    :try_start_6
    const-string v6, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1523
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method

.method public abstract getCurrentDataConnectionState()I
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method protected getPhoneId()I
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1532
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v1

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    monitor-exit v1

    return-object v0

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 839
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1062
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unhandled message with number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 841
    :sswitch_0
    monitor-enter p0

    .line 842
    :try_start_0
    iget-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v10, :cond_1

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v10, v11, :cond_1

    .line 844
    const-string v10, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 846
    iget v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 847
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 852
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 849
    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!= tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 856
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    goto :goto_0

    .line 860
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 861
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 862
    .local v9, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v11, v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v11

    .line 863
    :try_start_2
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_2

    .line 864
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 865
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 874
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 875
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 876
    iget-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 877
    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 867
    :cond_2
    :try_start_3
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iput-object v10, v9, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 882
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 883
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_3

    .line 884
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :cond_3
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 888
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_UNSOL_CELL_INFO_LIST: size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " list="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 892
    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 893
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 900
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 901
    .local v2, "asyncResult":Landroid/os/AsyncResult;
    if-eqz v2, :cond_5

    iget-object v10, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_5

    .line 903
    const-string v10, "EVENT_IMS_STATE_CHANGED"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 904
    iget-object v10, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v8, v10

    check-cast v8, [I

    .line 905
    .local v8, "responseArray":[I
    array-length v10, v8

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5

    .line 906
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 908
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 906
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 915
    .end local v8    # "responseArray":[I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x2f

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 919
    .end local v2    # "asyncResult":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 920
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    .line 921
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v8, v10

    check-cast v8, [I

    .line 922
    .restart local v8    # "responseArray":[I
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 924
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mEPDGNetworkName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 922
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 932
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v8    # "responseArray":[I
    :sswitch_6
    const-string v10, "EVENT_CALL_HANGUP_BEFORE_DEACTIVEPDP"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 933
    iget-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v10, :cond_0

    .line 934
    const-string v10, "pending radio power off after hangup voice call"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 935
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v10, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 936
    .local v4, "dct":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_0

    .line 940
    .end local v4    # "dct":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    .line 941
    .local v5, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v10

    invoke-virtual {v10, v5, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 942
    monitor-enter p0

    .line 943
    :try_start_4
    iget-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v10, :cond_7

    .line 944
    const-string v10, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 946
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 950
    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v10

    .line 948
    :cond_7
    :try_start_5
    const-string v10, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 955
    .end local v5    # "dds":I
    :sswitch_8
    iget-wide v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    .line 956
    const-string v10, "EVENT_REFRESH_NITZ_TIME"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 957
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->refreshNitzTime(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 959
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore EVENT_REFRESH_NITZ_TIME because mSavedTime is not 0 ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSavedTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :sswitch_9
    const-string v10, "Event EVENT_RADIO_ON Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 966
    const/16 v10, 0xe

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 975
    const-string v10, "Update old service state to ROWER_OFF when radio state is changed to RADIO_ON"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 976
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 977
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    const/16 v11, 0x12

    if-eq v10, v11, :cond_9

    .line 978
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 981
    :cond_9
    const/16 v10, 0x10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 982
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x6f

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getAcbInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 987
    :sswitch_a
    const-string v10, "Event EVENT_GET_ACB_INFO_DONE Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 988
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 989
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 990
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->setAcbInfo([I)V

    goto/16 :goto_0

    .line 996
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v10, "Event EVENT_ACB_INFO_CHANGED Received"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 997
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 998
    .restart local v1    # "asyncRes":Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 999
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->setAcbInfo([I)V

    goto/16 :goto_0

    .line 1005
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    :sswitch_c
    const-string v10, "EVENT_ICCID_READY"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1006
    iget-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isReadyReceiveCall:Z

    if-nez v10, :cond_0

    .line 1007
    const-string v10, "Online booting, notify RIL and Telephony are READY!!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1008
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isReadyReceiveCall:Z

    .line 1009
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyRilConnected()V

    goto/16 :goto_0

    .line 1015
    :sswitch_d
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v11, 0x7e

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1019
    :sswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1020
    .restart local v1    # "asyncRes":Landroid/os/AsyncResult;
    if-eqz v1, :cond_b

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_b

    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_b

    .line 1021
    iget-object v10, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v6, v10

    check-cast v6, [I

    .line 1022
    .local v6, "ints":[I
    const/4 v10, 0x0

    aget v10, v6, v10

    if-nez v10, :cond_a

    .line 1023
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reset saved network selection after network mode change ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1024
    iget-object v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->resetSavedNetworkSelection()V

    goto/16 :goto_0

    .line 1026
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Do NOT reset saved network selection if network selection is automatic ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1029
    .end local v6    # "ints":[I
    :cond_b
    const-string v10, "Do NOT reset saved network selection because network selection mode is failed"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    :sswitch_f
    const-string v10, "EVENT_RETRY_NOTIFY_RIL_CONNECTED"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1036
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1037
    .local v3, "ayncRes":Landroid/os/AsyncResult;
    if-eqz v3, :cond_d

    iget-object v10, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_d

    .line 1038
    iget-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isReadyReceiveCall:Z

    if-eqz v10, :cond_c

    .line 1039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->isReadyReceiveCall:Z

    .line 1041
    :cond_c
    iget v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRetryCount:I

    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 1042
    const/16 v10, 0x7c

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x12c

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1043
    iget v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRetryCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRetryCount:I

    goto/16 :goto_0

    .line 1046
    :cond_d
    const-string v10, "Success to send telephony ready message"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1047
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRetryCount:I

    goto/16 :goto_0

    .line 1053
    .end local v3    # "ayncRes":Landroid/os/AsyncResult;
    :sswitch_10
    const-string v10, "EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x29 -> :sswitch_9
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
        0x2e -> :sswitch_4
        0x2f -> :sswitch_5
        0x64 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6e -> :sswitch_b
        0x6f -> :sswitch_a
        0x7c -> :sswitch_c
        0x7d -> :sswitch_d
        0x7e -> :sswitch_e
        0x7f -> :sswitch_f
        0x80 -> :sswitch_10
        0x3e9 -> :sswitch_7
    .end sparse-switch
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract hangupAndPowerOff()V
.end method

.method protected abstract hangupBeforeDeactivePDP()Z
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    .line 1588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v9, :cond_2

    :cond_0
    move v3, v6

    .line 1621
    :cond_1
    :goto_0
    return v3

    .line 1592
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, "homeNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v9, :cond_4

    :cond_3
    move v3, v6

    .line 1595
    goto :goto_0

    .line 1597
    :cond_4
    const/4 v3, 0x1

    .line 1598
    .local v3, "inSameCountry":Z
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1599
    .local v5, "networkMCC":Ljava/lang/String;
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, "homeMCC":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    .line 1601
    .local v4, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, "homeCountry":Ljava/lang/String;
    const-string v7, "001"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "999"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1604
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 1607
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v3, v6

    .line 1609
    goto :goto_0

    .line 1611
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1612
    if-nez v3, :cond_1

    .line 1616
    const-string v6, "us"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "vi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1617
    const/4 v3, 0x1

    goto :goto_0

    .line 1618
    :cond_9
    const-string v6, "vi"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "us"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1619
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 1831
    const-string v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog - feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1834
    const-string v2, "SST"

    const-string v3, "insertLog : Context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_0

    .line 1839
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1840
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1841
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    if-eqz p3, :cond_2

    .line 1844
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_3

    .line 1846
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1848
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1849
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1851
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1854
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_4
    const-string v2, "SST"

    const-string v3, "insertLog : no permission of survey"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    .prologue
    .line 1570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1572
    .local v0, "value":Z
    :goto_0
    return v0

    .line 1570
    .end local v0    # "value":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChinaTelecomSim(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 1758
    const/4 v0, 0x0

    .line 1759
    .local v0, "isCTCSim":Z
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "45502"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "45507"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "46003"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "46011"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "46012"

    aput-object v3, v1, v2

    .line 1761
    .local v1, "opList":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1764
    return v0
.end method

.method public abstract isConcurrentVoiceAndDataAllowed()Z
.end method

.method public final isDeviceShuttingDown()Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1702
    const-string v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1694
    const-string v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1698
    const-string v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1690
    const-string v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSameGroupRat()Z
    .locals 2

    .prologue
    .line 1787
    const-string v0, "For same group RAT return TRUE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1788
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->oldDataRadioTech:I

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newDataRadioTech:I

    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->isSameGroupRat(II)Z

    move-result v0

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 632
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 633
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "gsm.network.type"

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 637
    return-void
.end method

.method protected notifyRilConnected()V
    .locals 7

    .prologue
    .line 1862
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1863
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1866
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1867
    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1868
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1869
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1871
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0x7f

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1872
    const-string v4, "notifyRilConnected"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    :goto_0
    if-eqz v1, :cond_0

    .line 1879
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1880
    :cond_0
    if-eqz v0, :cond_1

    .line 1881
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1886
    :cond_1
    :goto_1
    return-void

    .line 1873
    :catch_0
    move-exception v2

    .line 1874
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occured during notify ril connected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1883
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1884
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "close fail!!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected notifySignalStrength()Z
    .locals 5

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 614
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    const/4 v1, 0x1

    .line 621
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 622
    return v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SignalStrength not notified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onImsCapabilityChanged()V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/4 v7, 0x3

    .line 1335
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1337
    .local v4, "oldSignalStrength":Landroid/telephony/SignalStrength;
    sget v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    .line 1342
    .local v3, "oldSignalBar":I
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 1343
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/SignalStrength;

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1344
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 1345
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 1351
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1353
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    .line 1354
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-eq v5, v3, :cond_3

    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-lt v5, v7, :cond_0

    if-lt v3, v7, :cond_1

    :cond_0
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 1357
    :cond_1
    const-string v2, "WeakSignal"

    .line 1358
    .local v2, "notiName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1359
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    sget v5, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalBar:I

    if-lt v5, v7, :cond_2

    .line 1360
    const-string v2, "StrongSignal"

    .line 1362
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    .line 1365
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v2    # "notiName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1369
    :goto_1
    return v5

    .line 1347
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1348
    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v1

    .line 1367
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SignalStrength not notified"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1369
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onSignalStrengthResult(Z)Z
    .locals 2
    .param p1, "isGsm"    # Z

    .prologue
    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthResult() - isGsm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    move-result v0

    return v0
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public abstract pollState()V
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 10
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v7, :cond_5

    .line 1223
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070041

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1225
    .local v4, "networkNotClearData":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "currentNetwork":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 1227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 1228
    aget-object v7, v4, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not disconnecting data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1233
    monitor-exit p0

    .line 1308
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "networkNotClearData":[Ljava/lang/String;
    :goto_1
    return-void

    .line 1227
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "networkNotClearData":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1239
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupBeforeDeactivePDP()Z

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit p0

    goto :goto_1

    .line 1307
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v4    # "networkNotClearData":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1243
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v4    # "networkNotClearData":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1244
    .local v5, "numeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    .line 1245
    .local v6, "rat":I
    const-string v7, "00101"

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0xe

    if-eq v6, v7, :cond_3

    .line 1247
    const-string v7, "Skip Data disconnect for PTCRB TC 13.4.3.2, turn off radio right away."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1249
    monitor-exit p0

    goto :goto_1

    .line 1253
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1256
    .local v1, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v7

    if-eq v1, v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v7

    if-eq v1, v7, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1261
    :cond_4
    const-string v7, "radioTurnedOff"

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1262
    const-string v7, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1307
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v1    # "dds":I
    .end local v4    # "networkNotClearData":[Ljava/lang/String;
    .end local v5    # "numeric":Ljava/lang/String;
    .end local v6    # "rat":I
    :cond_5
    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 1265
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v1    # "dds":I
    .restart local v4    # "networkNotClearData":[Ljava/lang/String;
    .restart local v5    # "numeric":Ljava/lang/String;
    .restart local v6    # "rat":I
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isConnecting()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v7

    if-eq v1, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v7

    if-eq v1, v7, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1269
    :cond_7
    const-string v7, "radioTurnedOff"

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1270
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1271
    .local v3, "msg":Landroid/os/Message;
    const/16 v7, 0x26

    iput v7, v3, Landroid/os/Message;->what:I

    .line 1272
    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 1273
    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1274
    const-string v7, "Wait upto 2s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1275
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_2

    .line 1277
    :cond_8
    const-string v7, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    goto :goto_2

    .line 1282
    .end local v3    # "msg":Landroid/os/Message;
    :cond_9
    const-string v7, "radioTurnedOff"

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1283
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v7

    if-eq v1, v7, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1285
    const-string v7, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1288
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    invoke-virtual {v7, v1, p0, v8, v9}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 1290
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1293
    :cond_a
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1294
    .restart local v3    # "msg":Landroid/os/Message;
    const/16 v7, 0x26

    iput v7, v3, Landroid/os/Message;->what:I

    .line 1295
    iget v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 1297
    const-wide/16 v8, 0x2710

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1298
    const-string v7, "Wait upto 10s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1299
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto/16 :goto_2

    .line 1301
    :cond_b
    const-string v7, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1303
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1316
    monitor-enter p0

    .line 1317
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v1, :cond_0

    .line 1318
    const-string v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1319
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1322
    const/4 v0, 0x1

    monitor-exit p0

    .line 1324
    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    goto :goto_0

    .line 1325
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 786
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1089
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1090
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1093
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1095
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1107
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1108
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1113
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1128
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1129
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1131
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 762
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 763
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 768
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 741
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 742
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 744
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 747
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1143
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1145
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1146
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1149
    :cond_0
    return-void
.end method

.method public registerForPlmnChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1776
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1777
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1778
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1180
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1181
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1183
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1186
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1161
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1162
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1167
    :cond_0
    return-void
.end method

.method public registerForRoutingAreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1200
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1201
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1203
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1205
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 720
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 721
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 723
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 726
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 699
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 700
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 705
    :cond_0
    return-void
.end method

.method requestShutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-ne v0, v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 575
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    goto :goto_0
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 1640
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, "resetIwlanRatVal":Z
    const-string v1, "set service state as POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1643
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1646
    const-string v1, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1647
    const/4 v0, 0x1

    .line 1649
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1650
    if-eqz v0, :cond_1

    .line 1651
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1652
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1656
    .end local v0    # "resetIwlanRatVal":Z
    :cond_1
    return-void
.end method

.method protected setChinaMainlandProperty()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1794
    const-string v4, "gsm.operator.numeric"

    const-string v5, "00000"

    invoke-static {v4, v7, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1797
    .local v2, "slot1OperatorNumeric":Ljava/lang/String;
    const-string v4, "gsm.operator.numeric"

    const/4 v5, 0x1

    const-string v6, "00000"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1800
    .local v3, "slot2OperatorNumeric":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1801
    .local v0, "isSlot1Home":Z
    const/4 v1, 0x0

    .line 1803
    .local v1, "isSlot2Home":Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_1

    .line 1804
    const-string v4, "460"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "455"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1806
    :cond_0
    const/4 v0, 0x1

    .line 1810
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_3

    .line 1811
    const-string v4, "460"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "455"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1813
    :cond_2
    const/4 v1, 0x1

    .line 1817
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 1818
    :cond_4
    const-string v4, "gsm.ctc.chinamainland"

    const-string v5, "true"

    invoke-static {v4, v7, v5}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1825
    :goto_0
    return-void

    .line 1822
    :cond_5
    const-string v4, "gsm.ctc.chinamainland"

    const-string v5, "false"

    invoke-static {v4, v7, v5}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected abstract setPowerStateToDesired()V
.end method

.method public setRadioPower(Z)V
    .locals 2
    .param p1, "power"    # Z

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 793
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 796
    return-void
.end method

.method protected abstract setRoamingType(Landroid/telephony/ServiceState;)V
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "prevOperatorNumeric"    # Ljava/lang/String;
    .param p4, "needToFixTimeZone"    # Z

    .prologue
    .line 1418
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1428
    .local v5, "mcc":I
    if-nez v5, :cond_0

    .line 1430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldFixTimeZoneNow: zero mcc, operatorNumeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retVal=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1433
    const/4 v7, 0x0

    .line 1470
    .end local v5    # "mcc":I
    :goto_0
    return v7

    .line 1419
    :catch_0
    move-exception v2

    .line 1421
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retVal=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1424
    const/4 v7, 0x0

    goto :goto_0

    .line 1441
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "mcc":I
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_1
    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1447
    .local v6, "prevMcc":I
    :goto_1
    const/4 v3, 0x0

    .line 1448
    .local v3, "iccCardExist":Z
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v8, :cond_1

    .line 1449
    iget-object v8, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v8, v9, :cond_6

    const/4 v3, 0x1

    .line 1453
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    if-ne v5, v6, :cond_3

    :cond_2
    if-eqz p4, :cond_7

    :cond_3
    const/4 v7, 0x1

    .line 1455
    .local v7, "retVal":Z
    :goto_3
    const-string v8, "us"

    const-string v9, "gsm.operator.iso-country"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ca"

    const-string v9, "gsm.operator.iso-country"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_4
    const/4 v4, 0x1

    .line 1457
    .local v4, "isNorthAmerica":Z
    :goto_4
    if-nez v4, :cond_5

    .line 1458
    if-eqz v3, :cond_9

    if-eq v5, v6, :cond_9

    if-eqz p4, :cond_9

    const/4 v7, 0x1

    .line 1462
    :cond_5
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1463
    .local v0, "ctm":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shouldFixTimeZoneNow: retVal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iccCardExist="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " operatorNumeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevOperatorNumeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevMcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needToFixTimeZone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ltod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1442
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "isNorthAmerica":Z
    .end local v6    # "prevMcc":I
    .end local v7    # "retVal":Z
    :catch_1
    move-exception v2

    .line 1443
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v6, v5, 0x1

    .restart local v6    # "prevMcc":I
    goto/16 :goto_1

    .line 1449
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1453
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1455
    .restart local v7    # "retVal":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 1458
    .restart local v4    # "isNorthAmerica":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public syncNetworkSelectionInfo()V
    .locals 4

    .prologue
    .line 1746
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1747
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1098
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1116
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1134
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 772
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 751
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1152
    return-void
.end method

.method public unregisterForPlmnChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1782
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1190
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1171
    return-void
.end method

.method public unregisterForRoutingAreaChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoutingAreaChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1208
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 730
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 709
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1577
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1579
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromServiceState=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1580
    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1582
    :cond_2
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 3

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 682
    .local v0, "isRegistered":Z
    :goto_0
    if-nez v0, :cond_3

    .line 683
    const-string v1, "SST"

    const-string v2, "updatePhoneObject: Ignore update"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v0    # "isRegistered":Z
    :cond_1
    :goto_1
    return-void

    .line 680
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    .restart local v0    # "isRegistered":Z
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    goto :goto_1
.end method

.method protected abstract updateSpnDisplay()V
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 3

    .prologue
    .line 645
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "useDataRegState":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v1, :cond_0

    .line 651
    const-string v1, "useDataRegStateForDataOnlyDevice: Use DataRegState (No VoiceCapable)"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x1

    .line 655
    :cond_0
    if-eqz v0, :cond_1

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 666
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    if-nez v1, :cond_2

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 674
    .end local v0    # "useDataRegState":Z
    :cond_2
    return-void
.end method
