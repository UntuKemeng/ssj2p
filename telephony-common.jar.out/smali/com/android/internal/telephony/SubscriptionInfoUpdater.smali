.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    }
.end annotation


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field protected static final ENABLE_SURVEY_MODE:Z

.field private static final EVENT_CARD_SWAPED:I = 0x66

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_RETRY_READ_ICCID:I = 0xc

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0xd

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE_DELAY:I = 0x15

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE_DONE:I = 0xe

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_ICCID_NOTI:I = 0x10

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final EVENT_STACK_READY:I = 0xb

.field private static final EVENT_SURVEY_LOG_WAIT:I = 0x14

.field private static final EVENT_WAIT_HOTSWAP_INSERT_FINISHED:I = 0xf

.field private static final ICCID_STRING_FOR_INVALID_ICCID:Ljava/lang/String; = "00000000000000000000"

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"

.field private static final ICCID_STRING_FOR_SIM_IO_ERROR:Ljava/lang/String; = "ICCID_FOR_IO_ERROR"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PHONE_ON_KEY:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field public static PreDefaultDataSubId:I = 0x0

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final SOFTSIM_ACTIVATED:I = 0x1

.field public static final SOFTSIM_ACTIVATING:I = 0x3

.field public static final SOFTSIM_DEACTIVATED:I = 0x0

.field public static final SOFTSIM_DEACTIVATING:I = 0x2

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static isCheckingCTCSim:Z

.field public static isNeededUpdateDDSChanged:Z

