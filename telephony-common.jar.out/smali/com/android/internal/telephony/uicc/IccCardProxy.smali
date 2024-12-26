.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardProxy$1;,
        Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_EF_LOCK_STATE_GET:Ljava/lang/String; = "android.intent.action.ACTION_EF_LOCK_STATE_GET"

.field private static final ACTION_EF_LOCK_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_EF_LOCK_UPDATED"

.field public static final ACTION_INTERNAL_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.internal_sim_state_changed"

.field private static final BITMASK_EF_LOCK:I = 0x1

.field private static final BYTE_EF_LOCK_REMOTE:I = 0x1

.field private static final BYTE_EF_LOCK_USER:I = 0x2

.field private static final BYTE_SAP_CARD_STATUS:I = 0x1

.field private static final BYTE_SAP_NOTIFICATION:I = 0x0

.field public static final CUSTOM_INTENT:Ljava/lang/String; = "com.samsung.settings.networkmanagement"

.field private static final DBG:Z = true

.field private static final EF_LOCK_OFF:I = 0x0

.field private static final EF_LOCK_ON:I = 0x1

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_BAKCUP_SIM_PIN_LOCK_INFO_REFRESH_DONE:I = 0x3e8

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x1f7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_SIM_PERSO_DONE:I = 0x70

.field private static final EVENT_CHANGE_SIM_PERSO_PASSWORD_DONE:I = 0x71

.field private static final EVENT_ENTER_SIM_PERSO_DONE:I = 0x72

.field private static final EVENT_GET_EF_LOCK_DONE:I = 0x73

.field private static final EVENT_GET_PERSO_STATUS_COMPLETE:I = 0x6e

.field private static final EVENT_GET_SIM_ECC_DONE:I = 0xc8

.field private static final EVENT_ICCID_READY:I = 0x34

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_MDN_READY:I = 0x33

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_NETWORK_SUBSET_LOCKED:I = 0x65

.field private static final EVENT_QUERY_FACILITY_SIM_PERSO_DONE:I = 0x6f

.field private static final EVENT_QUERY_FPLMN_DONE:I = 0x14

.field private static final EVENT_QUERY_OPLMNWACT_DONE:I = 0x15

.field private static final EVENT_QUERY_PLMNWACT_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_SAP_NOTIFICATION:I = 0xc

.field private static final EVENT_SETUP_WIZARD_NOT_START:I = 0x1fe

.field private static final EVENT_SET_EF_LOCK_DONE:I = 0x74

.field private static final EVENT_SIM_LOCK_INFO_DONE:I = 0x67

.field private static final EVENT_SIM_NEED_LOCK_INFO_REFRESH:I = 0x6b

.field private static final EVENT_SIM_PIN2_LOCK_INFO_DONE:I = 0x69

.field private static final EVENT_SIM_PIN_LOCK_INFO_DONE:I = 0x68

.field private static final EVENT_SIM_PIN_LOCK_INFO_REFRESH_DONE:I = 0x6a

.field private static final EVENT_SIM_REFRESH:I = 0x258

.field private static final EVENT_SP_LOCKED:I = 0x66

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final EVENT_UPDATE_LOCK_INFO:I = 0x64

.field private static final EVENT_WAIT_SUBINFO_READY:I = 0x208

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"

.field private static final OEM_PERSO_CHANGE_PASS_MODE:I = 0x4

.field private static final OEM_PERSO_GET_LOCK_STATUS:I = 0x2

.field private static final OEM_PERSO_GET_LOCK_TYPE:I = 0x3

.field private static final OEM_PERSO_LOCK_MODE:I = 0x1

.field private static final OEM_PERSO_UNLOCK_MODE:I = 0x0

.field private static final OEM_PERSO_VERIFY:I = 0x5

.field private static final PIN_MODE_SIM_CRASH:Ljava/lang/String; = "3"

.field private static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field private static final PROP_PERSO_NWK_PUK:Ljava/lang/String; = "ril.perso_nwk_puk"

.field private static final REQ_EF_LOCK_LOCK_USER:I = 0x0

.field private static final REQ_EF_LOCK_UNLOCK_USER:I = 0x1

.field private static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field private static final RESP_EF_LOCK_LOADED:I = 0x0

.field private static final RESP_EF_LOCK_LOCK_USER:I = 0x1

.field private static final RESP_EF_LOCK_REFRESHED:I = 0x3

.field private static final RESP_EF_LOCK_UNLOCK_USER:I = 0x2

.field private static final SAP_CARD_STATUS_INSERTED:I = 0x4

.field private static final SAP_CARD_STATUS_NOT_ACCESSIBLE:I = 0x2

.field private static final SAP_CARD_STATUS_RECOVERED:I = 0x5

.field private static final SAP_CARD_STATUS_REMOVED:I = 0x3

.field private static final SAP_CARD_STATUS_RESET:I = 0x1

.field private static final SAP_CARD_STATUS_UNKNOWN:I = 0x0

.field private static final SAP_STATUS_NOTIFICATION:I = 0x2

.field private static final SIM_PIN_MODE:Ljava/lang/String; = "ril.pin_mode"

.field static dialog:Landroid/app/AlertDialog;

