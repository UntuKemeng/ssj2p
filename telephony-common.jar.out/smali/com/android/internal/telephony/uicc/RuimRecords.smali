.class public final Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$1;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CST_ADN_BIT:I = 0x2

.field private static final CST_ADN_BYTE:I = 0x0

.field private static final CST_CHV1_BIT:I = 0x0

.field private static final CST_CHV1_BYTE:I = 0x0

.field private static final CST_FDN_BIT:I = 0x4

.field private static final CST_FDN_BYTE:I = 0x0

.field private static final CST_SMS_BIT:I = 0x6

.field private static final CST_SMS_BYTE:I = 0x0

.field private static final CST_SPN_BIT:I = 0x0

.field private static final CST_SPN_BYTE:I = 0x4

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_CST_DONE:I = 0x10

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_EPRL_DONE:I = 0x31

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_ICCID_RETRY:I = 0x321

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x2a

.field private static final EVENT_GET_IMSIM_RETRY:I = 0x320

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x8

.field private static final EVENT_GET_MASTERIMSI_DONE:I = 0x20

.field private static final EVENT_GET_MDN_DONE:I = 0x6

.field private static final EVENT_GET_MLPL_DONE:I = 0x32

.field private static final EVENT_GET_MMSSMODE_DONE:I = 0x34

.field private static final EVENT_GET_MSPL_DONE:I = 0x33

.field private static final EVENT_GET_ROAMING_DONE:I = 0x24

.field private static final EVENT_GET_RUIMID_DONE:I = 0x25

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x21

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x22

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x23

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PB_INIT_COMPLETE:I = 0x35

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SIM_ICCID_NOTI:I = 0x322

.field private static final EVENT_SIM_LOCKED:I = 0x29

.field private static final EVENT_SIM_PB_READY:I = 0x36

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final ICCID2_PATH:Ljava/lang/String; = "/data/misc/radio/cicd2"

.field private static final ICCID_PATH:Ljava/lang/String; = "/data/misc/radio/cicd"

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"

.field private static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final PROPERTY_CDMA_RUIMID:Ljava/lang/String; = "ril.cdma.phone.id"

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"

.field static final PROPERTY_UICC_VERSION:Ljava/lang/String; = "gsm.sim.version"

.field protected static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"


# instance fields
.field cMDN:Ljava/lang/String;

.field private countryISO:Ljava/lang/String;

.field isAvailableADN:Z

.field isAvailableCHV1:Z

.field isAvailableFDN:Z

.field public isAvailableMDN:Z

.field public isAvailableMSISDN:Z

.field isAvailableSMS:Z

.field isAvailableSPN:Z

.field mCsimSpnDisplayCondition:Z

.field private mCtcMLPL:Ljava/lang/String;

.field private mCtcMSPL:Ljava/lang/String;

.field private mCtcMprl:Ljava/lang/String;

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field mIccidRequest:Z

.field mImsiRequest:Z

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mNai:Ljava/lang/String;

.field private mOtaCommited:Z