.field private static isSimReset:[Z

.field private static mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimPlugInSlot:I

.field private static mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static mFirstNetworkMode:I

.field private static mHotSwapDisable:Z

.field private static mHotSwapRemoved:Z

.field private static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mIsNwModeUpdated:Z

.field private static mMainStackSubId:I

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static mPhoneOn:[I

.field private static mPrefNwMode:[I

.field private static mRetrySlot0:I

.field private static mRetrySlot1:I

.field private static mSetnetworkSlot:I

.field private static mSimHotPlugIn:Z

.field private static mSlot:I

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static mWaitFinishFlag:Z

.field private static mWaitOtherSlot:Z

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sPreferredNetworkMode:I

.field private static sPreferredNetworkSlot:I

.field private static sRetryReadIccIdCount:I


# instance fields
.field private cardSwapCount:I

.field private isNVSubAvailable:Z

.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentlyActiveUserId:I

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsSystemShutdown:Z

.field private mNeedUpdate:Z

.field private mOldSilentResetCnt:I

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mReason:Ljava/lang/String;

.field private mSlotId:I

.field private mSoftSimState:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final nwModeObserver:Landroid/database/ContentObserver;

.field private final phoneOn1Observer:Landroid/database/ContentObserver;

.field private final phoneOn2Observer:Landroid/database/ContentObserver;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 151
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone1_on"

    aput-object v1, v0, v3

    const-string v1, "phone2_on"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "phone3_on"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "phone4_on"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phone5_on"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 185
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 186
    sput-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 188
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 191
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    .line 195
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    .line 208
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    .line 211
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    .line 216
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    .line 218
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    .line 220
    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    .line 230
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    .line 231
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    .line 232
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 233
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    .line 234
    sput v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    .line 235
    sput-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    .line 236
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsNwModeUpdated:Z

    .line 238
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    .line 239
    sput v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFirstNetworkMode:I

    .line 241
    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot0:I

    .line 242
    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    .line 243
    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    .line 248
    sput-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 249
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 250
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 252
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    .line 253
    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    .line 254
    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    .line 306
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 194
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 198
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 202
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 205
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    .line 212
    iput v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    .line 213
    iput-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    .line 223
    iput v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    .line 226
    iput v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    .line 228
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    .line 251
    iput-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 261
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    .line 271
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn1Observer:Landroid/database/ContentObserver;

    .line 278
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn2Observer:Landroid/database/ContentObserver;

    .line 438
    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    const-string v2, "Constructor invoked"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 311
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 312
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 313
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 314
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 317
    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 318
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    .line 320
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, p0, v3, v7}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_2

    .line 328
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "i":I
    :cond_1
    const-string v2, "persist.radio.silent-reset"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    goto :goto_0

    .line 332
    .restart local v0    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v6, :cond_4

    const-string v2, "CN"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "HK"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TW"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "INU"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "INS"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 345
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v6, :cond_5

    .line 346
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn1Observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn2Observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 356
    const/4 v0, 0x0

    :goto_2
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_6

    .line 357
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 361
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v6, :cond_8

    .line 362
    const/4 v0, 0x0

    :goto_3
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_7

    .line 363
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v7, v2, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 365
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0xa

    invoke-virtual {v2, p0, v3, v7}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    :cond_8
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v2, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v2, v6, :cond_9

    const-string v2, "1"

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 390
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    new-instance v2, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    .line 394
    return-void
.end method

.method private CTCSimCheck()V
    .locals 15

    .prologue
    .line 2690
    const/4 v11, 0x0

    const-string v12, "gsm.sim.state"

    const-string v13, "ABSENT"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2691
    .local v9, "telephonySimState":Ljava/lang/String;
    const/4 v11, 0x1

    const-string v12, "gsm.sim.state"

    const-string v13, "ABSENT"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2692
    .local v10, "telephonySimState2":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2693
    .local v5, "simDBvalue0":I
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 2694
    .local v6, "simDBvalue1":I
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "IS_CTC"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2695
    .local v2, "isctc":I
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "IS_CTC2"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2696
    .local v3, "isctc2":I
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v4, v11, [I

    .line 2698
    .local v4, "nwMode":[I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CTCSimCheck:simDBvalue0="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "simDBvalue1="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2699
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CTCSimCheck:isctc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "isctc2="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2700
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CTCSimCheck:updateSimOnOff State1="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "State2="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2702
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    .line 2704
    .local v8, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v11, 0x1

    if-ne v2, v11, :cond_2

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    .line 2705
    const-string v11, "1"

    const/4 v12, 0x1

    const-string v13, "persist.radio.multisim.stackid"

    const-string v14, "0"

    invoke-static {v12, v13, v14}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    .line 2706
    .local v7, "slot":I
    :goto_0
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    if-nez v11, :cond_2

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2

    const/4 v11, 0x1

    if-ne v6, v11, :cond_2

    .line 2707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v11, :cond_1

    .line 2708
    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v11

    aput v11, v4, v0

    .line 2709
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nwMode["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v4, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2705
    .end local v0    # "i":I
    .end local v7    # "slot":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2711
    .restart local v0    # "i":I
    .restart local v7    # "slot":I
    :cond_1
    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2712
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2713
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V

    .line 2714
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2715
    const/4 v11, 0x0

    const-string v12, "gsm.sim.sixmode.slave"

    const-string v13, "true"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2716
    const/4 v11, 0x1

    const-string v12, "gsm.sim.sixmode.slave"

    const-string v13, "false"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2724
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v11, "com.samsung.intent.action.ACTION_SIM_OFF"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2725
    .local v1, "intent":Landroid/content/Intent;
    const-string v11, "slot"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2726
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2727
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    .line 2730
    .end local v0    # "i":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v7    # "slot":I
    :cond_2
    return-void

    .line 2718
    .restart local v0    # "i":I
    .restart local v7    # "slot":I
    :cond_3
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2719
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubId(I)V

    .line 2720
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2721
    const/4 v11, 0x0

    const-string v12, "gsm.sim.sixmode.slave"

    const-string v13, "false"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2722
    const/4 v11, 0x1

    const-string v12, "gsm.sim.sixmode.slave"

    const-string v13, "true"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNwModesInSubIdTable(Z)V

    return-void
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    return-object v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    return p1
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    return-void
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1759
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1766
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1767
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1771
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1772
    const-string v1, "ICC_TYPE"

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    :cond_0
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for mCardIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1778
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1780
    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    .line 533
    const-string v0, "cancelTimeOut()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    .line 535
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->removeMessages(I)V

    .line 536
    return-void
.end method

.method private extractIccIdFromNoti(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 919
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 920
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 921
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    .line 927
    :cond_0
    if-gez v0, :cond_2

    .end local p1    # "data":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 924
    .restart local p1    # "data":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 927
    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static getMainStackSubId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2231
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2232
    .local v0, "subId":I
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    if-le v1, v2, :cond_0

    .line 2233
    sput v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2235
    :cond_0
    return v0
.end method

.method private handleSimAbsent(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1362
    const/4 v0, 0x1

    .line 1363
    .local v0, "needUpdate":Z
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v1, v3, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v1, v1, p1

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    .line 1365
    const/4 v0, 0x0

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimAbsent: SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needUpdate false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1369
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hot plug out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1372
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1373
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1374
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 1376
    :cond_2
    const-string v1, "ABSENT"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 1377
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->setEnableCmccVolteFeature(Z)V

    .line 1378
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v1, v3, :cond_3

    .line 1379
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNwModeFromDB(I)V

    .line 1381
    :cond_3
    return-void
.end method

.method private handleSimIoError(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimIoError: slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1220
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "ICCID_FOR_IO_ERROR"

    aput-object v1, v0, p1

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1222
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 1225
    :cond_0
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 26
    .param p1, "slotId"    # I

    .prologue
    .line 1229
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1234
    const-string v22, "ro.csc.countryiso_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, "countryISO":Ljava/lang/String;
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v22, v22, p1

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    .line 1236
    .local v14, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v14, :cond_0

    .line 1237
    const-string v22, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1352
    :goto_0
    return-void

    .line 1240
    :cond_0
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_1

    .line 1241
    const-string v22, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_1
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, p1

    if-nez v22, :cond_2

    .line 1246
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v22, p1

    .line 1249
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v22, :cond_3

    .line 1250
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 1253
    :cond_3
    const v18, 0x7fffffff

    .line 1254
    .local v18, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v19

    .line 1255
    .local v19, "subIds":[I
    if-eqz v19, :cond_4

    .line 1256
    const/16 v22, 0x0

    aget v18, v19, v22

    .line 1259
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1260
    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 1261
    .local v13, "operator":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 1262
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 1263
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v13, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1265
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 1269
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 1270
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 1271
    .local v9, "msisdn":Ljava/lang/String;
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1273
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_6

    .line 1274
    new-instance v12, Landroid/content/ContentValues;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1275
    .local v12, "number":Landroid/content/ContentValues;
    const-string v22, "number"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v0, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1281
    .end local v12    # "number":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v20

    .line 1283
    .local v20, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v15

    .line 1284
    .local v15, "simCarrierName":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1286
    .local v10, "name":Landroid/content/ContentValues;
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 1288
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1289
    move-object v11, v15

    .line 1293
    .local v11, "nameToSet":Ljava/lang/String;
    :goto_2
    const-string v22, "display_name"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sim name = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1295
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v6, v0, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1301
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    .line 1304
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1306
    .local v16, "sp":Landroid/content/SharedPreferences;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "curr_subid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1308
    .local v17, "storedSubId":I
    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 1323
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1324
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "curr_subid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1325
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1329
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .end local v17    # "storedSubId":I
    :cond_8
    const-string v22, "1"

    const-string v23, "ril.isIccChanged"

    const-string v24, "0"

    move-object/from16 v0, v23

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "CN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "HK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    const-string v22, "TW"

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1331
    :cond_9
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v22, v22, p1

    const/16 v23, 0x2

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1333
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v22, v22, p1

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1340
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v10    # "name":Landroid/content/ContentValues;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v15    # "simCarrierName":Ljava/lang/String;
    .end local v20    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    :goto_3
    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    if-eqz v22, :cond_b

    .line 1342
    const-string v22, "Start timer EVENT_SURVEY_LOG_WAIT 60seconds"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1343
    const/16 v22, 0x14

    const/16 v23, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    const-wide/32 v24, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1347
    :cond_b
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    move/from16 v25, v0

    invoke-static/range {v22 .. v25}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 1350
    const-string v22, "LOADED"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v22, "LOADED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1267
    .restart local v13    # "operator":Ljava/lang/String;
    :cond_c
    const-string v22, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1291
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "msisdn":Ljava/lang/String;
    .restart local v10    # "name":Landroid/content/ContentValues;
    .restart local v15    # "simCarrierName":Ljava/lang/String;
    .restart local v20    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CARD "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, p1, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2

    .line 1336
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v10    # "name":Landroid/content/ContentValues;
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v15    # "simCarrierName":Ljava/lang/String;
    .end local v20    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string v22, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimStateLockedInternal: slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1155
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 1156
    .local v0, "iccId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    .line 1167
    :goto_0
    return-void

    .line 1158
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    goto :goto_0

    .line 1163
    :cond_1
    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    .line 1164
    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimUnknown(I)V
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1171
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_2

    .line 1172
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    aput-boolean v7, v5, p1

    .line 1173
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1174
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1175
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v5, v8, :cond_0

    .line 1176
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto :goto_0

    .line 1183
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v5, :cond_0

    .line 1187
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1191
    const-string v5, "persist.radio.silent-reset"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1192
    .local v3, "newSilentResetCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldSilentResetCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSilentResetCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1193
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    if-le v3, v5, :cond_3

    const-string v5, "ril.rildreset"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1194
    const-string v5, "cp silent reset heppen, update Sub Activation"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1195
    iput v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    .line 1196
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto :goto_0

    .line 1201
    .end local v3    # "newSilentResetCnt":I
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 1202
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_0

    .line 1203
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    .line 1204
    .local v4, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1205
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1206
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_4

    .line 1207
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v5, v6, :cond_4

    .line 1208
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    .line 1204
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initIsCtcValue()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 2670
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v4, :cond_3

    .line 2671
    if-nez v2, :cond_1

    const-string v0, "IS_CTC"

    .line 2672
    .local v0, "CtcKey":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 2674
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2678
    .local v3, "iccIdInt":I
    :goto_2
    const v4, 0xdb62b

    if-eq v3, v4, :cond_0

    const v4, 0xdb62d

    if-eq v3, v4, :cond_0

    const v4, 0xdb633

    if-eq v3, v4, :cond_0

    const v4, 0xdb5e2

    if-ne v3, v4, :cond_2

    .line 2679
    :cond_0
    const-string v4, "ril.isctc"

    const-string v5, "1"

    invoke-static {v4, v2, v5}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2680
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2670
    .end local v3    # "iccIdInt":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2671
    .end local v0    # "CtcKey":Ljava/lang/String;
    :cond_1
    const-string v0, "IS_CTC2"

    goto :goto_1

    .line 2675
    .restart local v0    # "CtcKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2676
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3    # "iccIdInt":I
    goto :goto_2

    .line 2684
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "iccIdInt":I
    :cond_2
    const-string v4, "ril.isctc"

    const-string v5, "0"

    invoke-static {v4, v2, v5}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2685
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 2687
    .end local v0    # "CtcKey":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private initializeCarrierApps()V
    .locals 5

    .prologue
    .line 401
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    .line 403
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 430
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    .line 436
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertLogforSimInfo(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 2359
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 2361
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2362
    .local v6, "iccType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2363
    .local v7, "plmn":Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2364
    :cond_0
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2369
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"SLOTID\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"PLMN\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2373
    .local v3, "extra":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLogforSimInfo slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2374
    const-string v1, "com.android.internal.telephony"

    const-string v2, "SIMI"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2375
    return-void

    .line 2367
    .end local v3    # "extra":Ljava/lang/String;
    :cond_1
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 547
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IccId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_1
    return v1

    .line 559
    :cond_1
    const-string v2, "0"

    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_3
    const-string v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 567
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isCTCSimOff()Z
    .locals 1

    .prologue
    .line 2732
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    return v0
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 1746
    const/4 v1, 0x1

    .line 1747
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1748
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1749
    const/4 v1, 0x0

    .line 1753
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1755
    return v1

    .line 1747
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1825
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return-void
.end method

.method private needUpdateBySoftSim()Z
    .locals 1

    .prologue
    .line 1801
    const/4 v0, 0x0

    return v0
.end method

.method private queryIccId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1101
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    .line 1102
    return-void
.end method

.method private queryIccId(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryIccId: slotid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1106
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hot plug in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1108
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v0, v2, p1

    .line 1109
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1113
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1116
    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    if-eqz v0, :cond_4

    .line 1117
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 1118
    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1119
    const-string v2, "Querying IccId"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1120
    const/16 v2, 0x2fe2

    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v3, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1133
    :goto_1
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    .line 1151
    .end local v1    # "iccId":Ljava/lang/String;
    :goto_2
    return-void

    .line 1113
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0

    .line 1125
    .restart local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v2, :cond_3

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT Querying IccId its already set mIccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]= XXX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1128
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT Querying IccId its already set mIccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1137
    .end local v1    # "iccId":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sFh["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, so retry to read IccId after 100ms, sRetryReadIccIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1139
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    .line 1140
    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 1143
    :cond_5
    const-string v2, "retry to read iccid FAIL, sRetryReadIccIdCount set 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1144
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    .line 1146
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, p1

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sFh["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, ignore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setPreferredNetworkForCmcc()V
    .locals 33

    .prologue
    .line 2379
    const/16 v17, 0x0

    .line 2380
    .local v17, "isSimUpdate":Z
    const/16 v16, 0x0

    .line 2381
    .local v16, "isNewCmccSim":Z
    const/16 v26, 0x0

    .line 2382
    .local v26, "setnetworkmode":Z
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .line 2383
    .local v29, "subIds":[I
    sget v15, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 2384
    .local v15, "insertedSimCount":I
    const/4 v3, 0x0

    .line 2385
    .local v3, "cmccUsimCount":I
    const/4 v5, 0x0

    .line 2386
    .local v5, "cuUsimCount":I
    const/4 v8, 0x0

    .line 2387
    .local v8, "defaultNwSimCount":I
    const/16 v25, -0x1

    .line 2388
    .local v25, "setnetworkSlot":I
    const/4 v4, -0x1

    .line 2389
    .local v4, "cmccUsimSlotId":I
    const/4 v6, -0x1

    .line 2390
    .local v6, "cuUsimSlotId":I
    const/16 v24, -0x1

    .line 2391
    .local v24, "otherSlotId":I
    const/4 v9, -0x1

    .line 2392
    .local v9, "defaultNwSlotId":I
    const/4 v11, 0x0

    .line 2393
    .local v11, "gsmOnlySimCount":I
    const/16 v19, 0x0

    .line 2394
    .local v19, "lteAutoSimCount":I
    const/4 v2, 0x0

    .line 2395
    .local v2, "activeSlotCount":I
    const/16 v18, 0x0

    .line 2396
    .local v18, "lteAutoModeCount":I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 2397
    .local v23, "nwModeinSubIdTable":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 2398
    .local v22, "nwModeInDb":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v14, v0, [I

    .line 2399
    .local v14, "iccType":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v28

    .line 2400
    .local v28, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v2

    .line 2401
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "phone1_on"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 2402
    .local v20, "mPhoneOnMode1":I
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "phone2_on"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 2403
    .local v21, "mPhoneOnMode2":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v7

    .line 2405
    .local v7, "ddsSubId":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_b

    .line 2406
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    if-eqz v30, :cond_0

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 2407
    const/16 v17, 0x1

    .line 2409
    :cond_0
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 2410
    add-int/lit8 v15, v15, -0x1

    .line 2411
    move/from16 v24, v12

    .line 2413
    :cond_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: mInsertSimState["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v31, v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2417
    :try_start_0
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "preferred_network_mode"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    aput v30, v22, v12
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2422
    :goto_1
    aget v30, v22, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    aget v30, v22, v12

    if-nez v30, :cond_3

    .line 2424
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 2427
    :cond_3
    const/4 v13, 0x0

    .line 2428
    .local v13, "iccIdInt":I
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    aput v30, v29, v12

    .line 2429
    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 2430
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: not acitve slot: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2431
    move/from16 v24, v12

    .line 2435
    :cond_4
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    if-eqz v30, :cond_5

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 2437
    :try_start_1
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    const/16 v31, 0x0

    const/16 v32, 0x6

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 2443
    :cond_5
    :goto_2
    sparse-switch v13, :sswitch_data_0

    .line 2455
    move/from16 v24, v12

    .line 2459
    :cond_6
    :goto_3
    const-string v30, "ril.ICC_TYPE"

    const-string v31, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v12, v1}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v14, v12

    .line 2460
    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v30

    aput v30, v23, v12

    .line 2462
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: subIds["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v29, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " icctype: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v14, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " nwModeInDb: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v22, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " nwModeinSubIdTable: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v23, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " iccIdInt: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2467
    aget v30, v23, v12

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 2468
    aget v30, v22, v12

    aput v30, v23, v12

    .line 2469
    add-int/lit8 v8, v8, 0x1

    .line 2470
    move v9, v12

    .line 2473
    :cond_7
    aget v30, v23, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    aget v30, v23, v12

    if-nez v30, :cond_a

    .line 2475
    :cond_8
    add-int/lit8 v19, v19, 0x1

    .line 2405
    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2419
    .end local v13    # "iccIdInt":I
    :catch_0
    move-exception v27

    .line 2420
    .local v27, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget v30, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v30, v22, v12

    goto/16 :goto_1

    .line 2438
    .end local v27    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v13    # "iccIdInt":I
    :catch_1
    move-exception v10

    .line 2439
    .local v10, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2447
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 2448
    move v4, v12

    .line 2449
    aget v30, v23, v12

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 2450
    const/16 v16, 0x1

    .line 2451
    const-string v30, "setPreferredNetworkForCmcc: is isNewCmccSim"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2476
    :cond_a
    aget v30, v23, v12

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 2477
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2480
    .end local v13    # "iccIdInt":I
    :cond_b
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: lteAutoSimCount :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " gsmOnlySimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " defaultNwSimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " insertedSimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " lteAutoModeCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2484
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "updateNetworkMode: mPhoneOnMode1: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mPhoneOnMode2:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", ddsSubId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2485
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v2, v0, :cond_c

    .line 2486
    if-nez v20, :cond_e

    .line 2487
    const/16 v30, 0x1

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 2488
    const/16 v30, 0x1

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 2489
    const/16 v30, 0x1

    aget v30, v29, v30

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2499
    :cond_c
    :goto_5
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_11

    .line 2500
    const/4 v8, 0x0

    .line 2501
    const/4 v11, 0x1

    .line 2502
    const/16 v19, 0x1

    .line 2503
    const/4 v12, 0x0

    :goto_6
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_11

    .line 2504
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    .line 2505
    const/16 v30, 0x1

    aput v30, v23, v12

    .line 2503
    :cond_d
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2490
    :cond_e
    if-nez v21, :cond_f

    .line 2491
    const/16 v30, 0x0

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 2492
    const/16 v30, 0x0

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 2493
    const/16 v30, 0x0

    aget v30, v29, v30

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_5

    .line 2495
    :cond_f
    sput v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_5

    .line 2507
    :cond_10
    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 2508
    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 2509
    aget v30, v29, v12

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2510
    aget v30, v23, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    .line 2511
    const/16 v30, 0x9

    aput v30, v23, v12

    .line 2512
    const/16 v17, 0x1

    goto :goto_7

    .line 2518
    :cond_11
    if-nez v17, :cond_12

    if-eqz v8, :cond_13

    :cond_12
    if-nez v2, :cond_14

    .line 2519
    :cond_13
    const-string v30, "setPreferredNetworkForCmcc: No sim or Not changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2520
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 2578
    :goto_8
    return-void

    .line 2525
    :cond_14
    const/16 v30, 0x2

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_19

    .line 2526
    :cond_15
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    .line 2527
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2534
    :cond_16
    :goto_9
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: cmccUsimCount: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cmccUsimSlotId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cuUsimCount: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cuUsimSlotId: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " otherSlotId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2537
    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v3, v0, :cond_1d

    .line 2538
    if-lez v8, :cond_1b

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    aget v31, v14, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1b

    .line 2539
    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    .line 2540
    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2541
    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    .line 2566
    :cond_17
    :goto_a
    if-nez v20, :cond_20

    .line 2567
    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    .line 2568
    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2574
    :cond_18
    :goto_b
    const/4 v12, 0x0

    :goto_c
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_21

    .line 2575
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v31, v23, v12

    aput v31, v30, v12

    .line 2574
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 2529
    :cond_19
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_16

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_16

    .line 2530
    const/16 v30, 0x9

    aput v30, v23, v9

    goto/16 :goto_9

    .line 2543
    :cond_1a
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2544
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto :goto_a

    .line 2546
    :cond_1b
    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v11, v0, :cond_1c

    if-lez v8, :cond_17

    .line 2547
    :cond_1c
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    .line 2548
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    goto :goto_a

    .line 2550
    :cond_1d
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v3, v0, :cond_1e

    .line 2551
    const/16 v30, 0x9

    aput v30, v23, v4

    .line 2552
    const/16 v30, 0x1

    aput v30, v23, v24

    goto :goto_a

    .line 2554
    :cond_1e
    if-lez v8, :cond_17

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v15, v0, :cond_17

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    aget v31, v14, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    .line 2555
    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    .line 2556
    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2557
    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_a

    .line 2559
    :cond_1f
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2560
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_a

    .line 2569
    :cond_20
    if-nez v21, :cond_18

    .line 2570
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    .line 2571
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_b

    .line 2577
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkType()V

    goto/16 :goto_8

    .line 2443
    :sswitch_data_0
    .sparse-switch
        0xdb628 -> :sswitch_0
        0xdb62a -> :sswitch_0
        0xdb62f -> :sswitch_0
    .end sparse-switch
.end method

.method private setPreferredNetworkForInu()V
    .locals 26

    .prologue
    .line 2737
    const/16 v21, 0x0

    .line 2738
    .local v21, "updateRequired":Z
    const/4 v6, -0x1

    .line 2739
    .local v6, "inActiveSlot":I
    const/4 v5, 0x0

    .line 2740
    .local v5, "inActiveCount":I
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2741
    .local v20, "subIds":[I
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v13, v0, [I

    .line 2742
    .local v13, "nwModeinSubIdTable":[I
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    new-array v12, v0, [I

    .line 2743
    .local v12, "nwModeInDb":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    .line 2744
    .local v19, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/16 v16, 0x0

    .line 2745
    .local v16, "setnetworkmode":Z
    const/4 v7, 0x0

    .line 2746
    .local v7, "lteAutoSimCount":I
    const/4 v3, 0x0

    .line 2747
    .local v3, "cdmaSimCount":I
    const/4 v10, 0x0

    .line 2748
    .local v10, "newSimCount":I
    const/4 v11, 0x0

    .line 2749
    .local v11, "newSimSlot":I
    const/4 v14, 0x0

    .line 2750
    .local v14, "otherSimSlot":I
    const/4 v8, 0x0

    .line 2752
    .local v8, "lteSubcount":I
    const/16 v17, 0x0

    .line 2753
    .local v17, "slotMatch":I
    const/4 v15, 0x0

    .line 2755
    .local v15, "prefSlotMatch":I
    const-string v22, "ril.modem.board"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2756
    .local v9, "modemType":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[setPreferredNetworkForInu] : modemType "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2758
    const/16 v22, 0x0

    sput v22, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    .line 2760
    const-string v22, "trigger_restart_min_framework"

    const-string v23, "vold.decrypt"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "1"

    const-string v23, "vold.decrypt"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2762
    :cond_0
    const-string v22, "[setPreferredNetworkForInu] block it under phone lock with pin "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2896
    :cond_1
    :goto_0
    return-void

    .line 2766
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[setPreferredNetworkForInu] subCtrlr.NewRecord after reset: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/telephony/SubscriptionController;->NewRecord:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2768
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v4, v0, :cond_7

    .line 2770
    :try_start_0
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "preferred_network_mode"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    aput v22, v12, v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    :goto_2
    aget v22, v12, v4

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 2777
    add-int/lit8 v7, v7, 0x1

    .line 2779
    :cond_3
    aget v22, v12, v4

    if-nez v22, :cond_4

    .line 2780
    add-int/lit8 v3, v3, 0x1

    .line 2782
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v22

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v4

    .line 2783
    aget v22, v20, v4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v22

    aput v22, v13, v4

    .line 2785
    aget v22, v13, v4

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    aget v22, v13, v4

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 2786
    add-int/lit8 v8, v8, 0x1

    .line 2788
    :cond_5
    aget v22, v20, v4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 2789
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setPreferredNetworkForInu: not acitve slot: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2790
    move v6, v4

    .line 2791
    add-int/lit8 v5, v5, 0x1

    .line 2768
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2772
    :catch_0
    move-exception v18

    .line 2773
    .local v18, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget v22, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v22, v12, v4

    goto :goto_2

    .line 2795
    .end local v18    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setPreferredNetworkForInu: subIds["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v20, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " nwModeInDb: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v12, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " nwModeinSubIdTable: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v13, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lteAutoSimCount :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "lteSubcount"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 2799
    :cond_7
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_9

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v3, v0, :cond_8

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    .line 2800
    :cond_8
    const/16 v22, 0x1

    aput v22, v13, v6

    .line 2801
    aget v22, v20, v6

    aget v23, v13, v6

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2802
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setPreferredNetworkForInu: not acitve slot to GSM  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2805
    :cond_9
    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v3, v0, :cond_a

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_b

    .line 2806
    :cond_a
    if-nez v6, :cond_10

    .line 2807
    const/16 v22, 0x0

    const/16 v23, 0x1

    aput v23, v12, v22

    .line 2808
    const/16 v22, 0x1

    const/16 v23, 0x9

    aput v23, v12, v22

    .line 2815
    :cond_b
    :goto_4
    const/4 v4, 0x0

    :goto_5
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v4, v0, :cond_11

    .line 2816
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v22

    const/16 v23, 0x0

    aget v22, v22, v23

    aput v22, v20, v4

    .line 2817
    aget v22, v13, v4

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v8, v0, :cond_d

    .line 2818
    :cond_c
    aget v22, v12, v4

    aput v22, v13, v4

    .line 2819
    aget v22, v20, v4

    aget v23, v12, v4

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2820
    const/16 v21, 0x1

    .line 2821
    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v8, v0, :cond_d

    .line 2822
    add-int/lit8 v10, v10, 0x1

    .line 2823
    move v11, v4

    .line 2826
    :cond_d
    aget v22, v13, v4

    aget v23, v12, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v5, v0, :cond_f

    .line 2827
    if-nez v8, :cond_e

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v10, v0, :cond_e

    aget v22, v12, v4

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 2828
    move/from16 v17, v4

    .line 2829
    const/4 v15, 0x1

    .line 2831
    :cond_e
    const/16 v21, 0x1

    .line 2815
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2810
    :cond_10
    const/16 v22, 0x0

    const/16 v23, 0x9

    aput v23, v12, v22

    .line 2811
    const/16 v22, 0x1

    const/16 v23, 0x1

    aput v23, v12, v22

    goto :goto_4

    .line 2835
    :cond_11
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v10, v0, :cond_16

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v5, v0, :cond_16

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_12

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v7, v0, :cond_16

    .line 2836
    :cond_12
    if-nez v6, :cond_15

    .line 2837
    const/16 v22, 0x0

    const/16 v23, 0x1

    aput v23, v12, v22

    .line 2838
    const/16 v22, 0x1

    const/16 v23, 0x9

    aput v23, v12, v22

    .line 2843
    :goto_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v12, v23

    aput v23, v13, v22

    .line 2844
    const/16 v22, 0x1

    const/16 v23, 0x1

    aget v23, v12, v23

    aput v23, v13, v22

    .line 2845
    const/16 v21, 0x1

    .line 2858
    :cond_13
    :goto_7
    const/4 v7, 0x0

    .line 2859
    const/4 v3, 0x0

    .line 2861
    if-eqz v21, :cond_14

    .line 2862
    const/4 v4, 0x0

    :goto_8
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v4, v0, :cond_14

    .line 2863
    aget v22, v13, v4

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    .line 2864
    aget v22, v20, v4

    aget v23, v13, v4

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2865
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "preferred_network_mode"

    aget v24, v13, v4

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v4, v2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2867
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateNetworkMode: nwModeinSubIdTable["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v13, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2868
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Updating Value in DB for slot["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v13, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2869
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    .line 2870
    const/16 v16, 0x1

    .line 2876
    :cond_14
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 2877
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    if-nez v22, :cond_1a

    const/16 v22, 0x1

    :goto_9
    sput v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    .line 2878
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget v22, v13, v22

    sput v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    .line 2879
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    aget v22, v13, v22

    sput v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFirstNetworkMode:I

    .line 2880
    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget v22, v20, v22

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2881
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "preferred_network_mode"

    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    sget v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    invoke-static/range {v22 .. v25}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2883
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateNetworkMode: setPreferredNetwork["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    aget v23, v13, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2884
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateNetworkMode: PreferredNetworkSlot["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget v23, v13, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2885
    const-string v22, "SC9830i"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 2886
    if-nez v15, :cond_1b

    .line 2887
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget-object v22, v22, v23

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget v23, v13, v23

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2840
    :cond_15
    const/16 v22, 0x0

    const/16 v23, 0x9

    aput v23, v12, v22

    .line 2841
    const/16 v22, 0x1

    const/16 v23, 0x1

    aput v23, v12, v22

    goto/16 :goto_6

    .line 2846
    :cond_16
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_13

    .line 2847
    if-nez v11, :cond_17

    const/4 v14, 0x1

    .line 2849
    :goto_a
    aget v22, v13, v14

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 2850
    const/16 v22, 0x9

    aput v22, v13, v11

    .line 2855
    :goto_b
    const/16 v21, 0x1

    goto/16 :goto_7

    .line 2847
    :cond_17
    const/4 v14, 0x0

    goto :goto_a

    .line 2852
    :cond_18
    const/16 v22, 0x1

    aput v22, v13, v11

    goto :goto_b

    .line 2862
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 2877
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 2889
    :cond_1b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Sub != Slot  updateNetworkMode: setPreferredNetwork["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v13, v17

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2890
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v22, v22, v17

    aget v23, v13, v17

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2893
    :cond_1c
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    aget-object v22, v22, v23

    sget v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    aget v23, v13, v23

    const/16 v24, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private setPreferredNetworkType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2275
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2279
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 2280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkType:  mPrefNwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2281
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2285
    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 2286
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v1, v1, v0

    if-ne v1, v5, :cond_3

    .line 2287
    const/16 v1, 0xd

    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v0, v2, v4

    aput v4, v2, v5

    const/4 v3, 0x2

    aput v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2285
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setPreferredNetworkTypeDone(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2294
    const/4 v7, 0x1

    .local v7, "success":Z
    const/4 v3, 0x0

    .line 2295
    .local v3, "finish":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2296
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [I

    move-object v1, v8

    check-cast v1, [I

    .line 2297
    .local v1, "arg":[I
    aget v5, v1, v10

    .line 2298
    .local v5, "phoneId":I
    aget v4, v1, v9

    .line 2299
    .local v4, "nextPhoneCount":I
    aget v6, v1, v12

    .line 2300
    .local v6, "retryCount":I
    const/16 v2, 0x7d0

    .line 2302
    .local v2, "delay":I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_2

    .line 2303
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkTypeDone(SUB"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "): Fail, retryCount:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2305
    if-ge v6, v12, :cond_0

    const/4 v7, 0x0

    .line 2306
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 2311
    :goto_0
    if-eqz v7, :cond_1

    .line 2312
    if-nez v5, :cond_3

    move v5, v9

    .line 2313
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 2314
    const/4 v6, 0x0

    .line 2315
    const/4 v2, 0x0

    .line 2318
    :cond_1
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v4, v8, :cond_4

    .line 2319
    const/16 v8, 0xd

    const/4 v11, 0x3

    new-array v11, v11, [I

    aput v5, v11, v10

    aput v4, v11, v9

    aput v6, v11, v12

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v10, v2

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2325
    :goto_2
    return v3

    .line 2308
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkTypeDone(SUB"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "): Success"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v5, v10

    .line 2312
    goto :goto_1

    .line 2322
    :cond_4
    const-string v8, "setPreferredNetworkTypeDone Finish"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2323
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 539
    const-string v0, "startTimeOut()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cancelTimeOut()V

    .line 541
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    .line 542
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 543
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 2239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 2241
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2243
    :catch_0
    move-exception v1

    .line 2244
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2245
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    const-string v3, "ro.telephony.default_network"

    const-string v4, "1"

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 2247
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v4, v4, v0

    invoke-static {v2, v3, v0, v4}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 2251
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    .line 1355
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1357
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    .line 1359
    return-void
.end method

.method private updateCtcSimOn()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2329
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v0

    .line 2331
    .local v0, "insertedSlotCount":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    if-eqz v3, :cond_0

    .line 2332
    sput-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    .line 2333
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "IS_CTC"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2334
    .local v1, "isctc1":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "IS_CTC2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2335
    .local v2, "isctc2":I
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    if-eqz v3, :cond_0

    .line 2336
    sput-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    .line 2337
    if-ne v1, v6, :cond_0

    if-ne v2, v6, :cond_0

    .line 2338
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    if-nez v3, :cond_1

    .line 2340
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2341
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    .line 2342
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2353
    .end local v1    # "isctc1":I
    .end local v2    # "isctc2":I
    :cond_0
    :goto_0
    return-void

    .line 2345
    .restart local v1    # "isctc1":I
    .restart local v2    # "isctc2":I
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2346
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    .line 2347
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static updateDDSChangeProperty()V
    .locals 3

    .prologue
    .line 1734
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    if-eqz v0, :cond_1

    .line 1735
    const-string v0, "false"

    const-string v1, "persist.radio.defdataSIMchange"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    if-eq v0, v1, :cond_0

    .line 1737
    const-string v0, "persist.radio.defdataSIMchange"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    .line 1742
    :cond_1
    return-void
.end method

.method private updateIccAvailability()V
    .locals 13

    .prologue
    .line 933
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v11, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    const-string v11, "updateIccAvailability: Enter"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent()Z

    move-result v11

    if-nez v11, :cond_2

    .line 939
    const-string v11, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 940
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    goto :goto_0

    .line 944
    :cond_2
    const/4 v9, 0x0

    .local v9, "slotId":I
    :goto_1
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v9, v11, :cond_0

    .line 946
    const/4 v4, 0x0

    .line 947
    .local v4, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v10, 0x0

    .line 949
    .local v10, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 950
    .local v5, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 951
    .local v3, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v3, :cond_4

    .line 952
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    .line 954
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v6

    .line 955
    .local v6, "numApps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 956
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 957
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v11, v12, :cond_8

    .line 958
    move-object v10, v0

    .line 962
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    if-eqz v10, :cond_4

    .line 963
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 966
    .end local v2    # "i":I
    .end local v6    # "numApps":I
    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    if-eq v11, v4, :cond_6

    .line 967
    const-string v11, "mIccRecords changed. Reregestering."

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 968
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    if-eqz v11, :cond_5

    .line 969
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForIccIdReady(Landroid/os/Handler;)V

    .line 971
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v11, v9

    .line 981
    :cond_6
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v7, v11, v9

    .line 982
    .local v7, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v5, v11, v9

    .line 983
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Slot["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: New Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Old Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 987
    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v11, :cond_9

    .line 988
    const-string v11, "SubscriptionInfoUpdater"

    const-string v12, "updateIccAvailability: Returning NV mode "

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 955
    .end local v7    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "i":I
    .restart local v6    # "numApps":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 992
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i":I
    .end local v6    # "numApps":I
    .restart local v7    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_9
    const-string v11, "gsm.sim.state"

    const-string v12, "NOT_READY"

    invoke-static {v9, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 993
    .local v8, "simState":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    if-eqz v11, :cond_c

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "ABSENT"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 994
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hot plug out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 995
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 997
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v11

    if-eqz v11, :cond_a

    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 998
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->needUpdateBySoftSim()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1000
    const-string v11, "updateIccAvailability: needUpdateBySoftSim true"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1009
    :cond_a
    :goto_4
    const-string v11, "ro.csc.countryiso_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "countryISO":Ljava/lang/String;
    const-string v11, "CN"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "HK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "TW"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1011
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1012
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    if-nez v11, :cond_c

    .line 1013
    const-string v11, "mHotSwapDisable set true for hot plug out"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1014
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    .line 1024
    .end local v1    # "countryISO":Ljava/lang/String;
    :cond_c
    const-string v11, "NOT_READY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1025
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_f

    .line 1026
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v9

    .line 1030
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", but simState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", continue"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1001
    :cond_d
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-nez v11, :cond_a

    .line 1002
    const-string v11, "mHotSwapRemoved set true for hot plug out"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1003
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    .line 1004
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    goto :goto_4

    .line 1017
    .restart local v1    # "countryISO":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1018
    const-string v11, "Not Supporting Hot Swap. So It should not update the subscription on removing SIM card."

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1028
    .end local v1    # "countryISO":Ljava/lang/String;
    :cond_f
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    goto :goto_5

    .line 1034
    :cond_10
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    .line 1036
    const-string v11, "CTC"

    sget-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "1"

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1039
    :cond_11
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v9

    .line 1042
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v11, :cond_7

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v11, :cond_7

    .line 1043
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_3

    .line 1045
    .end local v8    # "simState":Ljava/lang/String;
    :cond_13
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1047
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    if-eqz v11, :cond_16

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1048
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hot plug in"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1049
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    .line 1050
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1051
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    .line 1052
    sput v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    .line 1054
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v11

    if-eqz v11, :cond_16

    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_16

    .line 1055
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    .line 1056
    const-string v11, "mHotSwapRemoved set false for hot plug in"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1057
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    .line 1059
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v11, v12, :cond_14

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v11, v12, :cond_15

    .line 1061
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->startTimeOut()V

    .line 1064
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1084
    :cond_16
    :goto_6
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_3

    .line 1067
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionController;->setCalledUpdateUserPrefs(Z)V

    goto :goto_6

    .line 1070
    :cond_18
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    .line 1071
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cancelTimeOut()V

    goto :goto_6

    .line 1073
    :cond_19
    const-string v11, "without hotswap & normal booting Case"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1075
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v11, v12, :cond_1a

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v11, v12, :cond_16

    .line 1077
    :cond_1a
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->startTimeOut()V

    goto :goto_6
.end method

.method private updateNetworkModeForChina([Ljava/lang/String;)V
    .locals 45
    .param p1, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 1835
    const/4 v4, 0x1

    .local v4, "SIM_CMCC":I
    const/4 v6, 0x2

    .local v6, "SIM_CU":I
    const/4 v5, 0x3

    .line 1836
    .local v5, "SIM_CTC":I
    sget-object v38, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    .line 1837
    .local v38, "subStatus":[I
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1838
    .local v24, "newNwMode":[I
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 1839
    .local v36, "subIds":[I
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1840
    .local v25, "nwMode":[I
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1841
    .local v16, "isCTC":[I
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1842
    .local v30, "simOperator":[I
    const/16 v39, -0x1

    .line 1843
    .local v39, "updateSlot":I
    const/16 v40, 0x0

    .line 1844
    .local v40, "updateSlotCount":I
    const/4 v7, 0x0

    .line 1845
    .local v7, "activeSlotCount":I
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    .line 1846
    .local v26, "oldDataSubId":I
    const/16 v18, 0x1

    .line 1847
    .local v18, "isSimNotChange":Z
    const-string v41, "CHM"

    sget-object v42, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 1848
    .local v17, "isCmcc":Z
    const/16 v21, 0x0

    .line 1849
    .local v21, "needSetDefaultSubId":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v35

    .line 1850
    .local v35, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/16 v41, -0x1

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 1852
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->syncPreferredNwModeFromDB()V

    .line 1853
    const/4 v8, 0x0

    .line 1854
    .local v8, "defaultSlot":I
    const/16 v28, 0x0

    .line 1856
    .local v28, "primaryStackSlot":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_2

    .line 1857
    const/16 v41, 0x0

    aput v41, v16, v10

    .line 1858
    const/16 v41, -0x1

    aput v41, v36, v10

    .line 1859
    const/16 v41, -0x1

    aput v41, v24, v10

    .line 1860
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 1861
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v41, v41, v10

    const/16 v42, 0x9

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    move v8, v10

    .line 1856
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1863
    :cond_1
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v41, v41, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_0

    move v8, v10

    goto :goto_1

    .line 1868
    :cond_2
    const/4 v10, 0x0

    :goto_2
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_3

    .line 1869
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v41, v41, v10

    aget-object v42, p1, v10

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_7

    .line 1870
    const/16 v18, 0x0

    .line 1874
    :cond_3
    if-nez v18, :cond_5

    .line 1875
    const/16 v18, 0x1

    .line 1876
    const/4 v10, 0x0

    :goto_3
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_5

    .line 1877
    aget v41, v38, v10

    if-eqz v41, :cond_4

    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v41, v41, v10

    sget v42, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    add-int/lit8 v42, v42, -0x1

    sub-int v42, v42, v10

    aget-object v42, p1, v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_8

    .line 1879
    :cond_4
    const/16 v18, 0x0

    .line 1885
    :cond_5
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v37

    .line 1886
    .local v37, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v37, :cond_9

    .line 2228
    :cond_6
    :goto_4
    return-void

    .line 1868
    .end local v37    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1876
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1888
    .restart local v37    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/SubscriptionInfo;

    .line 1889
    .local v34, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v41

    aget v41, v38, v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_a

    .line 1890
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1893
    .end local v34    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_b
    if-eqz v7, :cond_6

    .line 1895
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_c
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/telephony/SubscriptionInfo;

    .line 1896
    .restart local v34    # "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v32

    .line 1897
    .local v32, "slotId":I
    const/4 v12, 0x0

    .line 1898
    .local v12, "iccIdInt":I
    const/16 v23, 0x0

    .line 1899
    .local v23, "needUpdateSlot":Z
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getNwMode()I

    move-result v41

    aput v41, v25, v32

    .line 1900
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v41

    aput v41, v36, v32

    .line 1903
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v7, v0, :cond_d

    const/16 v23, 0x1

    .line 1905
    :cond_d
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    const/16 v42, 0x6

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_e

    .line 1907
    :try_start_0
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x6

    invoke-virtual/range {v41 .. v43}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1912
    :cond_e
    :goto_7
    sparse-switch v12, :sswitch_data_0

    .line 1951
    :cond_f
    :goto_8
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ":"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", subId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget v42, v36, v32

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", nwMode:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget v42, v25, v32

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", phoneOn:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget v42, v38, v32

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", isCTC:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget v42, v16, v32

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", isSimNotChange:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1955
    aget v41, v38, v32

    if-eqz v41, :cond_c

    .line 1957
    if-nez v18, :cond_c

    .line 1959
    if-eqz v23, :cond_c

    .line 1960
    add-int/lit8 v40, v40, 0x1

    .line 1961
    move/from16 v39, v32

    goto/16 :goto_6

    .line 1908
    :catch_0
    move-exception v9

    .line 1909
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    goto :goto_7

    .line 1916
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    const/16 v41, 0x1

    aput v41, v30, v32

    .line 1917
    if-eqz v17, :cond_10

    .line 1918
    const/16 v23, 0x1

    .line 1919
    const/16 v21, 0x1

    .line 1921
    :cond_10
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/TelephonyFeatures;->setEnableCmccVolteFeature(Z)V

    goto/16 :goto_8

    .line 1925
    :sswitch_1
    const/16 v41, 0x2

    aput v41, v30, v32

    .line 1926
    if-eqz v17, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_Common_SupportWcdmaFddLte"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_f

    .line 1927
    const/16 v41, 0x1

    aput v41, v24, v32

    .line 1928
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 1935
    :sswitch_2
    const/16 v41, 0x3

    aput v41, v30, v32

    .line 1936
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 1937
    const-string v41, "ril.ICC_TYPE"

    const-string v42, "0"

    move/from16 v0, v32

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1938
    .local v13, "iccType":Ljava/lang/String;
    const-string v41, "3"

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_11

    const-string v41, "4"

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_12

    .line 1939
    :cond_11
    const/16 v23, 0x1

    .line 1940
    const/16 v41, 0x1

    aput v41, v16, v32

    .line 1942
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_f

    const/16 v41, 0x1

    move/from16 v0, v41

    if-le v7, v0, :cond_f

    .line 1944
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 1965
    .end local v12    # "iccIdInt":I
    .end local v13    # "iccType":Ljava/lang/String;
    .end local v23    # "needUpdateSlot":Z
    .end local v32    # "slotId":I
    .end local v34    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 1966
    const/4 v10, 0x0

    :goto_9
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_16

    .line 1967
    if-nez v10, :cond_15

    const-string v3, "IS_CTC"

    .line 1968
    .local v3, "CtcKey":Ljava/lang/String;
    :goto_a
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    aget v42, v16, v10

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1969
    aget v41, v16, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v41, v41, v10

    const/16 v42, 0x0

    invoke-interface/range {v41 .. v42}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1966
    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1967
    .end local v3    # "CtcKey":Ljava/lang/String;
    :cond_15
    const-string v3, "IS_CTC2"

    goto :goto_a

    .line 1973
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_17

    .line 1975
    const-string v41, "1"

    const/16 v42, 0x0

    const-string v43, "persist.radio.multisim.stackid"

    const-string v44, "0"

    invoke-static/range {v42 .. v44}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1d

    const/16 v28, 0x1

    .line 1977
    :goto_b
    move/from16 v8, v28

    .line 1980
    :cond_17
    const/16 v41, -0x1

    move/from16 v0, v39

    move/from16 v1, v41

    if-ne v0, v1, :cond_19

    const-string v41, "cmcc"

    const-string v42, "ro.prefer.primarysimop"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 1982
    const-string v41, "[updateNetworkModeForChina] CMCC Requirement Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1983
    const/4 v10, 0x0

    :goto_c
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_19

    .line 1984
    if-nez v10, :cond_1e

    const/16 v27, 0x1

    .line 1985
    .local v27, "otherSlot":I
    :goto_d
    aget v41, v25, v10

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_18

    aget v41, v25, v27

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_1f

    .line 1986
    :cond_18
    const-string v41, "[updateNetworkModeForChina] CMCC Requirement, old sim, return"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2001
    .end local v27    # "otherSlot":I
    :cond_19
    :goto_e
    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_1c

    .line 2002
    const/16 v39, -0x1

    .line 2003
    const/16 v29, 0x0

    .line 2004
    .local v29, "secondaryNwCount":I
    const/4 v10, 0x0

    :goto_f
    move/from16 v0, v40

    if-ge v10, v0, :cond_1a

    .line 2006
    aget v41, v25, v10

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_21

    .line 2007
    move/from16 v39, v10

    .line 2008
    const/16 v29, 0x1

    .line 2015
    :cond_1a
    const/16 v41, 0x1

    move/from16 v0, v29

    move/from16 v1, v41

    if-eq v0, v1, :cond_1b

    .line 2016
    move/from16 v39, v8

    .line 2018
    :cond_1b
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] Step1, updateSlot:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", updateSlotCount:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2021
    .end local v29    # "secondaryNwCount":I
    :cond_1c
    const/16 v41, -0x1

    move/from16 v0, v39

    move/from16 v1, v41

    if-ne v0, v1, :cond_2a

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v7, v0, :cond_2a

    .line 2023
    const/16 v29, 0x0

    .line 2026
    .restart local v29    # "secondaryNwCount":I
    const/4 v10, 0x0

    :goto_10
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_24

    .line 2027
    aget v41, v24, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_23

    .line 2028
    add-int/lit8 v29, v29, 0x1

    .line 2026
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1975
    .end local v29    # "secondaryNwCount":I
    :cond_1d
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 1984
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_d

    .line 1990
    .restart local v27    # "otherSlot":I
    :cond_1f
    aget v41, v30, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_20

    aget v41, v30, v27

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_20

    .line 1991
    const/16 v21, 0x1

    .line 1992
    move/from16 v39, v10

    .line 1993
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] CMCC Requirement, set updateSlot as:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1983
    :cond_20
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    .line 2010
    .end local v27    # "otherSlot":I
    .restart local v29    # "secondaryNwCount":I
    :cond_21
    aget v41, v25, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_22

    .line 2011
    add-int/lit8 v29, v29, 0x1

    .line 2004
    :cond_22
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 2030
    :cond_23
    move/from16 v39, v10

    goto :goto_11

    .line 2035
    :cond_24
    if-nez v29, :cond_28

    .line 2036
    const/4 v10, 0x0

    :goto_12
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_27

    .line 2037
    aget v41, v36, v10

    move/from16 v0, v41

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    move v8, v10

    .line 2039
    :cond_25
    aget v41, v25, v10

    packed-switch v41, :pswitch_data_0

    .line 2051
    :cond_26
    move/from16 v39, v10

    .line 2036
    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    .line 2042
    :pswitch_0
    add-int/lit8 v29, v29, 0x1

    .line 2043
    goto :goto_13

    .line 2045
    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_26

    aget v41, v36, v10

    move/from16 v0, v41

    move/from16 v1, v26

    if-eq v0, v1, :cond_26

    .line 2047
    add-int/lit8 v29, v29, 0x1

    .line 2048
    goto :goto_13

    .line 2054
    :cond_27
    const/16 v41, 0x1

    move/from16 v0, v29

    move/from16 v1, v41

    if-eq v0, v1, :cond_28

    move/from16 v39, v8

    .line 2057
    :cond_28
    if-eqz v18, :cond_29

    if-lez v29, :cond_29

    .line 2058
    const/16 v39, -0x1

    .line 2060
    :cond_29
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] Step2, updateSlot:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", secondaryNwCount:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", defaultSlot:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", oldDataSubId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2066
    .end local v29    # "secondaryNwCount":I
    :cond_2a
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v42, "softsim_previnfo"

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 2067
    .local v31, "simPrevInfo":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 2069
    .local v14, "infoEditor":Landroid/content/SharedPreferences$Editor;
    const/16 v19, 0x0

    .line 2070
    .local v19, "isSoftSimActivated":Z
    const/4 v10, 0x0

    :goto_14
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_33

    .line 2073
    const-string v41, "persist.sys.softsim.status"

    const-string v42, "default"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v10, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2074
    .local v33, "softSimState":Ljava/lang/String;
    const-string v41, "activating"

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2b

    const-string v41, "activated"

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 2075
    :cond_2b
    const/16 v19, 0x1

    .line 2076
    const-string v41, "is_active"

    const/16 v42, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    if-nez v41, :cond_2d

    .line 2077
    const-string v41, "is_active"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2078
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_15
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    move/from16 v1, v41

    if-ge v0, v1, :cond_2c

    .line 2079
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "iccid"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    aget-object v42, p1, v20

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2080
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "nwmode"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    sget-object v42, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v42, v42, v20

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2078
    add-int/lit8 v20, v20, 0x1

    goto :goto_15

    .line 2082
    :cond_2c
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2083
    const-string v41, "[updateNetworkModeForChina][SoftSim] Store previous Sim info"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2086
    .end local v20    # "j":I
    :cond_2d
    const-string v41, "4g"

    const-string v42, "persist.sys.softsim.netmode"

    const-string v43, "default"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v10, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_30

    .line 2087
    const/16 v41, 0x9

    aput v41, v24, v10

    .line 2091
    :goto_16
    aget v41, v36, v10

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2093
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v7, v0, :cond_2e

    .line 2094
    if-nez v10, :cond_31

    const/16 v27, 0x1

    .line 2095
    .restart local v27    # "otherSlot":I
    :goto_17
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_32

    .line 2096
    const/16 v41, 0x0

    aput v41, v24, v27

    .line 2100
    :goto_18
    aget v41, v36, v27

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 2101
    aget v41, v36, v27

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 2104
    const-string v41, "ril.isctc"

    const-string v42, "0"

    move/from16 v0, v27

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2107
    .end local v27    # "otherSlot":I
    :cond_2e
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina][SoftSim] Active Slot:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", state:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2108
    const/16 v39, -0x1

    .line 2070
    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_14

    .line 2089
    :cond_30
    const/16 v41, 0x0

    aput v41, v24, v10

    goto :goto_16

    .line 2094
    :cond_31
    const/16 v27, 0x0

    goto :goto_17

    .line 2098
    .restart local v27    # "otherSlot":I
    :cond_32
    const/16 v41, 0x1

    aput v41, v24, v27

    goto :goto_18

    .line 2112
    .end local v27    # "otherSlot":I
    .end local v33    # "softSimState":Ljava/lang/String;
    :cond_33
    if-nez v19, :cond_38

    const-string v41, "is_active"

    const/16 v42, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_38

    .line 2113
    const/16 v22, 0x1

    .line 2114
    .local v22, "needToRecover":Z
    const/4 v10, 0x0

    :goto_19
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_35

    .line 2115
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v41, v41, v10

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "iccid"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_34

    .line 2116
    const/16 v22, 0x0

    .line 2114
    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 2120
    :cond_35
    if-eqz v22, :cond_37

    .line 2121
    const/4 v10, 0x0

    :goto_1a
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_36

    .line 2122
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "nwmode"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v42, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    aput v41, v24, v10

    .line 2121
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 2124
    :cond_36
    const/16 v39, -0x1

    .line 2125
    const-string v41, "[updateNetworkModeForChina][SoftSim] Recorver to previous Sim info"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2126
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina][SoftSim] PrevInfo, nwmode0:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "nwmode0"

    const/16 v43, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", nwmode1:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "nwmode1"

    const/16 v43, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2130
    :cond_37
    const-string v41, "is_active"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2131
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2134
    .end local v22    # "needToRecover":Z
    :cond_38
    const/16 v41, -0x1

    move/from16 v0, v39

    move/from16 v1, v41

    if-le v0, v1, :cond_3e

    .line 2135
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_39

    aget v41, v25, v39

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_39

    aget v41, v25, v39

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3a

    .line 2138
    :cond_39
    aget v41, v36, v39

    move/from16 v0, v41

    move/from16 v1, v26

    if-eq v0, v1, :cond_3a

    .line 2140
    const/16 v41, 0x9

    aput v41, v24, v39

    .line 2144
    :cond_3a
    if-nez v39, :cond_41

    const/16 v27, 0x1

    .line 2145
    .restart local v27    # "otherSlot":I
    :goto_1b
    const/16 v41, 0x1

    aput v41, v24, v27

    .line 2147
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3b

    .line 2148
    aget v41, v30, v39

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_3b

    aget v41, v30, v27

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_3b

    aget v41, v30, v27

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_42

    .line 2157
    :cond_3b
    :goto_1c
    if-eqz v21, :cond_3d

    .line 2158
    if-nez v17, :cond_3c

    const-string v41, "cmcc"

    const-string v42, "ro.prefer.primarysimop"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_3d

    .line 2159
    :cond_3c
    aget v41, v36, v39

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 2160
    aget v41, v36, v39

    move-object/from16 v0, v35

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 2163
    :cond_3d
    aget v41, v36, v39

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2165
    aget v41, v16, v39

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3e

    move/from16 v0, v39

    move/from16 v1, v28

    if-eq v0, v1, :cond_3e

    .line 2166
    new-instance v15, Landroid/content/Intent;

    const-string v41, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    move-object/from16 v0, v41

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2170
    .local v15, "intent":Landroid/content/Intent;
    const-string v41, "state"

    add-int/lit8 v42, v39, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2171
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2172
    const-string v41, "[updateNetworkModeForChina] Send Intent: com.samsung.intent.action.ACTION_CROSS_MAPPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2175
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v27    # "otherSlot":I
    :cond_3e
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] activeSlotCount:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", updateSlotCount:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", updateSlot:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", newDataSubId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    sget v42, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2180
    const/4 v10, 0x0

    :goto_1d
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_44

    .line 2181
    aget v41, v36, v10

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_40

    .line 2182
    aget v41, v24, v10

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3f

    .line 2183
    aget v41, v25, v10

    aput v41, v24, v10

    .line 2185
    :cond_3f
    aget v41, v24, v10

    aget v42, v25, v10

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_40

    .line 2186
    aget v41, v36, v10

    aget v42, v24, v10

    move-object/from16 v0, v35

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2189
    :cond_40
    aget v41, v24, v10

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_43

    .line 2190
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    const/16 v42, 0x1

    aput v42, v41, v10

    .line 2194
    :goto_1e
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] newNwMode["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "]:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    aget v42, v24, v10

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2180
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 2144
    :cond_41
    const/16 v27, 0x0

    goto/16 :goto_1b

    .line 2153
    .restart local v27    # "otherSlot":I
    :cond_42
    const/16 v41, 0x0

    aput v41, v24, v27

    goto/16 :goto_1c

    .line 2192
    .end local v27    # "otherSlot":I
    :cond_43
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v42, v24, v10

    aput v42, v41, v10

    goto :goto_1e

    .line 2198
    :cond_44
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_47

    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ne v7, v0, :cond_47

    .line 2200
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_SupportWcdma75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_4a

    .line 2201
    const/4 v10, 0x0

    :goto_1f
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_46

    .line 2202
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v41, v41, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_45

    .line 2201
    :goto_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 2204
    :cond_45
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v41, v41, v10

    const/16 v42, 0x9

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_48

    .line 2205
    aget v41, v36, v10

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .line 2224
    :cond_46
    :goto_21
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "[updateNetworkModeForChina] mMainStackSubId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    sget v42, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2227
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkType()V

    goto/16 :goto_4

    .line 2208
    :cond_48
    aget v41, v36, v10

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_49

    .line 2209
    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v41

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_21

    .line 2212
    :cond_49
    aget v41, v36, v10

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_20

    .line 2216
    :cond_4a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v41

    const-string v42, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_4b

    if-nez v17, :cond_4b

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v41

    if-nez v41, :cond_46

    .line 2219
    :cond_4b
    const/4 v10, 0x0

    :goto_22
    sget v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v41

    if-ge v10, v0, :cond_46

    .line 2220
    sget-object v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v41, v41, v10

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_4c

    .line 2219
    :goto_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 2221
    :cond_4c
    aget v41, v36, v10

    sput v41, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_23

    .line 1912
    nop

    :sswitch_data_0
    .sparse-switch
        0xdb5e2 -> :sswitch_2
        0xdb628 -> :sswitch_0
        0xdb629 -> :sswitch_1
        0xdb62a -> :sswitch_0
        0xdb62b -> :sswitch_2
        0xdb62d -> :sswitch_2
        0xdb62e -> :sswitch_1
        0xdb62f -> :sswitch_0
        0xdb633 -> :sswitch_2
    .end sparse-switch

    .line 2039
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNwModeFromDB(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2254
    const-string v5, "ro.csc.countryiso_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2255
    .local v0, "countryISO":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "HK"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2258
    :cond_0
    if-nez p1, :cond_1

    move v2, v3

    .line 2259
    .local v2, "otherSimSlot":I
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v5, v5, v2

    const/16 v6, -0x63

    if-ne v5, v6, :cond_3

    const-string v5, "2"

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2262
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->syncPreferredNwModeFromDB()V

    .line 2264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v5, :cond_2

    .line 2265
    const/16 v5, 0xd

    const/4 v6, 0x3

    new-array v6, v6, [I

    aput v1, v6, v4

    aput v4, v6, v3

    const/4 v7, 0x2

    aput v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 2264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "otherSimSlot":I
    :cond_1
    move v2, v4

    .line 2258
    goto :goto_0

    .line 2268
    .restart local v1    # "i":I
    .restart local v2    # "otherSimSlot":I
    :cond_2
    const-string v3, "updateSubscriptionInfoByIccId:- updateNwModeFromDB"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2271
    .end local v1    # "i":I
    .end local v2    # "otherSimSlot":I
    :cond_3
    return-void
.end method

.method private updateNwModesInSubIdTable(Z)V
    .locals 9
    .param p1, "override"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2581
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 2582
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v6, :cond_2

    .line 2583
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 2584
    .local v5, "subIdList":[I
    if-eqz v5, :cond_1

    aget v6, v5, v8

    if-lez v6, :cond_1

    .line 2587
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2592
    .local v1, "nwModeInDb":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNwModesInSubIdTable: subIdList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nwModeInDb:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2594
    aget v6, v5, v8

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v2

    .line 2595
    .local v2, "nwModeinSubIdTable":I
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 2596
    :cond_0
    aget v6, v5, v8

    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .line 2582
    .end local v1    # "nwModeInDb":I
    .end local v2    # "nwModeinSubIdTable":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2589
    :catch_0
    move-exception v3

    .line 2590
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .restart local v1    # "nwModeInDb":I
    goto :goto_1

    .line 2600
    .end local v1    # "nwModeInDb":I
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v5    # "subIdList":[I
    :cond_2
    return-void
.end method

.method private updateSimOnOff()V
    .locals 15

    .prologue
    const/16 v14, -0x64

    const/4 v13, 0x2

    const/16 v12, -0x63

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2605
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-static {v11, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2606
    .local v5, "telephonySimState":Ljava/lang/String;
    const-string v7, "gsm.sim.state"

    const-string v8, "ABSENT"

    invoke-static {v10, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2607
    .local v6, "telephonySimState2":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2608
    .local v2, "simDBvalue0":I
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    const/4 v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2609
    .local v3, "simDBvalue1":I
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 2610
    .local v1, "insertedSimCount":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimOnOff:updateSimOnOff State1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "State2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimOnOff:simDBvalue0="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "simDBvalue1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2613
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 2615
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v7, :cond_1

    .line 2616
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v7, v7, v0

    if-ne v7, v12, :cond_0

    .line 2617
    add-int/lit8 v1, v1, -0x1

    .line 2615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2621
    :cond_1
    if-ne v1, v10, :cond_6

    .line 2622
    const-string v7, "sim1 only or sim2 only"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2623
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v7, v7, v11

    if-ne v7, v12, :cond_2

    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v7, v7, v11

    if-eq v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v7, v7, v11

    if-eq v7, v13, :cond_2

    .line 2625
    const-string v7, "sim2only, sim2 off"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2626
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone1_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2627
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2629
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v7, v7, v10

    if-ne v7, v12, :cond_3

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v7, v7, v10

    if-eq v7, v10, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v7, v7, v10

    if-eq v7, v13, :cond_3

    .line 2631
    const-string v7, "sim1only, sim1 off"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2632
    sget-object v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "phone2_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2633
    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2657
    :cond_3
    :goto_1
    const-string v7, "UNKNOWN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/SubscriptionHelper;->getmSubStatus(I)I

    move-result v7

    if-ne v7, v14, :cond_4

    if-ne v2, v10, :cond_4

    .line 2659
    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2661
    :cond_4
    const-string v7, "UNKNOWN"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/SubscriptionHelper;->getmSubStatus(I)I

    move-result v7

    if-ne v7, v14, :cond_5

    if-ne v3, v10, :cond_5

    .line 2663
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v10}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2665
    :cond_5
    return-void

    .line 2635
    :cond_6
    if-ne v1, v13, :cond_3

    .line 2636
    const-string v7, "two sim"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2637
    const-string v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v2, :cond_7

    .line 2638
    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v11}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2639
    const-string v7, "[IccCardProxy]slot1 card off"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2641
    :cond_7
    const-string v7, "READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v3, :cond_8

    .line 2642
    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v7

    aget v7, v7, v11

    invoke-virtual {v4, v7, v11}, Lcom/android/internal/telephony/SubscriptionController;->simSlotAction(II)V

    .line 2643
    const-string v7, "[IccCardProxy]slot2 card off"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 2646
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2647
    const-string v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    const-string v7, "READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v2, :cond_b

    .line 2648
    :cond_a
    sput-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    .line 2650
    :cond_b
    const-string v7, "READY"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "READY"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2651
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->CTCSimCheck()V

    goto/16 :goto_1
.end method

.method private updateSoftSimState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_4

    .line 1784
    const-string v2, "persist.sys.softsim.status"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1785
    .local v1, "state":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1783
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1786
    :cond_0
    const-string v2, "activating"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "activated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1787
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aput v4, v2, v0

    .line 1795
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSoftSimState: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", softsim prop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSoftSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1789
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3

    .line 1790
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    const/4 v3, 0x2

    aput v3, v2, v0

    goto :goto_2

    .line 1792
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    goto :goto_2

    .line 1797
    .end local v1    # "state":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private updateSubStatus(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 287
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, "phoneOnState":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aput v0, v3, p1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ON="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Observer onChange hit !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 292
    .local v1, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 293
    .local v2, "subId":I
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 294
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .line 295
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    .line 302
    .end local v1    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "subId":I
    :cond_0
    return-void
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 28

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    const-string v24, "ro.csc.countryiso_code"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1401
    .local v5, "countryISO":Ljava/lang/String;
    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "HK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "TW"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1402
    :cond_0
    sget-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 1403
    const-string v24, "mHotSwapDisable = true return! so it can\'t update subscriptioninfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    :goto_0
    monitor-exit p0

    return-void

    .line 1409
    :cond_1
    :try_start_1
    const-string v24, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1410
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 1414
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_2

    .line 1415
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, 0x0

    aput v25, v24, v6

    .line 1414
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1418
    :cond_2
    sget v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 1419
    .local v9, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_2
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_4

    .line 1420
    const-string v24, ""

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1421
    add-int/lit8 v9, v9, -0x1

    .line 1422
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, -0x63

    aput v25, v24, v6

    .line 1419
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1425
    :cond_4
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "insertedSimCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1431
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v24

    if-eqz v24, :cond_6

    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const-string v24, "2"

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 1433
    sget-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-eqz v24, :cond_6

    .line 1434
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1435
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubStatusForHotswapRemove([I)V

    .line 1437
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    .line 1438
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1439
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v10, "intent":Landroid/content/Intent;
    const-string v24, "android.permission.READ_PHONE_STATE"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v10, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1400
    .end local v5    # "countryISO":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v9    # "insertedSimCount":I
    .end local v10    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    .line 1444
    .restart local v5    # "countryISO":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v9    # "insertedSimCount":I
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v24

    sput v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    .line 1446
    const/4 v8, 0x0

    .line 1447
    .local v8, "index":I
    const/4 v6, 0x0

    :goto_3
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_a

    .line 1448
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    const/16 v25, -0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 1447
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1451
    :cond_8
    const/4 v8, 0x2

    .line 1452
    add-int/lit8 v12, v6, 0x1

    .local v12, "j":I
    :goto_4
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v12, v0, :cond_7

    .line 1453
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v12

    if-nez v24, :cond_9

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v12

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1454
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, 0x1

    aput v25, v24, v6

    .line 1455
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v8, v24, v12

    .line 1456
    add-int/lit8 v8, v8, 0x1

    .line 1452
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1461
    .end local v12    # "j":I
    :cond_a
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1462
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1463
    .local v17, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_5
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_12

    .line 1464
    const/16 v24, 0x0

    aput-object v24, v17, v6

    .line 1465
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    const/16 v25, 0x0

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1468
    .local v18, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v18, :cond_10

    .line 1469
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v6

    .line 1471
    const-string v24, "KDI"

    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    const-string v24, "DCM"

    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1473
    :cond_b
    sget-boolean v24, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v24, :cond_f

    .line 1474
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oldIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = XXX, mIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = XXX"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1478
    :goto_6
    aget-object v24, v17, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    aget-object v25, v17, v6

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1479
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    aget-object v25, v17, v6

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/SubscriptionController;->addiccidchar(Ljava/lang/String;)V

    .line 1480
    aget-object v24, v17, v6

    const/16 v25, 0x0

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v6

    .line 1484
    :cond_c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1486
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    if-nez v24, :cond_d

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    aget-object v25, v17, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 1487
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, -0x1

    aput v25, v24, v6

    .line 1489
    :cond_d
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    if-eqz v24, :cond_e

    .line 1490
    new-instance v23, Landroid/content/ContentValues;

    const/16 v24, 0x1

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 1491
    .local v23, "value":Landroid/content/ContentValues;
    const-string v24, "sim_id"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    sget-object v25, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1463
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_e
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1476
    :cond_f
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oldIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1498
    :cond_10
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    if-nez v24, :cond_11

    .line 1500
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, -0x1

    aput v25, v24, v6

    .line 1502
    :cond_11
    const-string v24, ""

    aput-object v24, v17, v6

    .line 1503
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " last time"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_7

    .line 1507
    .end local v18    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_12
    const/4 v6, 0x0

    :goto_8
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_14

    .line 1509
    sget-boolean v24, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v24, :cond_13

    .line 1510
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oldIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = XXX, mIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = XXX"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1507
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 1512
    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "oldIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v17, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mIccId["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_9

    .line 1518
    :cond_14
    const/4 v14, 0x0

    .line 1519
    .local v14, "nNewCardCount":I
    const/4 v15, 0x0

    .line 1520
    .local v15, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_a
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_18

    .line 1521
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1522
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    const/16 v25, -0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1523
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " this time"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1524
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    .line 1525
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    .line 1520
    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1528
    :cond_16
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    if-lez v24, :cond_17

    .line 1531
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, v6

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v26, v26, v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    .line 1533
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SUB"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int/lit8 v25, v6, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " has invalid IccId"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1537
    :goto_c
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v24, v24, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1538
    add-int/lit8 v14, v14, 0x1

    .line 1539
    packed-switch v6, :pswitch_data_0

    .line 1554
    :goto_d
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, -0x2

    aput v25, v24, v6

    goto :goto_b

    .line 1535
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v25, v25, v6

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    goto :goto_c

    .line 1541
    :pswitch_0
    or-int/lit8 v15, v15, 0x1

    .line 1542
    goto :goto_d

    .line 1544
    :pswitch_1
    or-int/lit8 v15, v15, 0x2

    .line 1545
    goto :goto_d

    .line 1547
    :pswitch_2
    or-int/lit8 v15, v15, 0x4

    goto :goto_d

    .line 1559
    :cond_18
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    .line 1563
    const/4 v6, 0x0

    :goto_e
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_1d

    .line 1564
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    .line 1565
    .local v19, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v20

    .line 1566
    .local v20, "subId":I
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v26, v26, v6

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    aput v25, v24, v6

    .line 1568
    invoke-static/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v24

    if-eqz v24, :cond_1a

    const v24, 0x7ffffffb

    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_1a

    .line 1571
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v9, v0, :cond_19

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aget v24, v24, v6

    if-nez v24, :cond_19

    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_19

    .line 1572
    if-nez v6, :cond_1b

    const/4 v7, 0x1

    .line 1573
    .local v7, "idx":I
    :goto_f
    const-string v24, "CTC"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    move-object/from16 v24, v0

    aget v24, v24, v7

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSoftSimState:[I

    move-object/from16 v24, v0

    aget v24, v24, v7

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1584
    .end local v7    # "idx":I
    :cond_19
    :goto_10
    new-instance v23, Landroid/content/ContentValues;

    const/16 v24, 0x1

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 1585
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string v24, "sub_state"

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aget v25, v25, v6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1586
    sget-object v24, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1588
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: Set sub_state:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aget v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", SubId:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1563
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 1572
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_f

    .line 1579
    .restart local v7    # "idx":I
    :cond_1c
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    const/16 v25, 0x1

    aput v25, v24, v6

    .line 1580
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v25, v25, v6

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aget v26, v26, v6

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_10

    .line 1592
    .end local v7    # "idx":I
    .end local v19    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v20    # "subId":I
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 1598
    :goto_11
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    .line 1601
    const/4 v6, 0x0

    :goto_12
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_20

    .line 1602
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1603
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, -0x3

    aput v25, v24, v6

    .line 1605
    :cond_1e
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v25, v25, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1601
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 1595
    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/SubscriptionController;->setCalledUpdateUserPrefs(Z)V

    goto :goto_11

    .line 1610
    :cond_20
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_23

    .line 1612
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "airplane_mode_on"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    const/4 v11, 0x1

    .line 1614
    .local v11, "isAirPlaneMode":Z
    :goto_13
    const/4 v6, 0x0

    :goto_14
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v24

    if-ge v6, v0, :cond_23

    .line 1615
    if-nez v11, :cond_21

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v24, v24, v6

    const/16 v25, -0x63

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_21

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOn:[I

    aget v24, v24, v6

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_21

    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v24, v24, v6

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_21

    .line 1620
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v24, v24, v6

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1621
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setRadioPower ON: Phone"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1614
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1612
    .end local v11    # "isAirPlaneMode":Z
    :cond_22
    const/4 v11, 0x0

    goto :goto_13

    .line 1627
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 1628
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_26

    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    const-string v24, "CTC"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_25

    :cond_24
    const-string v24, "HK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_25

    const-string v24, "TW"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 1631
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNetworkModeForChina([Ljava/lang/String;)V

    .line 1634
    :cond_26
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 1638
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCtcSimOn()V

    .line 1641
    sget-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-eqz v24, :cond_27

    sget-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    if-nez v24, :cond_2b

    const-string v24, "2"

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2b

    .line 1643
    :cond_27
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 1644
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    .line 1645
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsNwModeUpdated:Z

    .line 1654
    :goto_15
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_28

    .line 1660
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1661
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    .line 1699
    :cond_28
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v21

    .line 1700
    .local v21, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v21, :cond_34

    const/16 v16, 0x0

    .line 1701
    .local v16, "nSubCount":I
    :goto_17
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1702
    const/4 v6, 0x0

    :goto_18
    move/from16 v0, v16

    if-ge v6, v0, :cond_35

    .line 1703
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/SubscriptionInfo;

    .line 1705
    .local v22, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v13

    .line 1708
    .local v13, "msisdn":Ljava/lang/String;
    if-eqz v13, :cond_29

    .line 1709
    new-instance v23, Landroid/content/ContentValues;

    const/16 v24, 0x1

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 1710
    .restart local v23    # "value":Landroid/content/ContentValues;
    const-string v24, "number"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    sget-object v24, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1702
    .end local v23    # "value":Landroid/content/ContentValues;
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 1647
    .end local v13    # "msisdn":Ljava/lang/String;
    .end local v16    # "nSubCount":I
    .end local v21    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v22    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_2a
    const-string v24, "updateSubscriptionInfoByIccId: Pending updateNwMode()"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1648
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsNwModeUpdated:Z

    goto/16 :goto_15

    .line 1651
    :cond_2b
    const-string v24, "HotSwapRemoved State so it skip updateNwMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1666
    :cond_2c
    const-string v24, "CTC"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 1667
    const-string v24, "CTC don\'t need updateSubActivation in SubInfoRecordUpdater"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1668
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initIsCtcValue()V

    .line 1670
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_RIL_EnableCdmaDsBySimCardManager"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 1675
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v24

    sget-object v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_16

    .line 1680
    :cond_2e
    const-string v24, "CTC"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_28

    .line 1681
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_32

    .line 1682
    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2f

    const-string v24, "HK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2f

    const-string v24, "TW"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_30

    .line 1683
    :cond_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNetworkModeForChina([Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1684
    :cond_30
    const-string v24, "INU"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_31

    const-string v24, "INS"

    sget-object v25, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1685
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkForInu()V

    goto/16 :goto_16

    .line 1688
    :cond_32
    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_33

    const-string v24, "HK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_33

    const-string v24, "TW"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1689
    :cond_33
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_28

    .line 1690
    sget-object v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x9

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_16

    .line 1700
    .restart local v21    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_34
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    goto/16 :goto_17

    .line 1718
    .restart local v16    # "nSubCount":I
    :cond_35
    sget v24, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_36

    const-string v24, "CN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_37

    :cond_36
    const-string v24, "HK"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_37

    const-string v24, "TW"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 1720
    :cond_37
    const-string v24, "updateSubscriptionInfoByIccId: Skip setDefaultDataSubId"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1724
    :goto_19
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1727
    new-instance v10, Landroid/content/Intent;

    const-string v24, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1728
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v24, "android.permission.READ_PHONE_STATE"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v10, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1730
    const-string v24, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1722
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_19

    .line 1539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 1820
    const-string v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1821
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1822
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1829
    const-string v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 594
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 913
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unknown msg:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 596
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 597
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 598
    .local v25, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    if-eqz v25, :cond_0

    .line 599
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    move/from16 v23, v0

    .line 600
    .local v23, "slotId":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v23, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " reason = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 601
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_7

    .line 602
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 603
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v11, v26

    check-cast v11, [B

    .line 605
    .local v11, "data":[B
    const-string v26, ""

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v23

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 606
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mIccId["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] is Null so iccid will be update. mNeedUpdate setted true"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 607
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 611
    :cond_1
    const-string v26, "ro.csc.countryiso_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, "countryISO":Ljava/lang/String;
    const-string v26, "CN"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "OPS"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 613
    :cond_2
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v11, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v23

    .line 639
    .end local v10    # "countryISO":Ljava/lang/String;
    .end local v11    # "data":[B
    :goto_1
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v26, :cond_9

    .line 640
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mIccId["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] = XXX"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 645
    :goto_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mNeedUpdate = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "mWaitOtherSlot = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v26

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    sget-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v26, :cond_3

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 650
    :cond_3
    const-string v26, ""

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 652
    sget-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v26, :cond_b

    .line 653
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 654
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Delayed Broadcasting for waiting another SIM card during ICC Query. slot : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 655
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    .line 656
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    .line 657
    new-instance v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$6;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 678
    :goto_3
    const-string v26, ""

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v23

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 679
    const-string v26, "LOCKED"

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 617
    .restart local v10    # "countryISO":Ljava/lang/String;
    .restart local v11    # "data":[B
    :cond_4
    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v11, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v26

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 618
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v11, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v23

    goto/16 :goto_1

    .line 620
    :cond_5
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v11, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v26, v23

    goto/16 :goto_1

    .line 625
    .end local v10    # "countryISO":Ljava/lang/String;
    .end local v11    # "data":[B
    :cond_6
    const-string v26, "Null ar"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 626
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v27, ""

    aput-object v27, v26, v23

    goto/16 :goto_1

    .line 629
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isCrossMappingSupported()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v26

    if-nez v26, :cond_8

    .line 631
    const-string v26, "Query IccId fail: Cross Binding in progress"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 635
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Query IccId fail: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " so Retry read ICCID after 1s"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 636
    const/16 v26, 0xc

    const/16 v27, -0x1

    const-string v28, ""

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 633
    :cond_8
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v27, v26, v23

    goto :goto_4

    .line 642
    :cond_9
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mIccId["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v23

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 664
    :cond_a
    const-string v26, "LOCKED"

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 668
    :cond_b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    .line 669
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    .line 670
    new-instance v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 687
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "slotId":I
    .end local v25    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :sswitch_1
    const-string v26, "EVENT_ICC_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 690
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mIsSystemShutdown: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", ignore EVENT_ICC_CHANGED"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability()V

    goto/16 :goto_0

    .line 697
    :sswitch_2
    const-string v26, "EVENT_STACK_READY"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v26

    if-eqz v26, :cond_0

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 699
    sget-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsNwModeUpdated:Z

    if-nez v26, :cond_d

    .line 700
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    .line 701
    const/16 v26, 0x1

    sput-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsNwModeUpdated:Z

    .line 703
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 704
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_0

    .line 711
    :sswitch_3
    const-string v26, "EVENT_GET_NETWORK_SELECTION_MODE_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 713
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Integer;

    .line 714
    .local v23, "slotId":Ljava/lang/Integer;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_e

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 715
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [I

    move-object/from16 v18, v26

    check-cast v18, [I

    .line 716
    .local v18, "modes":[I
    const/16 v26, 0x0

    aget v26, v18, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 717
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v26, v26, v27

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 720
    .end local v18    # "modes":[I
    :cond_e
    const-string v26, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "slotId":Ljava/lang/Integer;
    :sswitch_4
    const-string v26, "EVENT_SIM_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    goto/16 :goto_0

    .line 731
    :sswitch_5
    const-string v26, "EVENT_SIM_ABSENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto/16 :goto_0

    .line 736
    :sswitch_6
    const-string v26, "EVENT_SIM_LOCKED"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 737
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 741
    :sswitch_7
    const-string v26, "EVENT_SIM_UNKNOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimUnknown(I)V

    .line 745
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const-string v27, "UNKNOWN"

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :sswitch_8
    const-string v26, "EVENT_SIM_IO_ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimIoError(I)V

    .line 753
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const-string v27, "CARD_IO_ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 758
    :sswitch_9
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 764
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    .line 766
    .local v17, "lResult":Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 767
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 768
    .local v15, "index":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage : <EVENT_SIM_ICCID_NOTI> SIM "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 769
    if-ltz v15, :cond_0

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    .line 770
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 771
    .local v16, "lIccId":Ljava/lang/String;
    const-string v26, "00000000000000000000"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 773
    const-string v26, "ro.csc.countryiso_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 774
    .restart local v10    # "countryISO":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 775
    .restart local v11    # "data":[B
    const-string v26, "CN"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    const-string v26, "OPS"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v11, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v26

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 777
    :cond_f
    const/16 v26, 0x0

    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .line 781
    .local v14, "iccid":Ljava/lang/String;
    :goto_5
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v26, :cond_13

    .line 782
    const-string v26, "handleMessage : lIccId = xxx, iccid = xxx"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 786
    :goto_6
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, v15

    if-eqz v26, :cond_14

    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, v15

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    const/4 v9, 0x1

    .line 787
    .local v9, "checkiccid":Z
    :goto_7
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v14, v26, v15

    .line 788
    if-nez v9, :cond_0

    .line 791
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SIM"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v15, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " hot plug in"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 792
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 793
    const/16 v26, 0x1

    sput-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    .line 794
    sput v15, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    .line 795
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v26

    if-eqz v26, :cond_10

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 796
    sget-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 797
    const-string v26, "mHotSwapRemoved set false for hot plug in"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 798
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    .line 799
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 806
    :cond_10
    :goto_8
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v6

    .line 807
    .local v6, "PreDefaultDataSubId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 810
    :cond_11
    const-string v27, "ril.defaultdataSIMchange"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v26

    move/from16 v0, v26

    if-eq v0, v6, :cond_16

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 779
    .end local v6    # "PreDefaultDataSubId":I
    .end local v9    # "checkiccid":Z
    .end local v14    # "iccid":Ljava/lang/String;
    :cond_12
    const/16 v26, 0x0

    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "iccid":Ljava/lang/String;
    goto/16 :goto_5

    .line 784
    :cond_13
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage : lIccId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", iccid = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 786
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 802
    .restart local v9    # "checkiccid":Z
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->setCalledUpdateUserPrefs(Z)V

    goto/16 :goto_8

    .line 810
    .restart local v6    # "PreDefaultDataSubId":I
    :cond_16
    const/16 v26, 0x0

    goto :goto_9

    .line 819
    .end local v6    # "PreDefaultDataSubId":I
    .end local v9    # "checkiccid":Z
    .end local v10    # "countryISO":Ljava/lang/String;
    .end local v11    # "data":[B
    .end local v14    # "iccid":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "lIccId":Ljava/lang/String;
    .end local v17    # "lResult":Landroid/os/AsyncResult;
    :sswitch_b
    const-string v26, "INU"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_17

    const-string v26, "INS"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 820
    :cond_17
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 821
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    const-string v26, "EVENT_SET_PREFERRED_NETWORK_TYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 822
    const/16 v26, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->removeMessages(I)V

    .line 823
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 824
    const/16 v26, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 825
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_SET_PREFERRED_NETWORK_TYPE failed for slot"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    :cond_18
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_19

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    if-nez v26, :cond_19

    .line 827
    const/16 v26, 0x0

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot0:I

    .line 828
    const/16 v26, 0x1

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    .line 829
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    add-int/lit8 v26, v26, 0x1

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    .line 830
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setPreferredNetwork["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 831
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget-object v26, v26, v27

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    const/16 v28, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 832
    :cond_19
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 833
    const/16 v26, 0x0

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    .line 834
    const/16 v26, 0x0

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    goto/16 :goto_0

    .line 837
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [I

    move-object/from16 v8, v26

    check-cast v8, [I

    .line 838
    .local v8, "arg":[I
    const/16 v26, 0x0

    aget v20, v8, v26

    .line 839
    .local v20, "phoneId":I
    const/16 v26, 0x1

    aget v19, v8, v26

    .line 840
    .local v19, "nextPhoneCount":I
    const/16 v26, 0x2

    aget v22, v8, v26

    .line 842
    .local v22, "retryCount":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setPreferredNetworkType(SUB"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") nwMode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v27, v27, v20

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", cmdSendCount:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", retryCount:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 844
    const/16 v26, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 845
    .local v21, "resp":Landroid/os/Message;
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v26, v26, v20

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v27, v27, v20

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 850
    .end local v8    # "arg":[I
    .end local v19    # "nextPhoneCount":I
    .end local v20    # "phoneId":I
    .end local v21    # "resp":Landroid/os/Message;
    .end local v22    # "retryCount":I
    :sswitch_c
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot0:I

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    if-nez v26, :cond_1b

    .line 851
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot0:I

    add-int/lit8 v26, v26, 0x1

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot0:I

    .line 852
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setPreferredNetworkType retry for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 853
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSetnetworkSlot:I

    aget-object v26, v26, v27

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFirstNetworkMode:I

    const/16 v28, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 854
    :cond_1b
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 855
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    add-int/lit8 v26, v26, 0x1

    sput v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mRetrySlot1:I

    .line 856
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setPreferredNetworkType retry for   "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlot:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 857
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    aget-object v26, v26, v27

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    const/16 v28, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-interface/range {v26 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 862
    :sswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkTypeDone(Landroid/os/Message;)Z

    move-result v12

    .line 863
    .local v12, "finish":Z
    if-eqz v12, :cond_0

    .line 864
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 868
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    goto/16 :goto_0

    .line 873
    .end local v12    # "finish":Z
    :sswitch_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_WAIT_HOTSWAP_INSERT_FINISHED mNeedUpdate: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 874
    const/16 v26, 0x0

    sput-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    .line 875
    const/16 v26, 0x1

    sput-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 877
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .line 882
    :sswitch_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleMessage : <EVENT_SURVEY_LOG_WAIT> SIM "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 883
    sget-boolean v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    if-eqz v26, :cond_0

    .line 884
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->insertLogforSimInfo(I)V

    .line 885
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->insertLogforDataSubId(I)V

    goto/16 :goto_0

    .line 891
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 892
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v15, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 893
    .local v15, "index":Ljava/lang/Integer;
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [I

    check-cast v26, [I

    const/16 v27, 0x0

    aget v24, v26, v27

    .line 894
    .local v24, "state":I
    const-string v26, "handleMessage : <EVENT_CARD_SWAPED>"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 895
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "state: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", cardSwapCount: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 896
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-eq v0, v1, :cond_1c

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    .line 897
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    .line 899
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    sget v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v26

    if-ge v13, v0, :cond_1e

    .line 900
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v27, 0x0

    aput-object v27, v26, v13

    .line 899
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 903
    .end local v13    # "i":I
    :cond_1d
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    .line 905
    :cond_1e
    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 906
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const-string v28, ""

    aput-object v28, v26, v27

    goto/16 :goto_0

    .line 908
    :cond_1f
    if-eqz v24, :cond_20

    const/16 v26, 0x2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 909
    :cond_20
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cardSwapCount:I

    goto/16 :goto_0

    .line 594
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0xa -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_9
        0xd -> :sswitch_b
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_a
        0x14 -> :sswitch_f
        0x15 -> :sswitch_c
        0x66 -> :sswitch_10
    .end sparse-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 572
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 574
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 575
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 576
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 579
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v6, p3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 590
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 588
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubIdForNV(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1384
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "FFFFFFFFFFFFFFFFFFFF"

    aput-object v1, v0, p1

    .line 1385
    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 1386
    const-string v0, "[updateSubIdForNV]+ Start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    const-string v0, "[updateSubIdForNV]+ updating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 1390
    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    .line 1392
    :cond_0
    return-void
.end method