.field private static mCardInfoAvailable:[Z

.field private static sIsCheckingCTCSim:Z

.field private static sIsStartSimManagement:Z


# instance fields
.field final PROP_ECC_LIST:Ljava/lang/String;

.field final PROP_ICC_TYPE:Ljava/lang/String;

.field private flightMode:I

.field private isAlreadyOvercounted:Z

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field public mAlreadyReadEcc:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mDesiredSimPersoLocked:Z

.field private mEFLockRemote:I

.field private mEFLockStatus:I

.field private mEFLockUser:I

.field private mEmergencyNumber:Ljava/lang/String;

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mFPLMN:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mInitialized:Z

.field private mInvalidSimNotiDisplayed:Z

.field private mIsPermDisabledBroadcasted:Z

.field private final mLock:Ljava/lang/Object;

.field private mLteOnCdma:Z

.field private mNetworkLockNotiDisplayed:Z

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

.field private mNoSimDefaultEccNum:Ljava/lang/String;

.field private mOPLMNwAct:Ljava/lang/String;

.field private mPLMNwAct:Ljava/lang/String;

.field private mPersoSimLock:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:Ljava/lang/Integer;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

.field private mSPLockedRegistrants:Landroid/os/RegistrantList;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private setRemoteLockStat:I

.field private setRemoteLockValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardInfoAvailable:[Z

    .line 297
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    .line 300
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    return-void

    .line 295
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 327
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 177
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 179
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 184
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 185
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 186
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 188
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    .line 189
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    .line 192
    iput v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 193
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 194
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 195
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 196
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 197
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 198
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 199
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 201
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 202
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 207
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsPermDisabledBroadcasted:Z

    .line 211
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 214
    const-string v2, "112,911"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    .line 215
    const-string v2, "ro.ril.ecclist"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROP_ECC_LIST:Ljava/lang/String;

    .line 216
    const-string v2, "ril.ICC_TYPE"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROP_ICC_TYPE:Ljava/lang/String;

    .line 217
    const-string v2, "112,911,08,000,110,118,119,999"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNoSimDefaultEccNum:Ljava/lang/String;

    .line 218
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    .line 239
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    .line 243
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    .line 265
    iput v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    .line 266
    iput v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    .line 267
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockStatus:I

    .line 269
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    .line 270
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockStat:I

    .line 285
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    .line 286
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDesiredSimPersoLocked:Z

    .line 289
    new-instance v2, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v2, v5, v5, v5, v5}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    .line 299
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->isAlreadyOvercounted:Z

    .line 309
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    .line 310
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    .line 311
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    .line 312
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    .line 328
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ctor: ci="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    .line 333
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 334
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 336
    const/16 v2, 0xb

    invoke-static {p1, p2, p0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 338
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 340
    const/4 v2, 0x2

    invoke-interface {p2, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 341
    invoke-interface {p2, p0, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    const/16 v2, 0x258

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {p2, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    const/16 v2, 0xc

    invoke-interface {p2, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLteOnCdma = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 350
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    .line 352
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "iccCardIntentfilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    .end local v0    # "iccCardIntentfilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "iccNwkDepersoFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SKT"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    const-string v2, "SKTReady"

    const-string v3, "ril.domesticOtaReady"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "trigger_restart_min_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    const-string v2, "ril.domesticOtaReady"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->queryRequestSetOtaReg(I)V

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 376
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 377
    return-void
.end method

.method private CTCSimCheck()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3213
    const-string v3, "gsm.sim.state"

    const-string v4, "ABSENT"

    invoke-direct {p0, v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3214
    .local v1, "telephonySimState":Ljava/lang/String;
    const-string v3, "gsm.sim.state"

    const-string v4, "ABSENT"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3215
    .local v2, "telephonySimState2":Ljava/lang/String;
    const-string v3, "persist.radio.multisim.stackid"

    const-string v4, "-1"

    invoke-direct {p0, v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3216
    .local v0, "stackid":I
    const-string v3, "CTCSimCheck"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3218
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3219
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3220
    const-string v3, "[CTCSimOff]Is CROSSMAPPING"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3239
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3226
    if-ne v0, v5, :cond_2

    .line 3227
    const-string v3, "gsm.sim.sixmode.slave"

    const-string v4, "true"

    invoke-static {v6, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3228
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3229
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3230
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3237
    :goto_1
    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    goto :goto_0

    .line 3232
    :cond_2
    const-string v3, "gsm.sim.sixmode.slave"

    const-string v4, "true"

    invoke-static {v5, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3233
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3234
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3235
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private CTCSimOff(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "telephonySimState"    # Ljava/lang/String;
    .param p2, "telephonySimState2"    # Ljava/lang/String;
    .param p3, "simDBvalue0"    # I
    .param p4, "simDBvalue1"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 3160
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "IS_CTC"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3161
    .local v1, "isctc":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "IS_CTC2"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3162
    .local v2, "isctc2":I
    const-string v6, "persist.radio.multisim.stackid"

    const-string v7, "-1"

    invoke-direct {p0, v6, v3, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3163
    .local v4, "stackid":I
    const-string v6, "gsm.sim.sixmode.slave"

    const-string v7, "false"

    invoke-static {v3, v6, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3164
    const-string v6, "gsm.sim.sixmode.slave"

    const-string v7, "false"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTCSimOff: stackid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 3166
    const-string v6, "READY"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const-string v6, "READY"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p3, :cond_2

    .line 3167
    :cond_1
    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    .line 3169
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCTCSimOff()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3170
    const-string v6, "CTC off in SubscriptionInfoUpdater "

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3171
    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    .line 3173
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3174
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3175
    const-string v5, "[CTCSimOff]Is CROSSMAPPING"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3210
    :cond_4
    :goto_0
    return-void

    .line 3179
    :cond_5
    if-ne v1, v5, :cond_9

    if-ne v2, v5, :cond_9

    .line 3180
    if-ne v4, v5, :cond_7

    .line 3181
    const-string v6, "gsm.sim.sixmode.slave"

    const-string v7, "true"

    invoke-static {v3, v6, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 3185
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CTCSimOff]sIsCheckingCTCSim"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3186
    sget-boolean v6, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    if-nez v6, :cond_4

    .line 3187
    if-ne v4, v5, :cond_8

    .line 3188
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3189
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3190
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3196
    :goto_2
    const-string v6, "ACTION_SIM_OFF"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 3197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3198
    .local v0, "i":Landroid/content/Intent;
    const-string v6, "1"

    const-string v7, "persist.radio.multisim.stackid"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v5

    .line 3199
    .local v3, "slot":I
    :cond_6
    const-string v6, "com.samsung.intent.action.ACTION_SIM_OFF"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3200
    const-string v6, "slot"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3201
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3202
    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    goto :goto_0

    .line 3183
    .end local v0    # "i":Landroid/content/Intent;
    .end local v3    # "slot":I
    :cond_7
    const-string v6, "gsm.sim.sixmode.slave"

    const-string v7, "true"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3192
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3193
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3194
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 3205
    :cond_9
    const-string v5, "QCOM"

    const-string v6, "MTK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_0
.end method

.method private HandleDetectedState()V
    .locals 2

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    .line 1250
    .local v0, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_0

    .line 1251
    const-string v1, "Send PermBlock Intent in DETECTED + BLOCKED PIN State."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1252
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1253
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1254
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendIntent()V

    .line 1260
    :goto_0
    return-void

    .line 1256
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 130
    sput-boolean p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 130
    sput-boolean p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    return p0
.end method

.method private bcdToString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 2330
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2332
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v3, p2, p3

    if-ge v0, v3, :cond_0

    .line 2335
    aget-byte v3, p1, v0

    and-int/lit8 v2, v3, 0xf

    .line 2336
    .local v2, "v":I
    if-le v2, v4, :cond_1

    .line 2344
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2337
    .restart local v2    # "v":I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2339
    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 2340
    if-gt v2, v4, :cond_0

    .line 2341
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1569
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1570
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIccStateChangedIntent: mPhoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is invalid; Return!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1573
    monitor-exit v2

    .line 1625
    :goto_0
    return-void

    .line 1576
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_2

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIccStateChangedIntent: QuietMode NOT Broadcasting intent ACTION_SIM_STATE_CHANGED  value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1580
    monitor-exit v2

    goto :goto_0

    .line 1624
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1583
    :cond_2
    :try_start_1
    const-string v1, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1600
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1606
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1607
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_4

    .line 1611
    const-string v1, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1612
    const-string v1, "ICC_TYPE"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1615
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1616
    const-string v1, "IMSI"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1617
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v1, :cond_5

    .line 1618
    const-string p1, "****"

    .line 1620
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIccStateChangedIntent intent ACTION_SIM_STATE_CHANGED value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for mPhoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1622
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1624
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1628
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1629
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1630
    const-string v1, "broadcastInternalIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1631
    monitor-exit v2

    .line 1645
    :goto_0
    return-void

    .line 1634
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.internal_sim_state_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1636
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1637
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1638
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1639
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    const-string v1, "phone"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending intent ACTION_INTERNAL_SIM_STATE_CHANGED value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for mPhoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1643
    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1644
    monitor-exit v2

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkSimSlotOff(II)V
    .locals 1
    .param p1, "slot1"    # I
    .param p2, "slot2"    # I

    .prologue
    .line 3138
    if-nez p1, :cond_0

    .line 3139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3140
    const-string v0, "[IccCardProxy]slot1 card off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3142
    :cond_0
    if-nez p2, :cond_1

    .line 3143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simSlotOff(I)V

    .line 3144
    const-string v0, "[IccCardProxy]slot2 card off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3146
    :cond_1
    return-void
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1741
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1755
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1742
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 1743
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1744
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1745
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1746
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 1747
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 1748
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1750
    :pswitch_7
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1751
    :pswitch_8
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1752
    :pswitch_9
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1754
    :pswitch_a
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1764
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1773
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1765
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 1766
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 1767
    :pswitch_3
    const-string v0, "NETWORK"

    goto :goto_0

    .line 1768
    :pswitch_4
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 1770
    :pswitch_5
    const-string v0, "PERSO"

    goto :goto_0

    .line 1772
    :pswitch_6
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 1764
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private getIccUsimPersoStatus()V
    .locals 5

    .prologue
    .line 2350
    const-string v1, "getIccUsimPersoStatus"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2351
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QCOM"

    const-string v2, "MTK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2354
    const/4 v1, 0x2

    const-string v2, "0000"

    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    .line 2365
    :goto_0
    return-void

    .line 2357
    :cond_0
    const/4 v0, 0x7

    .line 2361
    .local v0, "serviceClassX":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v2, "PH-SIM"

    const-string v3, ""

    const/16 v4, 0x6f

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 2904
    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "lockMode"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2473
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2474
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2477
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, 0x6

    .line 2479
    .local v4, "fileSize":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeSimPerso  Lock Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " // data :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2482
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2483
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2484
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2485
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2486
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2487
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2498
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2499
    :goto_1
    return-void

    .line 2494
    :catch_0
    move-exception v3

    .line 2495
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "finally Exception"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2488
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 2489
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "IOException in invokeSimPerso!!!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2493
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2494
    :catch_2
    move-exception v3

    .line 2495
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v5, "finally Exception"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2492
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2493
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2496
    :goto_2
    throw v5

    .line 2494
    :catch_3
    move-exception v3

    .line 2495
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v6, "finally Exception"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isNwLockByManufactureOperator()Z
    .locals 2

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_USIM_MANUFACTURE_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, v1, :cond_0

    .line 1444
    const/4 v0, 0x1

    .line 1446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2642
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2644
    const-string v0, "IccCardProxy"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :goto_0
    return-void

    .line 2646
    :cond_0
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2651
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2653
    const-string v0, "IccCardProxy"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :goto_0
    return-void

    .line 2655
    :cond_0
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2661
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2663
    const-string v0, "IccCardProxy"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :goto_0
    return-void

    .line 2665
    :cond_0
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2670
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2672
    const-string v0, "IccCardProxy"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :goto_0
    return-void

    .line 2674
    :cond_0
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 12
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1396
    iput-boolean v11, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    .line 1397
    const/4 v5, 0x0

    .line 1398
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1399
    .local v6, "title":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1401
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigOperatorLock"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1402
    .local v2, "lConfigOperatorLock":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_2

    const-string v7, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "TFN"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1404
    const v7, 0x104097d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1405
    const v7, 0x104097e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1416
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1417
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1418
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1419
    const v7, 0x1080ab9

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1420
    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1421
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1422
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1424
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_1

    const-string v7, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "TFN"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1426
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1428
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1431
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v8, 0x111

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1433
    return-void

    .line 1408
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_2
    const v7, 0x1040979

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1409
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_3

    .line 1410
    const v7, 0x104097b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1411
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v7, :cond_0

    .line 1412
    const v7, 0x104097c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private makeNetworkLockNotification()V
    .locals 6

    .prologue
    .line 1451
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    .line 1453
    const/4 v2, 0x4

    .line 1454
    .local v2, "theme":I
    const-string v3, "ro.build.scafe.cream"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "white"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1455
    const/4 v2, 0x5

    .line 1458
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1460
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x104097f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040980

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    .line 1467
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1469
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1470
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1471
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1472
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1473
    return-void
.end method

.method private notifyEFLockStatus(IIII)V
    .locals 4
    .param p1, "restype"    # I
    .param p2, "resapdu"    # I
    .param p3, "mLockUser"    # I
    .param p4, "mLockRemote"    # I

    .prologue
    const/4 v3, 0x1

    .line 3030
    const/4 v0, 0x0

    .line 3031
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockStatus:I

    if-ne v1, v3, :cond_1

    .line 3032
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_EF_LOCK_STATE_GET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3033
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "IccCardProxy"

    const-string v2, "notifyEFLockStatus: send STATE_GET intent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockStatus:I

    .line 3040
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightmodecheck()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 3041
    const-string v1, "IccCardProxy"

    const-string v2, "notifyEFLockStatus: flightmode is ON"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :goto_1
    iput p3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    .line 3046
    iput p4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    .line 3048
    if-nez v0, :cond_3

    .line 3049
    const-string v1, "IccCardProxy"

    const-string v2, ": intent is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :goto_2
    return-void

    .line 3036
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockStatus:I

    if-nez v1, :cond_0

    .line 3037
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3038
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "IccCardProxy"

    const-string v2, "notifyEFLockStatus: send LOCK_UPDATED intent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3043
    :cond_2
    const-string v1, "IccCardProxy"

    const-string v2, "notifyEFLockStatus: flightmode is OFF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3053
    :cond_3
    const-string v1, "responseType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3054
    const-string v1, "responseApdu"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3055
    const-string v1, "efLockUser"

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3056
    const-string v1, "efLockRemote"

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3058
    const-string v1, "IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": notify   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    const-string v1, "IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": APDU res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const-string v1, "IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": UserLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const-string v1, "IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": RemoteLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v2, 0x0

    .line 2506
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2518
    :goto_0
    return-void

    .line 2511
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 2512
    .local v0, "ints":[I
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 2513
    aget v1, v0, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    .line 2514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility Usim Perso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2513
    goto :goto_1

    .line 2516
    :cond_2
    const-string v1, "[IccCard] Bogus facility Usim Perso response"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRecordsLoaded()V
    .locals 2

    .prologue
    .line 1137
    const-string v0, "LOADED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 0

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 1127
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 1128
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 0

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 1132
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 1133
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 1134
    return-void
.end method

.method private prepareStartSimManagement()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sIsStartSimManagement : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2873
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    if-nez v4, :cond_5

    .line 2874
    const-string v4, "ril.FS"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2875
    .local v0, "fs_prop":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 2877
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2878
    const-string v1, "0"

    .line 2881
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "99999"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_2

    :cond_1
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2882
    :cond_2
    const-string v4, "With Factory SIM. SKIP startSimManagement"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2902
    .end local v0    # "fs_prop":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 2885
    .restart local v0    # "fs_prop":Ljava/lang/String;
    .restart local v1    # "imsi":Ljava/lang/String;
    :cond_4
    const-string v4, "Calling startSimManagement"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2886
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->startSimManagement()V

    goto :goto_0

    .line 2889
    .end local v0    # "fs_prop":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2890
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "IS_CTC"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2891
    .local v2, "isctc":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "IS_CTC2"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2892
    .local v3, "isctc2":I
    if-ne v2, v6, :cond_3

    if-ne v3, v6, :cond_3

    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    if-nez v4, :cond_3

    .line 2893
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCTCSimOff()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2894
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->CTCSimCheck()V

    .line 2895
    const-string v4, "CTC off in SubscriptionInfoUpdater "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2897
    :cond_6
    sput-boolean v6, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    goto :goto_0
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 1697
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1698
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_0

    .line 1700
    monitor-exit v3

    .line 1725
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 1703
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 1704
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1705
    monitor-exit v3

    goto :goto_0

    .line 1724
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1708
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 1709
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1724
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1711
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1712
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 1715
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1709
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryRequestSetOtaReg(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    .line 2448
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2449
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2451
    .local v1, "dos":Ljava/io/DataOutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryRequestSetOtaReg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2454
    const/4 v4, 0x5

    .line 2455
    .local v4, "fileSize":I
    const/16 v5, 0x16

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2456
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2457
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2458
    int-to-byte v5, p1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2469
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2470
    :goto_1
    return-void

    .line 2465
    :catch_0
    move-exception v3

    .line 2466
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "finally Exception"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2459
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 2460
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "IOException in queryRequestSetOtaReg!!!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2464
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2465
    :catch_2
    move-exception v3

    .line 2466
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v5, "finally Exception"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2463
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2464
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2467
    :goto_2
    throw v5

    .line 2465
    :catch_3
    move-exception v3

    .line 2466
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v6, "finally Exception"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private read2GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2279
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2281
    .local v2, "eccString":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 2282
    .local v1, "data":[B
    array-length v7, v1

    div-int/lit8 v5, v7, 0x3

    .line 2284
    .local v5, "numOfEcc":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2285
    mul-int/lit8 v7, v4, 0x3

    const/4 v8, 0x3

    invoke-direct {p0, v1, v7, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 2286
    .local v6, "tempEccString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2287
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2288
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2290
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2284
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2293
    .end local v1    # "data":[B
    .end local v4    # "i":I
    .end local v5    # "numOfEcc":I
    .end local v6    # "tempEccString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2294
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process 2G ECC failed -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2297
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read2GEccList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2298
    return-object v2
.end method

.method private read3GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2302
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v2, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2304
    .local v2, "eccString":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 2306
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "s":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 2307
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 2309
    .local v5, "record":[B
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {p0, v5, v8, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->bcdToString([BII)Ljava/lang/String;

    move-result-object v7

    .line 2310
    .local v7, "tempEccString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 2311
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2312
    const/16 v8, 0x2c

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2314
    :cond_0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2317
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2318
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2321
    .end local v1    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v4    # "i":I
    .end local v5    # "record":[B
    .end local v6    # "s":I
    .end local v7    # "tempEccString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2322
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process 3G ECC failed -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2325
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read3GEccList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2326
    return-object v2
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1489
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1493
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1494
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x33

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForMdnReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x34

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForIccIdReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1500
    :cond_2
    return-void
.end method

.method private removeInvalidSIMNotification()V
    .locals 2

    .prologue
    .line 1436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    .line 1437
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1439
    return-void
.end method

.method private sendIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2126
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsPermDisabledBroadcasted:Z

    if-eqz v0, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 2130
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsPermDisabledBroadcasted:Z

    .line 2131
    const-string v0, "PUK permenant blocked"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2141
    const-string v0, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2142
    const-string v0, "ABSENT"

    const-string v1, "PERM_DISABLED"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPersoRetryCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2148
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    goto :goto_0

    .line 2150
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    goto :goto_0
.end method

.method private sendPersoBlockedIntent(Ljava/lang/String;)V
    .locals 5
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 2620
    const-string v2, "Perso blocked"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2621
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->isAlreadyOvercounted:Z

    if-eqz v2, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    const-string v2, "sending broadcast"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2624
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2625
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.app.RilErrorNotifier"

    const-string v4, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2627
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2630
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RIL_PERSO_BLOCKED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2631
    .local v1, "intent_1":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.app.RilErrorNotifier"

    const-string v4, "com.sec.app.RilErrorNotifier.PhoneErrorReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2633
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2636
    const-string v2, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2637
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->isAlreadyOvercounted:Z

    goto :goto_0
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1728
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 1729
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: mPhoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid; Return!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1651
    monitor-exit v1

    .line 1694
    :goto_0
    return-void

    .line 1654
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_2

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: !override and newstate unchanged from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1656
    monitor-exit v1

    goto :goto_0

    .line 1693
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1658
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExternalState: set mPhoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mExternalState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 1663
    const-string v0, "LOCKED"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1664
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_3

    .line 1677
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1678
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    if-eqz v0, :cond_3

    .line 1680
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->removeInvalidSIMNotification()V

    .line 1684
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1685
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_4

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 1687
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "IS_CTC"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1693
    :cond_4
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    .line 1666
    :cond_5
    const-string v0, "READY"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1672
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1689
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "IS_CTC2"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2608
    invoke-static {p1, p2, p3}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2609
    return-void
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2613
    return-void
.end method

.method private simSlotOff(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 3149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[simSlotOff]slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 3150
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 3151
    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    const-string v1, "QCOM"

    const-string v2, "MTK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3155
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V

    .line 3157
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 1506
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V

    .line 1509
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForSPLocked(Landroid/os/Handler;)V

    .line 1511
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 1512
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1513
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 1514
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 1515
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForMdnReady(Landroid/os/Handler;)V

    .line 1517
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForIccIdReady(Landroid/os/Handler;)V

    .line 1520
    :cond_a
    return-void
.end method

.method private updateExternalState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1266
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v2, :cond_1

    .line 1267
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_4

    .line 1281
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    if-eqz v2, :cond_2

    .line 1282
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->removeInvalidSIMNotification()V

    .line 1285
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    .line 1287
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 1288
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1289
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->dialog:Landroid/app/AlertDialog;

    .line 1291
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1292
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    if-eqz v2, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->removeInvalidSIMNotification()V

    goto :goto_0

    .line 1300
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_7

    .line 1301
    const-string v2, "3"

    const-string v3, "ril.pin_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isNwLockByManufactureOperator()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1302
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1304
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1305
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1306
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1309
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1312
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isNwLockByManufactureOperator()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1313
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    if-nez v2, :cond_0

    .line 1314
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    .line 1315
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeNetworkLockNotification()V

    .line 1316
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1320
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1325
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_8

    .line 1326
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1330
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 1331
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1334
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    goto/16 :goto_0

    .line 1337
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1340
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 1341
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_9

    .line 1342
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1343
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1344
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendIntent()V

    goto/16 :goto_0

    .line 1346
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1349
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v2, v3, :cond_a

    .line 1351
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1353
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1354
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v2, v3, :cond_b

    .line 1356
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1357
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1358
    :cond_b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v2, v3, :cond_c

    .line 1360
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1361
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1362
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v2, v3, :cond_d

    .line 1364
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1365
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1366
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v2, v3, :cond_e

    .line 1368
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1369
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeInvalidSIMNotification(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1370
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isNwLockByManufactureOperator()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1371
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    if-nez v2, :cond_0

    .line 1372
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockNotiDisplayed:Z

    .line 1373
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->makeNetworkLockNotification()V

    .line 1374
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1378
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1380
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1382
    :cond_10
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1387
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    if-eqz v2, :cond_11

    .line 1388
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->removeInvalidSIMNotification()V

    .line 1390
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1141
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1142
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 1143
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 1144
    .local v5, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v1, 0x0

    .line 1145
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 1147
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccUsimPersoStatus()V

    .line 1159
    :cond_0
    if-eqz v2, :cond_7

    .line 1160
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    .line 1161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 1162
    const-string v6, "CTC"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIccAvailability mPhoneId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1164
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 1165
    const-string v6, "ril.ICC_TYPE"

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "0"

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, "iccType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccType = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1167
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1168
    :cond_1
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 1175
    .end local v0    # "iccType":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1176
    const-string v6, "ril.ICC_TYPE"

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "0"

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .restart local v0    # "iccType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccType = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1178
    const-string v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1179
    :cond_3
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 1185
    .end local v0    # "iccType":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "LGT"

    aput-object v9, v6, v8

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1186
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1190
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v6, v10, :cond_6

    .line 1191
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 1192
    .local v4, "newUsimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v6, v8, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v6, v8, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v6, v8, :cond_6

    .line 1195
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1199
    .end local v4    # "newUsimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_6
    if-eqz v1, :cond_7

    .line 1200
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1204
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v6, v3, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v6, v1, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v6, v2, :cond_9

    .line 1205
    :cond_8
    const-string v6, "Icc changed. Reregestering."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1206
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    .line 1207
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 1208
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1209
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1210
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    .line 1212
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V

    .line 1221
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateSimLockInfo()V

    .line 1224
    monitor-exit v7

    .line 1225
    return-void

    .line 1169
    .restart local v0    # "iccType":Ljava/lang/String;
    :cond_a
    const-string v6, "3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1170
    :cond_b
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto/16 :goto_0

    .line 1224
    .end local v0    # "iccType":Ljava/lang/String;
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1188
    .restart local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v5    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_c
    :try_start_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1
.end method

.method private updateQuietMode()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 428
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 429
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 431
    .local v3, "oldQuietMode":Z
    const/4 v0, -0x1

    .line 432
    .local v0, "cdmaSource":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v6

    if-ne v6, v4, :cond_0

    move v1, v4

    .line 434
    .local v1, "isLteOnCdmaMode":Z
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v6, v4, :cond_1

    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, "newQuietMode":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 456
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-nez v6, :cond_5

    if-ne v2, v4, :cond_5

    .line 459
    const-string v4, "Switching to QuietMode."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 460
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 461
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 473
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateQuietMode: QuietMode is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (app_type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " isLteOnCdmaMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cdmaSource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 477
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 478
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 479
    monitor-exit v5

    .line 480
    return-void

    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    :cond_0
    move v1, v2

    .line 432
    goto :goto_0

    .line 438
    .restart local v1    # "isLteOnCdmaMode":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 439
    const-string v6, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 440
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 442
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 445
    :goto_3
    if-ne v0, v4, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    if-nez v1, :cond_3

    move v2, v4

    .line 449
    .restart local v2    # "newQuietMode":Z
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuietMode: cdmaSource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCurrentAppType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isLteOnCdmaMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newQuietMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 479
    .end local v0    # "cdmaSource":I
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    .end local v3    # "oldQuietMode":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 442
    .restart local v0    # "cdmaSource":I
    .restart local v1    # "isLteOnCdmaMode":Z
    .restart local v3    # "oldQuietMode":Z
    :cond_4
    const/4 v0, -0x1

    goto :goto_3

    .line 462
    .restart local v2    # "newQuietMode":Z
    :cond_5
    :try_start_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v6, v4, :cond_6

    if-nez v2, :cond_6

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 467
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 468
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_2

    .line 470
    :cond_6
    const-string v4, "updateQuietMode: no changes don\'t setExternalState"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private updateSimLockInfo()V
    .locals 7

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPin1RetryCount()I

    move-result v1

    .line 2172
    .local v1, "pin1":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPin2RetryCount()I

    move-result v3

    .line 2173
    .local v3, "pin2":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPuk1RetryCount()I

    move-result v2

    .line 2174
    .local v2, "puk1":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPuk2retryCount()I

    move-result v4

    .line 2176
    .local v4, "puk2":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPinBlocked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPin2Blocked()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->setLockInfoResult(IIIIII)V

    .line 2180
    return-void

    .line 2176
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_1
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 1524
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2084
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2085
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 2086
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2093
    :cond_0
    monitor-exit v2

    .line 2094
    :goto_0
    return-void

    .line 2087
    :cond_1
    if-eqz p3, :cond_0

    .line 2088
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2089
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2090
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2091
    monitor-exit v2

    goto :goto_0

    .line 2093
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2070
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2071
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 2072
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2079
    :cond_0
    monitor-exit v2

    .line 2080
    :goto_0
    return-void

    .line 2073
    :cond_1
    if-eqz p3, :cond_0

    .line 2074
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2076
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2077
    monitor-exit v2

    goto :goto_0

    .line 2079
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeIccSimPersoPassword  old : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " // new : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2408
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "QCOM"

    const-string v3, "MTK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2411
    const-string v2, "%-8s%-8s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "simpass":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    .line 2425
    .end local v1    # "simpass":Ljava/lang/String;
    :goto_0
    return-void

    .line 2414
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2416
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x71

    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2419
    :cond_1
    const-string v2, "SEC_PRODUCT_FEATURE_RIL_USIM_PERSONALIZATION NOT defined"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2420
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Not Supported"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2421
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2422
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSap(Landroid/os/Handler;)V

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAbsentRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAbsentRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2688
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2693
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2698
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSSM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRadioOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mQuietMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2710
    return-void
.end method

.method public flightmodecheck()I
    .locals 3

    .prologue
    .line 2715
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightMode:I

    .line 2716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flightmodecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightMode:I

    return v1

    .line 2717
    :catch_0
    move-exception v0

    .line 2718
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method getEccListFromSim()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x6fb7

    const/16 v8, 0xc8

    .line 2183
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    if-eqz v5, :cond_1

    .line 2184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ecclist already have been read"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2189
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    .line 2192
    const-string v5, "Failed to get IccFileHandler for making EccList"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.ecclist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNoSimDefaultEccNum:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_2
    const-string v5, "ril.ICC_TYPE"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "0"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2198
    .local v4, "simType":Ljava/lang/String;
    const-string v5, "ril.IsCSIM"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "0"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2199
    .local v1, "isCsim":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEccListFromSim simType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isCsim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2200
    const-string v5, "4"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2201
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2202
    .local v2, "simApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_0

    .line 2203
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 2204
    .local v3, "simIccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v3, :cond_3

    .line 2205
    const-string v5, "Failed to get IccFileHandler for making EccList with iccType 4"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.ecclist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNoSimDefaultEccNum:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2210
    :cond_3
    if-nez v1, :cond_4

    .line 2211
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2213
    :cond_4
    if-ne v1, v10, :cond_5

    .line 2214
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2217
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.ecclist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNoSimDefaultEccNum:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2224
    .end local v2    # "simApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "simIccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_6
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2225
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2226
    :cond_7
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2227
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2229
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.ril.ecclist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNoSimDefaultEccNum:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3081
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3082
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3083
    .local v0, "ruimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    .line 3084
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getEuimid()Ljava/lang/String;

    move-result-object v1

    .line 3087
    .end local v0    # "ruimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFPLMN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFPLMN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    return-object v0
.end method

.method public getFeliCaUimLockStatus(I)I
    .locals 11
    .param p1, "option"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v6, -0x1

    .line 2973
    const/4 v2, 0x0

    .line 2975
    .local v2, "lockStatus":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3000
    .end local v2    # "lockStatus":I
    :goto_0
    return v2

    .line 2979
    .restart local v2    # "lockStatus":I
    :cond_0
    const/4 v5, 0x0

    .line 2980
    .local v5, "resType":I
    const/4 v4, 0x0

    .line 2981
    .local v4, "mLockUser":I
    const/4 v3, 0x0

    .line 2983
    .local v3, "mLockRemote":I
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockStatus:I

    .line 2985
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 2986
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const-string v7, "IccCardProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFeliCaUimLockStatus Transparent start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    if-eqz v1, :cond_1

    .line 2988
    const/16 v7, 0x2ff0

    const/16 v8, 0x73

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2998
    const-string v6, "IccCardProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFeliCaUimLockStatus Async: return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2990
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v5, v7, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v6

    .line 2991
    goto :goto_0

    .line 2993
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_0
    move-exception v0

    .line 2994
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v7, "IccCardProxy"

    const-string v8, "getFeliCaUimLockStatus: Fail to get iccFh"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    invoke-direct {p0, v5, v10, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    move v2, v6

    .line 2996
    goto :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 2025
    .local v0, "retValue":Z
    :goto_0
    return v0

    .line 2024
    .end local v0    # "retValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2017
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2019
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2017
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2020
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 1794
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1795
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 1798
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 2006
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2008
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2010
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2008
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2011
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccPersoRetryCount()I
    .locals 2

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPersoRetryCount()I

    move-result v0

    .line 2374
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 2373
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v0

    .line 2254
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 2253
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 2030
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2031
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 2030
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    .line 2258
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v0

    .line 2259
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 2258
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPinBlocked()Z
    .locals 2

    .prologue
    .line 2274
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPinBlocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2275
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 2274
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk1RetryCount()I
    .locals 2

    .prologue
    .line 2263
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk1RetryCount()I

    move-result v0

    .line 2264
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 2263
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 2036
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2037
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 2036
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk2retryCount()I
    .locals 2

    .prologue
    .line 2268
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2RetryCount()I

    move-result v0

    .line 2269
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 2268
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccRecord()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1788
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 1789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1732
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    monitor-exit v1

    .line 1736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccUsimPersoEnabled()Z
    .locals 2

    .prologue
    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccUsimPersoEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2369
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    return v0
.end method

.method public getOPLMNwAct()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOPLMNwAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    return-object v0
.end method

.method public getPLMNwAcT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPLMNwAcT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2925
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    return-object v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    monitor-exit v1

    .line 1807
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    goto :goto_0

    .line 1808
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 3070
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3071
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_0

    .line 3073
    const/4 v1, 0x0

    .line 3075
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2098
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 2102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 2103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSimLockInfo(II)V
    .locals 4
    .param p1, "num_lock_type"    # I
    .param p2, "lock_type"    # I

    .prologue
    .line 2239
    const-string v0, "true"

    const-string v1, "ro.ril.sim_multi_apps_suppport"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "true"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2241
    const-string v0, "Do not use getSIMLockInfo() which is deprecated"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2246
    :goto_0
    return-void

    .line 2244
    :cond_0
    const-string v0, "IccCard: getSimLockInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getSimLockInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "num_lock_type"    # I
    .param p2, "lock_type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    .line 2250
    return-void
.end method

.method public getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v1

    return-object v0

    .line 1782
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 486
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IccCardProxy handleMessage : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 1120
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unhandled message with number: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 514
    :sswitch_1
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 515
    sget-object v24, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 516
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 520
    :sswitch_2
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 526
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 528
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 536
    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 538
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 543
    :sswitch_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLteOnCdma:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 546
    :cond_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 548
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 549
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInvalidSimNotiDisplayed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->removeInvalidSIMNotification()V

    goto/16 :goto_0

    .line 556
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getEccListFromSim()V

    goto/16 :goto_0

    .line 563
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->startSimManagement()V

    goto/16 :goto_0

    .line 568
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->startSimManagement()V

    goto/16 :goto_0

    .line 572
    :sswitch_8
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getEccListFromSim()V

    .line 575
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "KTT"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->reloadPLMNs()V

    .line 578
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    goto/16 :goto_0

    .line 585
    :sswitch_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 586
    const-string v24, "CTC"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 588
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "OperatorNumeric":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "OperatorNumeric = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 590
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v24

    if-nez v24, :cond_5

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    const/16 v25, 0x1f7

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 595
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 600
    .end local v5    # "OperatorNumeric":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v5

    .line 602
    .restart local v5    # "OperatorNumeric":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "OperatorNumeric = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 603
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v24

    if-nez v24, :cond_7

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    const/16 v25, 0x1f7

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 608
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 613
    .end local v5    # "OperatorNumeric":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v17

    .line 615
    .local v17, "operator":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "operator="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mPhoneId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 617
    if-eqz v17, :cond_f

    .line 618
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "update icc_operator_numeric="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 620
    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 621
    sget-object v24, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v24, "000000"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    const-string v24, "310120"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    const-string v24, "316010"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 623
    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setSystemProperty operator : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 633
    .end local v7    # "cdmaOperatorNumeric":Ljava/lang/String;
    :goto_1
    const/16 v24, 0x0

    const/16 v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, "countryCode":Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 637
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v8    # "countryCode":Ljava/lang/String;
    .end local v17    # "operator":Ljava/lang/String;
    :cond_a
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "LGT"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 654
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v24

    if-nez v24, :cond_10

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    const/16 v25, 0x1f7

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 626
    .restart local v7    # "cdmaOperatorNumeric":Ljava/lang/String;
    .restart local v17    # "operator":Ljava/lang/String;
    :cond_c
    const-string v24, "Update PROPERTY_ICC_OPERATOR_NUMERIC for CHAMELEON with home operator numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 630
    .end local v7    # "cdmaOperatorNumeric":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 639
    .restart local v8    # "countryCode":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 640
    .local v10, "e":Ljava/lang/NumberFormatException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_RECORDS_LOADED, exception = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 644
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v24, "EVENT_RECORDS_LOADED Country code is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 647
    .end local v8    # "countryCode":Ljava/lang/String;
    :cond_f
    const-string v24, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 658
    .end local v17    # "operator":Ljava/lang/String;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 662
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "SKT"

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 665
    const-string v24, "SKTReady"

    const-string v25, "ril.domesticOtaReady"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    const-string v24, "trigger_restart_min_framework"

    const-string v25, "vold.decrypt"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 667
    const-string v24, "ril.domesticOtaReady"

    const-string v25, ""

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->queryRequestSetOtaReg(I)V

    .line 672
    :cond_11
    const-string v24, "IMSI"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v24, "IMSI"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    :sswitch_b
    const-string v24, "MDN"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :sswitch_c
    const-string v24, "ICCID"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 685
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 687
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 692
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getEccListFromSim()V

    goto/16 :goto_0

    .line 689
    :cond_12
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_3

    .line 697
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 698
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 700
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 705
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getEccListFromSim()V

    goto/16 :goto_0

    .line 702
    :cond_13
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_4

    .line 709
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 710
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 712
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 717
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getEccListFromSim()V

    goto/16 :goto_0

    .line 714
    :cond_14
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_5

    .line 725
    :sswitch_10
    const-string v24, "EVENT_SUBSCRIPTION_ACTIVATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionActivated()V

    goto/16 :goto_0

    .line 730
    :sswitch_11
    const-string v24, "EVENT_SUBSCRIPTION_DEACTIVATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionDeactivated()V

    goto/16 :goto_0

    .line 735
    :sswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 738
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 740
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 741
    .local v12, "eventCode":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v12, v0, :cond_0

    .line 743
    const/16 v24, 0x7

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v24

    if-nez v24, :cond_15

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 747
    :cond_15
    sget-object v24, Lcom/android/internal/telephony/uicc/IccCardProxy;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 748
    .restart local v7    # "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v24, "000000"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_16

    const-string v24, "310120"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17

    const-string v24, "316010"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 749
    :cond_16
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "operatorNumeric : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 753
    :cond_17
    const-string v24, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v12    # "eventCode":I
    :sswitch_13
    const-string v24, "EVENT_CARRIER_PRIVILEGES_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    .line 765
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 771
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v6, v24

    check-cast v6, Landroid/os/AsyncResult;

    .line 772
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 773
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    check-cast v24, [B

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    .line 774
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_QUERY_PLMNWACT_DONE:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 779
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v6, v24

    check-cast v6, Landroid/os/AsyncResult;

    .line 780
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 781
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    check-cast v24, [B

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    .line 782
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_QUERY_FPLMN_DONE:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/AsyncResult;

    move-object/from16 v6, v24

    check-cast v6, Landroid/os/AsyncResult;

    .line 788
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 789
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    check-cast v24, [B

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    .line 790
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_QUERY_OPLMNWACT_DONE:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 797
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 800
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 801
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_GET_EF_LOCK done"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/16 v19, 0x0

    .line 804
    .local v19, "resType":I
    const/16 v16, -0x1

    .line 805
    .local v16, "mLockUser":I
    const/4 v15, -0x1

    .line 807
    .local v15, "mLockRemote":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-nez v24, :cond_19

    .line 808
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 812
    :cond_19
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 813
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_1a

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-nez v24, :cond_1b

    .line 814
    :cond_1a
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 818
    :cond_1b
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    move-object/from16 v9, v24

    check-cast v9, [B

    .line 819
    .local v9, "data":[B
    if-eqz v9, :cond_1e

    array-length v0, v9

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1e

    .line 820
    const/16 v24, 0x2

    aget-byte v24, v9, v24

    and-int/lit8 v16, v24, 0x1

    .line 821
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v15, v24, 0x1

    .line 823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    .line 824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x64

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    .line 827
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v13

    .line 828
    .local v13, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const-string v24, "IccCardProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_GET_EF_LOCK_DONE Remote lock status set start"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-eqz v13, :cond_1c

    .line 830
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v9, v24

    .line 831
    const/16 v24, 0x2ff0

    const/16 v25, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v9, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 832
    const/16 v24, 0x1

    aget-byte v24, v9, v24

    and-int/lit8 v15, v24, 0x1

    .line 833
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    .line 835
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    .line 836
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 847
    const-string v24, "IccCardProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "EVENT_GET_EF_LOCK_DONE Async: return "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    :cond_1c
    const/16 v24, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 842
    .end local v13    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_1
    move-exception v10

    .line 843
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_GET_EF_LOCK_DONE: Fail to get iccFh"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 850
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :cond_1d
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 853
    :cond_1e
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_GET_EF_LOCK result corrupted"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v9    # "data":[B
    .end local v15    # "mLockRemote":I
    .end local v16    # "mLockUser":I
    .end local v19    # "resType":I
    :sswitch_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 862
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 863
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SET_EF_LOCK done"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-nez v24, :cond_1f

    .line 866
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SET_EF_LOCK msg is null"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 876
    :cond_1f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "ar":Landroid/os/AsyncResult;
    check-cast v6, Landroid/os/AsyncResult;

    .line 877
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_20

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-nez v24, :cond_21

    .line 878
    :cond_20
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SET_EF_LOCK result is null"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockUser:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEFLockRemote:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 889
    :cond_21
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    move-object/from16 v18, v24

    check-cast v18, [B

    .line 890
    .local v18, "remotedata":[B
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SET_EF_LOCK data send"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    aget-byte v26, v18, v26

    and-int/lit8 v26, v26, 0x1

    const/16 v27, 0x1

    aget-byte v27, v18, v27

    and-int/lit8 v27, v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifyEFLockStatus(IIII)V

    goto/16 :goto_0

    .line 900
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "remotedata":[B
    :sswitch_19
    const-string v24, "EVENT_SIM_PIN_LOCK_INFO_REFRESH_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 902
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_22

    .line 903
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 904
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 906
    :cond_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    goto/16 :goto_0

    .line 912
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const-string v24, "EVENT_SIM_PIN_LOCK_INFO_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 914
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_23

    .line 915
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 920
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x9

    const/16 v28, 0x69

    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    .line 922
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    goto/16 :goto_0

    .line 917
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-object/from16 v25, v0

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/uicc/SimLockInfoResult;)V

    goto :goto_6

    .line 928
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v24, "EVENT_SIM_PIN2_LOCK_INFO_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 929
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 930
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_24

    .line 931
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 935
    :goto_7
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 936
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    .line 937
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 938
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    goto/16 :goto_0

    .line 933
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-object/from16 v25, v0

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/uicc/SimLockInfoResult;)V

    goto :goto_7

    .line 943
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v24, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->simLockInfoRefresh(Landroid/os/Message;)V

    .line 944
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V

    goto/16 :goto_0

    .line 950
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 951
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_28

    .line 952
    const-string v24, "Failed to get Ecc List from SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 955
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_25

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateEccNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_26

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v24

    if-eqz v24, :cond_26

    .line 959
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update SIM ECC List: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateEccNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 961
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_27

    const-string v24, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateEccNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    :cond_27
    const-string v24, "Invalid Phone, so can\'t call setEmergencyNumbers()"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_28
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 976
    .local v11, "eccString":Ljava/lang/StringBuffer;
    const-string v24, "ril.ICC_TYPE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const-string v26, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 977
    .local v23, "simType":Ljava/lang/String;
    const-string v24, "ril.IsCSIM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const-string v26, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 978
    .local v14, "isCsim":I
    const-string v24, "1"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_29

    const-string v24, "4"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2a

    if-nez v14, :cond_2a

    .line 979
    :cond_29
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->read2GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 987
    :goto_8
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_2d

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateEccNum(Ljava/lang/String;)V

    .line 990
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    goto/16 :goto_0

    .line 980
    :cond_2a
    const-string v24, "2"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2b

    const-string v24, "4"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2c

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_2c

    .line 981
    :cond_2b
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->read3GEccList(Landroid/os/AsyncResult;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto :goto_8

    .line 983
    :cond_2c
    const-string v24, "Invalid Phone, so can\'t read EccList"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_8

    .line 991
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 992
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update SIM ECC List: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateEccNum(Ljava/lang/String;)V

    .line 994
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    goto/16 :goto_0

    .line 995
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move/from16 v24, v0

    if-eqz v24, :cond_2f

    const-string v24, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2f

    .line 996
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Update SIM ECC List: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mEmergencyNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateEccNum(Ljava/lang/String;)V

    .line 998
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    goto/16 :goto_0

    .line 1000
    :cond_2f
    const-string v24, "Invalid Phone so can\'t call setEmergencyNumbers()"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1008
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "eccString":Ljava/lang/StringBuffer;
    .end local v14    # "isCsim":I
    .end local v23    # "simType":Ljava/lang/String;
    :sswitch_1e
    const-string v24, "EVENT_SIM_NEED_LOCK_INFO_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1010
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_30

    .line 1011
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "exception is occurred : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1014
    :cond_30
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1015
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1021
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1022
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 1023
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_32

    .line 1024
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    move-object/from16 v22, v24

    check-cast v22, [B

    .line 1025
    .local v22, "simLock":[B
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_GET_PERSO_STATUS_COMPLETE"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-byte v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget-byte v25, v22, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 1026
    const/16 v24, 0x0

    aget-byte v24, v22, v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 1027
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    goto/16 :goto_0

    .line 1029
    :cond_31
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    goto/16 :goto_0

    .line 1032
    .end local v22    # "simLock":[B
    :cond_32
    const-string v24, "EVENT_GET_PERSO_STATUS_COMPLETE ar.result null"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1038
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1039
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1043
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1044
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_33

    .line 1045
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDesiredSimPersoLocked:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    .line 1046
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDesiredSimPersoLocked:Z

    .line 1047
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_CHANGE_FACILITY_SIM_PERSO_DONE: mPersoSimLock= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSimLock:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1059
    :goto_9
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1061
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1056
    :cond_33
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error change facility lock with exception "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1065
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1066
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_34

    .line 1067
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error in change sim password with exception"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1070
    :cond_34
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1072
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1076
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1077
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_35

    .line 1078
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error in enter sim password with exception"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1081
    :cond_35
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-static/range {v24 .. v24}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v24

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1083
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1088
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1089
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [B

    move-object/from16 v21, v24

    check-cast v21, [B

    .line 1090
    .local v21, "sapdata":[B
    const/16 v24, 0x0

    aget-byte v24, v21, v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1092
    const/16 v24, 0x1

    aget-byte v24, v21, v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 1093
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SAP_NOTIFICATION - SAP_CARD_STATUS_INSERTED : SIM state is changed to UNKNOWN by SAP connection"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    sget-object v24, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 1095
    :cond_36
    const/16 v24, 0x1

    aget-byte v24, v21, v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1096
    const-string v24, "IccCardProxy"

    const-string v25, "EVENT_SAP_NOTIFICATION - SAP_CARD_STATUS_REMOVED"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V

    goto/16 :goto_0

    .line 1104
    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v21    # "sapdata":[B
    :sswitch_25
    const-string v24, "Received EVENT_SIM_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1106
    .restart local v6    # "ar":Landroid/os/AsyncResult;
    if-eqz v6, :cond_0

    .line 1107
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_37

    .line 1108
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1109
    .local v20, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1110
    const-string v24, "mAlreadyReadEcc set false"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1111
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAlreadyReadEcc:Z

    goto/16 :goto_0

    .line 1114
    .end local v20    # "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_37
    const-string v24, "IccCardProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sim REFRESH with exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_d
        0xb -> :sswitch_0
        0xc -> :sswitch_24
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x33 -> :sswitch_b
        0x34 -> :sswitch_c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x68 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_19
        0x6b -> :sswitch_1e
        0x6e -> :sswitch_1f
        0x6f -> :sswitch_20
        0x70 -> :sswitch_21
        0x71 -> :sswitch_22
        0x72 -> :sswitch_23
        0x73 -> :sswitch_17
        0x74 -> :sswitch_18
        0xc8 -> :sswitch_1d
        0x1f4 -> :sswitch_12
        0x1f5 -> :sswitch_10
        0x1f6 -> :sswitch_11
        0x1f7 -> :sswitch_13
        0x1fe -> :sswitch_6
        0x208 -> :sswitch_7
        0x258 -> :sswitch_25
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    .line 2116
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2117
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 2118
    const/4 v0, 0x1

    monitor-exit v1

    .line 2120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 2121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 2108
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2109
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2110
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2109
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2111
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1816
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1817
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1819
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1821
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 1822
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1824
    :cond_0
    monitor-exit v2

    .line 1825
    return-void

    .line 1824
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1902
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1903
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1905
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1907
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1908
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1910
    :cond_0
    monitor-exit v2

    .line 1911
    return-void

    .line 1910
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1839
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1840
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1842
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1844
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 1845
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1847
    :cond_0
    monitor-exit v2

    .line 1848
    return-void

    .line 1847
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1863
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1865
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1867
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 1868
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1870
    :cond_0
    return-void
.end method

.method public registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1881
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1883
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1885
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    .line 1886
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1888
    :cond_0
    return-void
.end method

.method public reloadPLMNs()V
    .locals 3

    .prologue
    .line 2910
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2911
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const-string v1, "reloadPLMNs "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2913
    if-nez v0, :cond_0

    .line 2914
    const-string v1, "Failed to get IccFileHandler"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2921
    :goto_0
    return-void

    .line 2918
    :cond_0
    const/16 v1, 0x6f60

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2919
    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2920
    const/16 v1, 0x6f61

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 1228
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1230
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " IccCardproxy for SPR CHAMELEON and USC icc_operator_numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1243
    :cond_1
    :goto_0
    return-void

    .line 1238
    :cond_2
    const-string v0, "update icc_operator_numeric="

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setActivePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 422
    return-void
.end method

.method public setEPSLOCI([B)V
    .locals 8
    .param p1, "newEpsloci"    # [B

    .prologue
    .line 2542
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2545
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const-string v6, "setEPSLOCI"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2546
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 2547
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v5, 0x0

    .line 2548
    .local v5, "usimApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    .line 2549
    .local v2, "taieps":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2550
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 2551
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2552
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getTaiEps()Ljava/lang/String;

    move-result-object v2

    .line 2553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEPSLOCI USIM taieps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2557
    :cond_0
    if-eqz v2, :cond_1

    .line 2558
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 2559
    .local v3, "tempEpsloci":Ljava/lang/String;
    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2560
    .local v1, "newGuti":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2561
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEPSLOCI newEpsloci: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2567
    .end local v1    # "newGuti":Ljava/lang/String;
    .end local v3    # "tempEpsloci":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x6fe3

    const/4 v7, 0x0

    invoke-virtual {v0, v6, p1, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2568
    return-void
.end method

.method public setEPSLOCI([BLandroid/os/Message;)V
    .locals 2
    .param p1, "newEpsloci"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2586
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2588
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6fe3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2589
    return-void
.end method

.method public setFPLMN([B)V
    .locals 3
    .param p1, "newPlmn"    # [B

    .prologue
    .line 2942
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2944
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2945
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    .line 2946
    return-void
.end method

.method public setFPLMN([BLandroid/os/Message;)V
    .locals 2
    .param p1, "newPlmn"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2950
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2952
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2953
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mFPLMN:Ljava/lang/String;

    .line 2954
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2056
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2057
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 2058
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 2065
    :cond_0
    monitor-exit v2

    .line 2066
    :goto_0
    return-void

    .line 2059
    :cond_1
    if-eqz p3, :cond_0

    .line 2060
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2061
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2062
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2063
    monitor-exit v2

    goto :goto_0

    .line 2065
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2042
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2043
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 2044
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 2051
    :cond_0
    monitor-exit v2

    .line 2052
    :goto_0
    return-void

    .line 2045
    :cond_1
    if-eqz p3, :cond_0

    .line 2046
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2047
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2048
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 2049
    monitor-exit v2

    goto :goto_0

    .line 2051
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x70

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIccSimPersoEnabled  password : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2379
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QCOM"

    const-string v1, "MTK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2382
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDesiredSimPersoLocked:Z

    .line 2383
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    .line 2404
    :goto_1
    return-void

    .line 2383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2387
    :cond_1
    const/4 v4, 0x7

    .line 2391
    .local v4, "serviceClassX":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2393
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDesiredSimPersoLocked:Z

    .line 2394
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "PH-SIM"

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 2398
    :cond_2
    const-string v0, "SEC_PRODUCT_FEATURE_RIL_USIM_PERSONALIZATION NOT defined"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2399
    new-instance v6, Landroid/os/AsyncResult;

    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not Supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v3, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2400
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2401
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public setLOCI([B)V
    .locals 3
    .param p1, "newLoci"    # [B

    .prologue
    .line 2579
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2581
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f7e    # 3.9996E-41f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2582
    return-void
.end method

.method public setLOCI([BLandroid/os/Message;)V
    .locals 2
    .param p1, "newLoci"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2600
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2602
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f7e    # 3.9996E-41f

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2603
    return-void
.end method

.method public setOPLMNwAct([B)V
    .locals 3
    .param p1, "newPlmn"    # [B

    .prologue
    .line 2963
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2965
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f61

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2966
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mOPLMNwAct:Ljava/lang/String;

    .line 2967
    return-void
.end method

.method public setPLMNwAcT([B)V
    .locals 3
    .param p1, "newPlmn"    # [B

    .prologue
    .line 2929
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2931
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f60

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2932
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPLMNwAct:Ljava/lang/String;

    .line 2933
    return-void
.end method

.method public setPSLOCI([B)V
    .locals 3
    .param p1, "newPsloci"    # [B

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2574
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f73

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2575
    return-void
.end method

.method public setPSLOCI([BLandroid/os/Message;)V
    .locals 2
    .param p1, "newPsloci"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2593
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2595
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f73

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2596
    return-void
.end method

.method public setRoaming([BLandroid/os/Message;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2528
    const-string v2, "setRoaming"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2532
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2538
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v2, 0x2f50

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 2539
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    return-void

    .line 2533
    :catch_0
    move-exception v0

    .line 2534
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Fail to get iccFh"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUimRemoteLockStatus(I)I
    .locals 7
    .param p1, "option"    # I

    .prologue
    const/4 v3, -0x1

    .line 3005
    const/4 v2, 0x0

    .line 3007
    .local v2, "lockStatus":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3026
    .end local v2    # "lockStatus":I
    :goto_0
    return v2

    .line 3010
    .restart local v2    # "lockStatus":I
    :cond_0
    add-int/lit8 v4, p1, 0x64

    iput v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->setRemoteLockValue:I

    .line 3013
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 3014
    .local v1, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const-string v4, "IccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUimRemoteLockStatus get EF_LOCK start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    if-eqz v1, :cond_1

    .line 3016
    const/16 v4, 0x2ff0

    const/16 v5, 0x73

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    const-string v3, "IccCardProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUimRemoteLockStatus Async: return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3018
    goto :goto_0

    .line 3020
    .end local v1    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catch_0
    move-exception v0

    .line 3021
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "IccCardProxy"

    const-string v5, "getFeliCaUimLockStatus: Fail to get iccFh"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3022
    goto :goto_0
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 409
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "setVoiceRadioTech send EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 413
    :cond_0
    monitor-exit v1

    .line 414
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public simLockInfoRefresh(Landroid/os/Message;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2159
    const-string v0, "true"

    const-string v1, "ro.ril.sim_multi_apps_suppport"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "true"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    const-string v0, "Do not use simLockInfoRefresh() which is deprecated"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2166
    :goto_0
    return-void

    .line 2164
    :cond_0
    const-string v0, "simLockInfoRefresh"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x68

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public declared-synchronized startSimManagement()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2729
    monitor-enter p0

    :try_start_0
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2782
    :cond_0
    const-string v5, "trigger_restart_min_framework"

    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2783
    const-string v5, "[IccCardProxy]startSimManagement() return due to Decrypt pwd checking & setupwizard not complete"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2786
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v5

    if-le v5, v8, :cond_1

    .line 2787
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 2789
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-le v5, v8, :cond_e

    .line 2790
    const-string v5, "gsm.sim.state"

    const/4 v6, 0x0

    const-string v7, "ABSENT"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2791
    .local v3, "telephonySimState":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const/4 v6, 0x1

    const-string v7, "ABSENT"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2792
    .local v4, "telephonySimState2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2793
    .local v1, "simDBvalue0":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone2_on"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2794
    .local v2, "simDBvalue1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSimManagement: State1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "State2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "simDBvalue0="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "simDBvalue1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2796
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2797
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v1, :cond_5

    .line 2798
    :cond_4
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    .line 2800
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCTCSimOff()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2801
    const-string v5, "CTC off in SubscriptionInfoUpdater "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2802
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    .line 2806
    :cond_6
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightmodecheck()I

    move-result v5

    if-eq v5, v8, :cond_a

    .line 2807
    const-string v5, "FINISH"

    const-string v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2808
    const/16 v5, 0x1fe

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2729
    .end local v1    # "simDBvalue0":I
    .end local v2    # "simDBvalue1":I
    .end local v3    # "telephonySimState":Ljava/lang/String;
    .end local v4    # "telephonySimState2":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2811
    .restart local v1    # "simDBvalue0":I
    .restart local v2    # "simDBvalue1":I
    .restart local v3    # "telephonySimState":Ljava/lang/String;
    .restart local v4    # "telephonySimState2":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2812
    sget-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z

    if-nez v5, :cond_8

    .line 2813
    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->CTCSimOff(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2821
    :cond_8
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2822
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "com.samsung.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2823
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2824
    const-string v5, "startSimManagement:sendBroadcast sim check details"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2825
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2827
    const-string v5, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2828
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2830
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    goto/16 :goto_0

    .line 2816
    .end local v0    # "i":Landroid/content/Intent;
    :cond_9
    const-string v5, "QCOM"

    const-string v6, "MTK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    .line 2832
    :cond_a
    const-string v5, "CHC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "QCOM"

    const-string v6, "MTK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2833
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->flightmodecheck()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 2835
    const-string v5, "FINISH"

    const-string v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2836
    const/16 v5, 0x1fe

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2839
    :cond_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2840
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v5, "com.samsung.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2841
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2842
    const-string v5, "startSimManagement:sendBroadcast sim check details"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2843
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2844
    const-string v5, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2845
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2846
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z

    goto/16 :goto_0

    .line 2851
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "simDBvalue0":I
    .end local v2    # "simDBvalue1":I
    .end local v3    # "telephonySimState":Ljava/lang/String;
    .end local v4    # "telephonySimState2":Ljava/lang/String;
    :cond_e
    const-string v5, "FINISH"

    const-string v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 2852
    const/16 v5, 0x1fe

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2855
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2856
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v5, "com.samsung.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2857
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2858
    const-string v5, "startSimManagement:sendBroadcast sim check details"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2859
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2861
    const-string v5, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2862
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2864
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "lockState"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1992
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1993
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1994
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 2001
    :cond_0
    monitor-exit v2

    .line 2002
    :goto_0
    return-void

    .line 1995
    :cond_1
    if-eqz p3, :cond_0

    .line 1996
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1997
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1998
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1999
    monitor-exit v2

    goto :goto_0

    .line 2001
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1978
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1979
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1980
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 1987
    :cond_0
    monitor-exit v2

    .line 1988
    :goto_0
    return-void

    .line 1981
    :cond_1
    if-eqz p2, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1983
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1984
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1985
    monitor-exit v2

    goto :goto_0

    .line 1987
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 2428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supplyIccPerso  pin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 2430
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QCOM"

    const-string v2, "MTK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2433
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->invokeSimPerso(ILjava/lang/String;Landroid/os/Message;)V

    .line 2445
    :goto_0
    return-void

    .line 2435
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_USIMPersonalizationKOR"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2437
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x72

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2439
    :cond_1
    const-string v1, "SEC_PRODUCT_FEATURE_RIL_USIM_PERSONALIZATION NOT defined"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V

    .line 2440
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Not Supported"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v3, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2441
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2442
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1922
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1923
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1924
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1931
    :cond_0
    monitor-exit v2

    .line 1932
    :goto_0
    return-void

    .line 1925
    :cond_1
    if-eqz p2, :cond_0

    .line 1926
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1927
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1928
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1929
    monitor-exit v2

    goto :goto_0

    .line 1931
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1950
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1951
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1952
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 1959
    :cond_0
    monitor-exit v2

    .line 1960
    :goto_0
    return-void

    .line 1953
    :cond_1
    if-eqz p2, :cond_0

    .line 1954
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1956
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1957
    monitor-exit v2

    goto :goto_0

    .line 1959
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1936
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1937
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1938
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1945
    :cond_0
    monitor-exit v2

    .line 1946
    :goto_0
    return-void

    .line 1939
    :cond_1
    if-eqz p3, :cond_0

    .line 1940
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1941
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1942
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1943
    monitor-exit v2

    goto :goto_0

    .line 1945
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1964
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1965
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1966
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1973
    :cond_0
    monitor-exit v2

    .line 1974
    :goto_0
    return-void

    .line 1967
    :cond_1
    if-eqz p3, :cond_0

    .line 1968
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1970
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1971
    monitor-exit v2

    goto :goto_0

    .line 1973
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1830
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1831
    monitor-exit v1

    .line 1832
    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1915
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1916
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1917
    monitor-exit v1

    .line 1918
    return-void

    .line 1917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1852
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1853
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1854
    monitor-exit v1

    .line 1855
    return-void

    .line 1854
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1875
    return-void
.end method

.method public unregisterForSPLocked(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1893
    return-void
.end method

.method public validateMsisdn()I
    .locals 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 3094
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3095
    const-string v7, "validateMsisdn : not surpport"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 3096
    const/4 v7, -0x1

    .line 3132
    :goto_0
    return v7

    .line 3098
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 3099
    .local v6, "simRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3100
    .local v5, "ruimRecords":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 3102
    .local v1, "isimRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    .line 3103
    :cond_1
    const-string v7, "validateMsisdn : initialising"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    move v7, v9

    .line 3104
    goto :goto_0

    .line 3107
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v3

    .line 3108
    .local v3, "msisdn":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v2

    .line 3109
    .local v2, "mdn":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->getIsimMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 3111
    .local v0, "isimMsisdn":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3112
    const-string v8, "validateMsisdn : no msisdn"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3116
    :cond_3
    const-string v9, "0000000000"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3117
    const-string v8, "validateMsisdn : no mdn"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3121
    :cond_4
    const-string v9, "+8200000000000"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3122
    const-string v8, "validateMsisdn : no isimMsisdn"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3126
    :cond_5
    const-string v7, "ril.pco.ims"

    const-string v9, "unset"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3127
    .local v4, "pco":Ljava/lang/String;
    const-string v7, "5"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3128
    const-string v7, "validateMsisdn : invalid Msisdn"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    move v7, v8

    .line 3129
    goto :goto_0

    .line 3131
    :cond_6
    const-string v7, "validateMsisdn : valid Msisdn"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 3132
    const/4 v7, 0x0

    goto :goto_0
.end method