.field private mPrlVersion:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSponImsi:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 82
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    .line 91
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 92
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 93
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableCHV1:Z

    .line 102
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMS:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableMDN:Z

    .line 108
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableMSISDN:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSPN:Z

    .line 220
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiRequest:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccidRequest:Z

    .line 228
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 230
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 233
    iput v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1f

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x35

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x36

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords X ctor this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    .line 257
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 258
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x29

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 272
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private SetSimOp(Ljava/lang/String;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 2136
    const-string v1, "ril.simoperator"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2137
    .local v0, "SimOp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimOp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2138
    const-string v1, "ETC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2139
    :cond_0
    const-string v1, "46003"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46005"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "45502"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2141
    :cond_1
    const-string v1, "3"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2142
    :cond_2
    const-string v0, "CTC"

    .line 2152
    :cond_3
    :goto_0
    const-string v1, "ril.simoperator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    :cond_4
    return-void

    .line 2144
    :cond_5
    const-string v1, "46000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46004"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "460007"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "460008"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2146
    :cond_6
    const-string v0, "CMCC"

    goto :goto_0

    .line 2147
    :cond_7
    const-string v1, "46001"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "46016"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2148
    :cond_8
    const-string v0, "CU"

    goto :goto_0

    .line 2150
    :cond_9
    const-string v0, "ETC"

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # [B

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEuimidDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # [B

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object p1
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .param p1, "digits"    # I

    .prologue
    .line 513
    add-int/lit8 p1, p1, 0x6f

    .line 514
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 515
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 516
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 517
    :cond_2
    return p1
.end method

.method private checkADNavailable([B)V
    .locals 3
    .param p1, "table"    # [B

    .prologue
    .line 2090
    const-string v1, "Enter  checkADNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2093
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->findTheEnabledServiceInCST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    .line 2094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableADN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2095
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    if-nez v1, :cond_0

    .line 2096
    const-string v1, "gsm.sim.adn1"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableADN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2108
    :goto_1
    return-void

    .line 2098
    :cond_0
    :try_start_1
    const-string v1, "gsm.sim.adn1"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RuimRecords"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableADN:Z

    .line 2103
    const-string v1, "gsm.sim.adn1"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkCHV1available([B)V
    .locals 3
    .param p1, "table"    # [B

    .prologue
    .line 2073
    const-string v1, "Enter  checkCHV1available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2077
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->findTheEnabledServiceInCST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableCHV1:Z

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2086
    :goto_0
    return-void

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RuimRecords"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableCHV1:Z

    goto :goto_0
.end method

.method private checkFDNavailable([B)V
    .locals 4
    .param p1, "table"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2112
    const-string v1, "Enter  checkFDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2116
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->findTheEnabledServiceInCST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    .line 2117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2125
    :goto_0
    return-void

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RuimRecords"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    goto :goto_0
.end method

.method private checkSMSavailable([B)V
    .locals 3
    .param p1, "table"    # [B

    .prologue
    .line 2039
    const-string v1, "Enter  checkSMSavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2043
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p1, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->findTheEnabledServiceInCST(BI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMS:Z

    .line 2044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMS is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2052
    :goto_0
    return-void

    .line 2045
    :catch_0
    move-exception v0

    .line 2046
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "RuimRecords"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2047
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableSMS:Z

    goto :goto_0
.end method

.method private fetchRuimRecords()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1700
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_BlockCSIMimsi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1702
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1704
    :cond_0
    const-string v0, "do not use GSM IMSI in cdma in dualcard"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1711
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f44

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1713
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1718
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1720
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1725
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f22

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1727
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1729
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f32

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1731
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f5a

    const/16 v2, 0x31

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1735
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f20

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1739
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1741
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f21

    const/16 v2, 0x33

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1743
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1745
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f22

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1747
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1750
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1752
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3a

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1756
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f41

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1760
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f44

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1764
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1766
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f22

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1768
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1770
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f28

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1772
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f74

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEuimidLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1777
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1782
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f5a

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1784
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1786
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f4d

    new-instance v2, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1788
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1790
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f40

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1795
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1797
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f41

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1798
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f42

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1801
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f43

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1804
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f50

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1807
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1810
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SIMIspService"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f32

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1813
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1816
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f31

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1817
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1819
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 1821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1823
    return-void

    .line 1706
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1707
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto/16 :goto_0
.end method

.method private findTheEnabledServiceInCST(BI)Z
    .locals 2
    .param p1, "b"    # B
    .param p2, "position"    # I

    .prologue
    .line 2056
    const-string v0, "findTheEnabledServiceInCST"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2060
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 2063
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2064
    const/4 v0, 0x1

    .line 2066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1572
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, "locales":[Ljava/lang/String;
    array-length v5, v3

    new-array v1, v5, [Ljava/lang/String;

    .line 1574
    .local v1, "localeLangs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 1575
    aget-object v2, v3, v0

    .line 1576
    .local v2, "localeStr":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1577
    .local v4, "separator":I
    if-gez v4, :cond_0

    .line 1578
    aput-object v2, v1, v0

    .line 1574
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1580
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    goto :goto_1

    .line 1584
    .end local v2    # "localeStr":Ljava/lang/String;
    .end local v4    # "separator":I
    :cond_1
    return-object v1
.end method

.method private getIccIdfromFile()V
    .locals 8

    .prologue
    .line 392
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 393
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    const-string v5, "getIccIdfromFile"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->logi(Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, "fos":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 398
    .local v1, "dos":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 406
    .local v2, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    const-string v5, "getIccIdfromFile, file not exist"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 437
    .end local v1    # "dos":Ljava/io/DataInputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v1    # "dos":Ljava/io/DataInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .local v4, "fos":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v0, v5, [B

    .line 415
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 416
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 423
    if-eqz v1, :cond_2

    .line 424
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 425
    const/4 v1, 0x0

    .line 427
    :cond_2
    if-eqz v4, :cond_6

    .line 428
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 429
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_0

    .line 418
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v5

    .line 423
    :goto_1
    if-eqz v1, :cond_3

    .line 424
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 425
    const/4 v1, 0x0

    .line 427
    :cond_3
    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 429
    const/4 v3, 0x0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v5

    .line 423
    :goto_2
    if-eqz v1, :cond_4

    .line 424
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 425
    const/4 v1, 0x0

    .line 427
    :cond_4
    if-eqz v3, :cond_5

    .line 428
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 429
    const/4 v3, 0x0

    .line 432
    :cond_5
    :goto_3
    throw v5

    .line 431
    :catch_1
    move-exception v6

    goto :goto_3

    .line 422
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_2

    .line 431
    :catch_2
    move-exception v5

    goto :goto_0

    .line 418
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_1

    .line 431
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_0

    :cond_6
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 1892
    if-nez p1, :cond_1

    .line 1893
    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1903
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 1925
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1905
    :pswitch_0
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1907
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1910
    :pswitch_1
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1912
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1914
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1917
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onIccRefreshInit()V

    goto :goto_0

    .line 1921
    :pswitch_2
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x3

    .line 831
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 832
    .local v0, "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 835
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 836
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 837
    .local v1, "prlId":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 839
    .end local v1    # "prlId":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method private onGetCSimEuimidDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2023
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 2025
    .local v1, "data":[B
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2026
    .local v0, "bld":Ljava/lang/StringBuilder;
    const/4 v2, 0x6

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2027
    aget-byte v3, v1, v2

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2030
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEuimid:Ljava/lang/String;

    .line 2032
    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM EUIMID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEuimid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2033
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPbInitComplete(Landroid/os/Handler;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSimPbReady(Landroid/os/Handler;)V

    .line 297
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 298
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 314
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 315
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mOtaCommited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEFpl[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEFli[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMyMobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2009
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 319
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayCondition()I
    .locals 1

    .prologue
    .line 1830
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1841
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI_M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccIdfromFile()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 387
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getNAI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mNai:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 532
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_BlockCSIMimsi"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "operatorNumericFromUSIM":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    .end local v2    # "operatorNumericFromUSIM":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "operatorNumericFromUSIM":Ljava/lang/String;
    :cond_0
    move-object v2, v3

    .line 538
    goto :goto_0

    .line 542
    .end local v2    # "operatorNumericFromUSIM":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v2, v3

    .line 543
    goto :goto_0

    .line 546
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-eqz v4, :cond_3

    .line 549
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 555
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 556
    .local v1, "mcc":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 557
    .end local v1    # "mcc":I
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corrupt IMSI! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    move-object v2, v3

    .line 559
    goto :goto_0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1887
    const-string v0, "RuimRecords:getVoiceMessageCount - NOP for CDMA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1888
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 972
    const/4 v12, 0x0

    .line 974
    .local v12, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 975
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received message "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "] while being destroyed. Ignoring."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 1552
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    :cond_2
    :goto_1
    if-eqz v12, :cond_0

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 982
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1554
    :catch_0
    move-exception v10

    .line 1556
    .local v10, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v26, "RuimRecords"

    const-string v27, "Exception parsing RUIM record"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1559
    if-eqz v12, :cond_0

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 986
    .end local v10    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v26, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1559
    :catchall_0
    move-exception v26

    if-eqz v12, :cond_3

    .line 1560
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    :cond_3
    throw v26

    .line 991
    :sswitch_2
    const/4 v12, 0x1

    .line 993
    :try_start_4
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 994
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 995
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception querying IMSI, Exception:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 999
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 1000
    const-string v26, "CTC"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1002
    :cond_5
    const-string v26, "do not use GSM IMSI in cdma."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1007
    :cond_6
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0xf

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 1012
    :cond_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "invalid IMSI "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1013
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 1028
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v19

    .line 1029
    .local v19, "operatorNumeric":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NO update mccmnc="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1035
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "operatorNumeric":Ljava/lang/String;
    :sswitch_3
    const-string v26, "Event EVENT_GET_MDN_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1036
    const/4 v12, 0x1

    .line 1038
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1039
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1041
    .local v7, "data":[B
    const-string v26, ""

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 1043
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1044
    const-string v26, "Invalid or missing EF[RUIM_MDN]"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1045
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableMDN:Z

    goto/16 :goto_1

    .line 1049
    :cond_9
    const/16 v26, 0x0

    aget-byte v26, v7, v26

    and-int/lit8 v15, v26, 0xf

    .line 1050
    .local v15, "mdnlength":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mdn_length: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1052
    if-eqz v15, :cond_a

    .line 1054
    const/16 v26, 0x0

    :try_start_5
    move/from16 v0, v26

    invoke-static {v7, v0, v15}, Lcom/android/internal/telephony/uicc/IccUtils;->SetupMDNbcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1061
    :cond_a
    :goto_2
    const/16 v26, 0x1

    :try_start_6
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableMDN:Z

    .line 1062
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MDN: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1063
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->cMDN:Ljava/lang/String;

    .line 1064
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cMDN: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->cMDN:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1065
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdnReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 1055
    :catch_1
    move-exception v8

    .line 1056
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v26, "RuimRecords"

    const-string v27, "MDN: Exception "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableMDN:Z

    goto :goto_2

    .line 1071
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "mdnlength":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x6f22

    const/16 v28, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 1076
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x2fe2

    const/16 v28, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 1082
    :sswitch_6
    const-string v26, "Event EVENT_GET_IMSI_M_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1083
    const/4 v12, 0x1

    .line 1085
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1086
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1088
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 1089
    const-string v26, "Invalid or missing EF[IMSI_M]"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1090
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 1091
    const-string v26, "CTC"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1093
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiRequest:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1094
    const/16 v26, 0x320

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1095
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiRequest:Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1103
    :cond_e
    :try_start_7
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->extractIMSI([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1109
    :goto_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    .line 1110
    .local v18, "operator":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "RuimRecords: onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1111
    if-eqz v18, :cond_10

    .line 1112
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_12

    const-string v26, "CTC"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 1114
    const-string v26, "gsm.sim.selectnetwork"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1115
    .local v24, "simselswitch":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "simselswitch = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1116
    const-string v26, "GSM"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v26

    if-nez v26, :cond_f

    .line 1117
    const-string v26, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .end local v24    # "simselswitch":Ljava/lang/String;
    :cond_f
    :goto_4
    const-string v26, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->SetSimOp(Ljava/lang/String;)V

    .line 1140
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v26, :cond_11

    .line 1142
    :try_start_9
    const-string v26, "gsm.sim.operator.iso-country"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x3

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1148
    :cond_11
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 1104
    .end local v18    # "operator":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1105
    .restart local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v26, "RuimRecords"

    const-string v27, "mImsi: Exception "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1119
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18    # "operator":Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1120
    const-string v26, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v27

    const-string v28, "GSM"

    invoke-static/range {v26 .. v28}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1121
    .local v25, "sixmode":Ljava/lang/String;
    const-string v26, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v27

    const-string v28, "0"

    invoke-static/range {v26 .. v28}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1122
    .local v6, "bCTC":Ljava/lang/String;
    const-string v26, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1124
    const/4 v14, 0x0

    .line 1125
    .local v14, "mMccMnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1128
    .end local v14    # "mMccMnc":Ljava/lang/String;
    :cond_13
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "sixmode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1129
    const-string v26, "CDMA"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1130
    const-string v26, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1133
    .end local v6    # "bCTC":Ljava/lang/String;
    .end local v25    # "sixmode":Ljava/lang/String;
    :cond_14
    const-string v26, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1144
    :catch_3
    move-exception v8

    .line 1145
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Corrupt IMSI! "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1152
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v18    # "operator":Ljava/lang/String;
    :sswitch_7
    const-string v26, "EVENT_SIM_LOCKED"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x2fe2

    const/16 v28, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1157
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1158
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1160
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1165
    const-string v26, "ro.csc.countryiso_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->countryISO:Ljava/lang/String;

    .line 1166
    const-string v26, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->countryISO:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1167
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 1179
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1181
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v26, :cond_17

    .line 1182
    const-string v26, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: ******"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1171
    :cond_15
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v26

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1172
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    goto :goto_6

    .line 1174
    :cond_16
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    goto :goto_6

    .line 1184
    :cond_17
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1189
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_9
    const/4 v4, 0x0

    .line 1190
    .local v4, "CST_SERVICE_BYTES":Ljava/lang/String;
    const/4 v12, 0x1

    .line 1192
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1193
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1195
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 1196
    const-string v26, "RuimRecords"

    const-string v27, "RuimRecords EVENT_GET_CST_DONE failed"

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1200
    :cond_18
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1201
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CST: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 1203
    const-string v26, "CTC"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_19

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1205
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->checkCHV1available([B)V

    .line 1206
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->checkADNavailable([B)V

    .line 1207
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->checkFDNavailable([B)V

    .line 1208
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->checkSMSavailable([B)V

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->isAvailableFDN:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 1211
    const-string v26, "gsm.sim.fdn_support"

    const-string v27, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1213
    :cond_1a
    const-string v26, "gsm.sim.fdn_support"

    const-string v27, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1220
    .end local v4    # "CST_SERVICE_BYTES":Ljava/lang/String;
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_a
    const-string v26, "EVENT_GET_EPRL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1221
    const/4 v12, 0x1

    .line 1222
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1223
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1224
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 1225
    const-string v26, "fail EVENT_GET_EPRL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1228
    :cond_1b
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_1c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CSIM_EPRL="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1231
    :cond_1c
    array-length v0, v7

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1d

    .line 1232
    const/16 v26, 0x2

    aget-byte v26, v7, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    const/16 v27, 0x3

    aget-byte v27, v7, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v20, v26, v27

    .line 1233
    .local v20, "prlId":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMprl:Ljava/lang/String;

    .line 1234
    const-string v26, "ril.CTCMPRL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMprl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    .end local v20    # "prlId":I
    :cond_1d
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CTCTEST1="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMprl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1240
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_b
    const-string v26, "EVENT_GET_MLPL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1241
    const/4 v12, 0x1

    .line 1242
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1243
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1244
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e

    .line 1245
    const-string v26, "fail EVENT_GET_MLPL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1248
    :cond_1e
    array-length v0, v7

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1f

    .line 1249
    const/16 v26, 0x3

    aget-byte v26, v7, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    const/16 v27, 0x4

    aget-byte v27, v7, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v16, v26, v27

    .line 1250
    .local v16, "mlplId":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMLPL:Ljava/lang/String;

    .line 1251
    const-string v26, "ril.CTCMLPL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMLPL:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    .end local v16    # "mlplId":I
    :cond_1f
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CTCTEST2="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMLPL:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1257
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_c
    const-string v26, "EVENT_GET_MSPL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1258
    const/4 v12, 0x1

    .line 1259
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1260
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1261
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    .line 1262
    const-string v26, "fail EVENT_GET_MSPL_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1265
    :cond_20
    array-length v0, v7

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_21

    .line 1266
    const/16 v26, 0x3

    aget-byte v26, v7, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    shl-int/lit8 v26, v26, 0x8

    const/16 v27, 0x4

    aget-byte v27, v7, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    or-int v17, v26, v27

    .line 1267
    .local v17, "msplId":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMSPL:Ljava/lang/String;

    .line 1268
    const-string v26, "ril.CTCMSPL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMSPL:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .end local v17    # "msplId":I
    :cond_21
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CTCTEST3="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCtcMSPL:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1274
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_d
    const-string v26, "EVENT_GET_MMSSMODE_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1275
    const/4 v12, 0x1

    .line 1276
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1277
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1278
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1279
    const-string v26, "fail EVENT_GET_MMSSMODE_DONE: "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1286
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1287
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Ljava/lang/String;

    move-object/from16 v0, v26

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1288
    .local v13, "localTemp":[Ljava/lang/String;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1292
    const/16 v26, 0x0

    aget-object v26, v13, v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 1293
    const/16 v26, 0x3

    aget-object v26, v13, v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 1294
    const/16 v26, 0x4

    aget-object v26, v13, v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 1296
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_22

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "MDN: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " MIN: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1298
    :cond_22
    const-string v26, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_23

    const-string v26, "ACG"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1299
    :cond_23
    new-instance v11, Landroid/content/Intent;

    const-string v26, "android.intent.action.MIN_VALUE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v11, "intent":Landroid/content/Intent;
    const-string v26, "mMinValue"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1307
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "localTemp":[Ljava/lang/String;
    :sswitch_f
    const/4 v12, 0x1

    .line 1309
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1310
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1312
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 1313
    const-string v26, "Failure happen when read EF[ICCID]"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1314
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 1315
    const-string v26, "CTC"

    sget-object v27, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1317
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccidRequest:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1318
    const/16 v26, 0x321

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1319
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccidRequest:Z

    goto/16 :goto_1

    .line 1327
    :cond_25
    const-string v26, "ro.csc.countryiso_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->countryISO:Ljava/lang/String;

    .line 1328
    const-string v26, "CN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->countryISO:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_26

    .line 1329
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 1341
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1344
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v26, :cond_28

    .line 1345
    const-string v26, "EVENT_GET_ICCID_DONE mIccId: ******"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1333
    :cond_26
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v26

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    .line 1334
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    goto :goto_7

    .line 1336
    :cond_27
    const/16 v26, 0x0

    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    goto :goto_7

    .line 1347
    :cond_28
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_GET_ICCID_DONE mIccId: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1352
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1353
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1354
    const-string v26, "RuimRecords"

    const-string v27, "RuimRecords update failed"

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1362
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Event not supported: "

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

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->logw(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1368
    :sswitch_12
    const/4 v12, 0x1

    .line 1369
    const-string v26, "Event EVENT_GET_SST_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1370
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1371
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1373
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_29

    .line 1374
    const-string v26, "RuimRecords"

    const-string v27, "RuimRecords EVENT_GET_SST_DONE failed"

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1377
    :cond_29
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_2

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EF_CST="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1382
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    :sswitch_13
    const/4 v12, 0x0

    .line 1383
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1384
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1385
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1391
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :sswitch_14
    const/4 v12, 0x1

    .line 1393
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1394
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1396
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    .line 1397
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[masterImsi]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1402
    :cond_2a
    :try_start_b
    sget-boolean v26, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v26, :cond_2

    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[masterImsi]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 1403
    :catch_4
    move-exception v8

    .line 1404
    .local v8, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_c
    const-string v26, "RuimRecords"

    const-string v27, "MASTER_IMSI was not exist in this card"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1409
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v8    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :sswitch_15
    const/4 v12, 0x1

    .line 1411
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1412
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1414
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 1415
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[sponImsi1]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1419
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/String;

    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    aput-object v28, v26, v27
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1421
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    aget-byte v29, v7, v29

    shr-int/lit8 v29, v29, 0x4

    and-int/lit8 v29, v29, 0xf

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    const/16 v30, 0x1

    aget-byte v30, v7, v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x22b

    array-length v0, v7

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1427
    :goto_8
    :try_start_e
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi1]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1422
    :catch_5
    move-exception v9

    .line 1423
    .local v9, "ex":Ljava/lang/Exception;
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi1] Ex -"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, ""

    aput-object v28, v26, v27

    goto :goto_8

    .line 1431
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v9    # "ex":Ljava/lang/Exception;
    :sswitch_16
    const/4 v12, 0x1

    .line 1433
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1434
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1436
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2c

    .line 1437
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[sponImsi2]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1441
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljava/lang/String;

    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    aput-object v28, v26, v27
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1443
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    aget-byte v29, v7, v29

    shr-int/lit8 v29, v29, 0x4

    and-int/lit8 v29, v29, 0xf

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    const/16 v30, 0x1

    aget-byte v30, v7, v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x22b

    array-length v0, v7

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1450
    :goto_9
    :try_start_10
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi2]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1444
    :catch_6
    move-exception v9

    .line 1445
    .restart local v9    # "ex":Ljava/lang/Exception;
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi2] Ex -"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const-string v28, ""

    aput-object v28, v26, v27

    goto :goto_9

    .line 1454
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v9    # "ex":Ljava/lang/Exception;
    :sswitch_17
    const/4 v12, 0x1

    .line 1456
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1457
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1459
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2d

    .line 1460
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[sponImsi3]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1464
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljava/lang/String;

    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    aput-object v28, v26, v27
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1466
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x2

    aget-byte v29, v7, v29

    shr-int/lit8 v29, v29, 0x4

    and-int/lit8 v29, v29, 0xf

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    const/16 v30, 0x1

    aget-byte v30, v7, v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x22b

    array-length v0, v7

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1472
    :goto_a
    :try_start_12
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi3]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1467
    :catch_7
    move-exception v9

    .line 1468
    .restart local v9    # "ex":Ljava/lang/Exception;
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[sponImsi3] Ex -"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSponImsi:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    const-string v28, ""

    aput-object v28, v26, v27

    goto :goto_a

    .line 1477
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v9    # "ex":Ljava/lang/Exception;
    :sswitch_18
    const/4 v12, 0x1

    .line 1479
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1480
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1482
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2e

    .line 1483
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[roaming]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1487
    :cond_2e
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v21

    .line 1488
    .local v21, "roaming":Ljava/lang/String;
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[roaming]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string v26, "gsm.sim.roaming"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1494
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v21    # "roaming":Ljava/lang/String;
    :sswitch_19
    const-string v23, ""

    .line 1495
    .local v23, "ruimidRaw":Ljava/lang/String;
    const-string v22, ""

    .line 1496
    .local v22, "ruimidConv":Ljava/lang/String;
    const/4 v12, 0x1

    .line 1498
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1499
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, v26

    check-cast v0, [B

    move-object v7, v0

    .line 1501
    .restart local v7    # "data":[B
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2f

    .line 1502
    const-string v26, "RuimRecords"

    const-string v27, "Invalid or missing EF[RUIMID]"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1507
    :cond_2f
    :try_start_13
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v23

    .line 1513
    :goto_b
    :try_start_14
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[ruimid]: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 1515
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[ruimid]converterd: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x8

    const/16 v29, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x6

    const/16 v29, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x4

    const/16 v29, 0x6

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    const/16 v29, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0x8

    const/16 v28, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x6

    const/16 v28, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x4

    const/16 v28, 0x6

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    const/16 v28, 0x4

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1521
    const-string v26, "ril.cdma.phone.id"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1508
    :catch_8
    move-exception v9

    .line 1509
    .restart local v9    # "ex":Ljava/lang/Exception;
    const-string v26, "RuimRecords"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[ruimid] Ex -"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const-string v23, ""

    goto/16 :goto_b

    .line 1526
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "data":[B
    .end local v9    # "ex":Ljava/lang/Exception;
    .end local v22    # "ruimidConv":Ljava/lang/String;
    .end local v23    # "ruimidRaw":Ljava/lang/String;
    :sswitch_1a
    const-string v26, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1527
    const-string v26, "EVENT_PB_INIT_COMPLETE, onSimPhonebookRefresh()"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onSimPhonebookRefresh()V

    goto/16 :goto_1

    .line 1534
    :sswitch_1b
    const-string v26, "3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1535
    const-string v26, "EVENT_SIM_PB_READY, mParentApp.queryFdn()"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_1

    .line 1541
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 1542
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    if-nez v26, :cond_30

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_31

    .line 1543
    :cond_30
    const-string v26, "EVENT_SIM_ICCID_NOTI: Invalid or missing ICCID"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1546
    :cond_31
    const-string v26, "EVENT_SIM_ICCID_NOTI"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1547
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_f
        0x6 -> :sswitch_3
        0x8 -> :sswitch_6
        0xa -> :sswitch_e
        0xe -> :sswitch_10
        0x10 -> :sswitch_9
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_11
        0x15 -> :sswitch_11
        0x16 -> :sswitch_11
        0x1f -> :sswitch_13
        0x20 -> :sswitch_14
        0x21 -> :sswitch_15
        0x22 -> :sswitch_16
        0x23 -> :sswitch_17
        0x24 -> :sswitch_18
        0x25 -> :sswitch_19
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x31 -> :sswitch_a
        0x32 -> :sswitch_b
        0x33 -> :sswitch_c
        0x34 -> :sswitch_d
        0x35 -> :sswitch_1a
        0x36 -> :sswitch_1b
        0x320 -> :sswitch_4
        0x321 -> :sswitch_5
        0x322 -> :sswitch_1c
    .end sparse-switch
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1852
    const-string v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return v0

    .line 1856
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_2

    move v0, v1

    .line 1857
    goto :goto_0

    .line 1860
    :cond_2
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1862
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    .line 1863
    goto :goto_0

    .line 1869
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 1871
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1952
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1954
    const-string v0, "RuimRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :goto_0
    return-void

    .line 1956
    :cond_0
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1962
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1964
    const-string v0, "RuimRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :goto_0
    return-void

    .line 1966
    :cond_0
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1974
    const-string v0, "RuimRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :goto_0
    return-void

    .line 1976
    :cond_0
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1981
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1983
    const-string v0, "RuimRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :goto_0
    return-void

    .line 1985
    :cond_0
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1604
    const-string v3, "record load complete"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1605
    const-string v3, "RuimRecords"

    const-string v4, "!@Boot_SVC : RUIM onAllRecordsLoaded"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_BlockCSIMimsi"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1667
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1668
    .local v1, "resource":Landroid/content/res/Resources;
    const v3, 0x11200ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSimLanguage([B[B)V

    .line 1672
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1676
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1677
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v0

    .line 1678
    .local v0, "phoneId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 1679
    .local v2, "subIds":[I
    if-eqz v2, :cond_3

    .line 1680
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;I)I

    .line 1685
    .end local v0    # "phoneId":I
    .end local v2    # "subIds":[I
    :cond_2
    :goto_0
    return-void

    .line 1682
    .restart local v0    # "phoneId":I
    .restart local v2    # "subIds":[I
    :cond_3
    const-string v3, "Cannot call setDisplayNumber: invalid subId"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1692
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 1591
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1594
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1595
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1596
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 1597
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1598
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 509
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting0 mMncLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 325
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 328
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 329
    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    const-string v0, "gsm.sim.cdmaoperator.numeric"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 353
    return-void

    .line 331
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMsisdn:Ljava/lang/String;

    .line 332
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 333
    const-string v0, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCardDataInit()V
    .locals 3

    .prologue
    .line 440
    const-string v1, "setCardDataInit"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->logi(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "opernum":Ljava/lang/String;
    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .end local v0    # "opernum":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 451
    :cond_1
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 490
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    const-string v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 492
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 493
    const-string v0, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 1880
    const-string v0, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1881
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "xxx"

    .line 146
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m_ota_commited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMyMobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEFpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEFli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
