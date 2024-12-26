.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I = 0x2

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I = 0x1

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I = 0x0

.field public static final LTE_IS_EB_SUPPORTED_NOT_SUPPORT:I = 0x2

.field public static final LTE_IS_EB_SUPPORTED_SUPPORT:I = 0x1

.field public static final LTE_IS_EB_SUPPORTED_UKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRED:I = 0x1

.field public static final LTE_IS_EMERGENCY_ACCESS_BARRING_UNKNOWN:I = 0x0

.field public static final LTE_IS_EMERGENCY_ACCESS_NOT_BARRED:I = 0x2

.field public static final OPTIONAL_RADIO_TECH_DC:I = 0x1

.field public static final OPTIONAL_RADIO_TECH_NONE:I = 0x0

.field public static final OPTIONAL_RADIO_TECH_TDLTE:I = 0x2

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final REGISTRATION_TYPE_CELLULAR:I = 0x1

.field public static final REGISTRATION_TYPE_NOCELLULAR:I = 0x2

.field public static final REGISTRATION_TYPE_UNKNOWN:I = 0x0

.field public static final RIL_FEMTOCELL_INDICATOR_LTE:I = 0x1

.field public static final RIL_FEMTOCELL_INDICATOR_NONE:I = 0x0

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_DC:I = 0x1e

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_TDLTE:I = 0x1f

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final SNAPSHOT_STATUS_ACTIVATED:I = 0x1

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I = 0x0

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mFemtocellIndicator:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mLteImsVoiceAvail:I

.field private mLteIsEbSupported:I

.field private mLteIsEmergencyAccessBarred:I

.field private mMobileDataRegState:I

.field private mMobileVoiceRegState:I

.field private mNetworkId:I

.field private mOptionalRadioTech:I

.field private mRilDataRadioTechnology:I

.field private mRilMobileDataRadioTechnology:I

.field private mRilMobileVoiceRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mRoamingReduction:Z

.field private mSnapshotStatus:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRegType:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 247
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 296
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 303
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 307
    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 308
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 309
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 313
    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 317
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 321
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 326
    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 330
    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 247
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 296
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 303
    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 307
    iput v2, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 308
    iput v2, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 309
    iput v2, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 313
    iput v2, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 317
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 321
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 326
    iput v2, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 330
    iput v2, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    .line 494
    return-void

    :cond_0
    move v0, v2

    .line 456
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 459
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 466
    goto :goto_2

    :cond_3
    move v0, v2

    .line 467
    goto :goto_3

    :cond_4
    move v1, v2

    .line 492
    goto :goto_4
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 247
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 296
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 303
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 307
    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 308
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 309
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 313
    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 317
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 321
    iput v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 326
    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 330
    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 388
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 389
    return-void
.end method

.method public static bitmaskHasTech(II)Z
    .locals 3
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1560
    if-nez p0, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return v0

    .line 1562
    :cond_1
    if-lt p1, v0, :cond_2

    .line 1563
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1565
    goto :goto_0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1264
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getBitmaskForTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    .prologue
    const/4 v1, 0x1

    .line 1570
    if-lt p0, v1, :cond_0

    .line 1571
    add-int/lit8 v0, p0, -0x1

    shl-int v0, v1, v0

    .line 1573
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .locals 10
    .param p0, "bearerList"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1578
    const-string v9, "\\|"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1579
    .local v4, "bearers":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1580
    .local v2, "bearerBitmask":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 1581
    .local v1, "bearer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1583
    .local v3, "bearerInt":I
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1588
    if-nez v3, :cond_1

    move v2, v8

    .line 1594
    .end local v1    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerBitmask":I
    .end local v3    # "bearerInt":I
    :cond_0
    :goto_1
    return v2

    .line 1584
    .restart local v1    # "bearer":Ljava/lang/String;
    .restart local v2    # "bearerBitmask":I
    .restart local v3    # "bearerInt":I
    :catch_0
    move-exception v7

    .local v7, "nfe":Ljava/lang/NumberFormatException;
    move v2, v8

    .line 1585
    goto :goto_1

    .line 1592
    .end local v7    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {v3}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v9

    or-int/2addr v2, v9

    .line 1580
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roamingType"    # I

    .prologue
    .line 341
    packed-switch p0, :pswitch_data_0

    .line 355
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    const-string v0, "home"

    goto :goto_0

    .line 346
    :pswitch_1
    const-string/jumbo v0, "roaming"

    goto :goto_0

    .line 349
    :pswitch_2
    const-string v0, "Domestic Roaming"

    goto :goto_0

    .line 352
    :pswitch_3
    const-string v0, "International Roaming"

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasCdma(I)Z
    .locals 2
    .param p0, "radioTechnologyBitmask"    # I

    .prologue
    .line 1547
    const/16 v0, 0xf

    .line 1555
    .local v0, "cdmaBitmask":I
    and-int v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCdma(I)Z
    .locals 4
    .param p0, "radioTechnology"    # I

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "ret":Z
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-ne p0, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 1533
    :goto_0
    const/16 v1, 0xe

    if-ne p0, v1, :cond_3

    .line 1534
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "GLB"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1538
    :cond_2
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ril.iscdmalte"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1542
    :cond_3
    return v0

    .line 1525
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsm(I)Z
    .locals 4
    .param p0, "radioTechnology"    # I

    .prologue
    const/16 v3, 0xe

    const/4 v1, 0x1

    .line 1497
    const/4 v0, 0x0

    .line 1498
    .local v0, "ret":Z
    if-eq p0, v1, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-eq p0, v2, :cond_0

    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    const/16 v2, 0xb

    if-eq p0, v2, :cond_0

    if-eq p0, v3, :cond_0

    const/16 v2, 0xf

    if-eq p0, v2, :cond_0

    const/16 v2, 0x10

    if-eq p0, v2, :cond_0

    const/16 v2, 0x11

    if-eq p0, v2, :cond_0

    const/16 v2, 0x12

    if-ne p0, v2, :cond_4

    :cond_0
    move v0, v1

    .line 1510
    :goto_0
    if-ne p0, v3, :cond_3

    .line 1511
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_ExceptionSid"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "GLB"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1515
    :cond_2
    const-string v1, "false"

    const-string/jumbo v2, "ril.iscdmalte"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1519
    :cond_3
    return v0

    .line 1498
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameGroupRat(II)Z
    .locals 8
    .param p0, "oldRadioTech"    # I
    .param p1, "newRadioTech"    # I

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1759
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old RAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new RAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    packed-switch p0, :pswitch_data_0

    .line 1799
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1763
    :pswitch_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1766
    :pswitch_2
    if-ne p1, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1769
    :pswitch_3
    const/16 v2, 0xb

    if-eq p1, v2, :cond_3

    if-eq p1, v6, :cond_3

    if-eq p1, v7, :cond_3

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    :cond_3
    move v1, v0

    goto :goto_0

    .line 1775
    :pswitch_4
    if-eq p1, v5, :cond_4

    if-eq p1, v6, :cond_4

    if-eq p1, v7, :cond_4

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    :cond_4
    move v1, v0

    goto :goto_0

    .line 1781
    :pswitch_5
    const/16 v2, 0xb

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v7, :cond_5

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    :cond_5
    move v1, v0

    goto :goto_0

    .line 1787
    :pswitch_6
    const/16 v2, 0xb

    if-eq p1, v2, :cond_6

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_6

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    :cond_6
    move v1, v0

    goto :goto_0

    .line 1793
    :pswitch_7
    const/16 v2, 0xb

    if-eq p1, v2, :cond_7

    if-eq p1, v6, :cond_7

    if-eq p1, v7, :cond_7

    if-ne p1, v5, :cond_0

    :cond_7
    move v1, v0

    goto :goto_0

    .line 1761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 2
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1603
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v1, :cond_0

    .line 1613
    .end local p0    # "baseSs":Landroid/telephony/ServiceState;
    :goto_0
    return-object p0

    .line 1607
    .restart local p0    # "baseSs":Landroid/telephony/ServiceState;
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1610
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1611
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    move-object p0, v0

    .line 1613
    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 371
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 372
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 373
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 2
    .param p1, "rt"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1410
    packed-switch p1, :pswitch_data_0

    .line 1457
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1414
    goto :goto_0

    .line 1416
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1418
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1420
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 1422
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 1425
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1427
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1429
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 1431
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 1433
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 1435
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 1438
    :pswitch_c
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1439
    const/16 v0, 0x1f

    goto :goto_0

    .line 1442
    :cond_0
    const/16 v0, 0xd

    goto :goto_0

    .line 1445
    :pswitch_d
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOptionalRadioTech()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1446
    const/16 v0, 0x1e

    goto :goto_0

    .line 1449
    :cond_1
    const/16 v0, 0xf

    goto :goto_0

    .line 1451
    :pswitch_e
    const/16 v0, 0x10

    goto :goto_0

    .line 1453
    :pswitch_f
    const/16 v0, 0x11

    goto :goto_0

    .line 1455
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    .prologue
    .line 912
    packed-switch p0, :pswitch_data_0

    .line 979
    :pswitch_0
    const-string v0, "Unexpected"

    .line 980
    .local v0, "rtString":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_0
    return-object v0

    .line 914
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Unknown"

    .line 915
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 917
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "GPRS"

    .line 918
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 920
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "EDGE"

    .line 921
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 923
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "UMTS"

    .line 924
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 926
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "CDMA-IS95A"

    .line 927
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 929
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "CDMA-IS95B"

    .line 930
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 932
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string v0, "1xRTT"

    .line 933
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 935
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string v0, "EvDo-rev.0"

    .line 936
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 938
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "EvDo-rev.A"

    .line 939
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 941
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HSDPA"

    .line 942
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 944
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string v0, "HSUPA"

    .line 945
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 947
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "HSPA"

    .line 948
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 950
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string v0, "EvDo-rev.B"

    .line 951
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 953
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string v0, "eHRPD"

    .line 954
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 956
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string v0, "LTE"

    .line 957
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 959
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string v0, "HSPAP"

    .line 960
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 962
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string v0, "GSM"

    .line 963
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 965
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string v0, "IWLAN"

    .line 966
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 968
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_13
    const-string v0, "TD-SCDMA"

    .line 969
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 972
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_14
    const-string v0, "DC"

    .line 973
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 975
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_15
    const-string v0, "TDLTE"

    .line 976
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 912
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1274
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1275
    const-string v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1276
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1277
    const-string v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1278
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1279
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1280
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1281
    const-string v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1282
    const-string v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1283
    const-string v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1284
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1285
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1286
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1287
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1288
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1289
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1290
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1291
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1292
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1293
    const-string v0, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1295
    const-string/jumbo v0, "voiceRegType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1298
    const-string v0, "lteimsvoiceavail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 1299
    const-string v0, "lteisebsupported"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 1300
    const-string v0, "lteisemergencyaccessbarred"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 1303
    const-string/jumbo v0, "snapshotstatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1306
    const-string/jumbo v0, "mobileVoiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 1307
    const-string/jumbo v0, "mobileVoiceRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    .line 1310
    const-string/jumbo v0, "mobileDataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 1311
    const-string/jumbo v0, "mobileDataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1314
    const-string v0, "femtocellIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1316
    return-void
.end method

.method private setNullState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1070
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1071
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1072
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1073
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1074
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1075
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1076
    iput-object v2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1077
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1078
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1079
    iput-object v2, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1080
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1081
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1082
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1083
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1084
    iput v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1085
    iput v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1086
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1087
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1088
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1089
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1090
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1091
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1093
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1096
    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 1097
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 1098
    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 1101
    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1104
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 1105
    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    .line 1108
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 1109
    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1112
    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1115
    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 1118
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    .line 1121
    return-void
.end method


# virtual methods
.method public canCellularVoiceService()Z
    .locals 2

    .prologue
    .line 1629
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 392
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 393
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 394
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 395
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 396
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 399
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 400
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 401
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 402
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 403
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 404
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 405
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 406
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 407
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 408
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 409
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 410
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 411
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 412
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 413
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 415
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 418
    iget v0, p1, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 419
    iget v0, p1, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 420
    iget v0, p1, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    iput v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 423
    iget v0, p1, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 426
    iget v0, p1, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 427
    iget v0, p1, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    .line 430
    iget v0, p1, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 431
    iget v0, p1, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 434
    iget v0, p1, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 436
    iget v0, p1, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    iput v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 438
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    .line 440
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 847
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_1

    .line 856
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return v3

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 856
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_1
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1325
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1326
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1327
    const-string/jumbo v0, "voiceRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    const-string v0, "dataRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1336
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    const-string v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1339
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1344
    const-string v0, "isDataRoamingFromRegistration"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1346
    const-string/jumbo v0, "voiceRegType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1349
    const-string v0, "lteimsvoiceavail"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1350
    const-string v0, "lteisebsupported"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1351
    const-string v0, "lteisemergencyaccessbarred"

    iget v1, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    const-string/jumbo v0, "snapshotstatus"

    iget v1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    const-string/jumbo v0, "mobileVoiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1358
    const-string/jumbo v0, "mobileVoiceRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1361
    const-string/jumbo v0, "mobileDataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1362
    const-string/jumbo v0, "mobileDataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1365
    const-string v0, "femtocellIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1367
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1472
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getDataRoaming()Z
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataRoamingFromRegistration()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return v0
.end method

.method public getFemtocellIndicator()I
    .locals 1

    .prologue
    .line 1724
    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getLteImsVoiceAvail()I
    .locals 1

    .prologue
    .line 1636
    iget v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    return v0
.end method

.method public getLteIsEbSupported()I
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    return v0
.end method

.method public getLteIsEmergencyAccessBarred()I
    .locals 1

    .prologue
    .line 1656
    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    return v0
.end method

.method public getMobileDataRegState()I
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    return v0
.end method

.method public getMobileVoiceRegState()I
    .locals 1

    .prologue
    .line 1680
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1466
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalRadioTech()I
    .locals 1

    .prologue
    .line 1741
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 2

    .prologue
    .line 1405
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilMobileDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1707
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    return v0
.end method

.method public getRilMobileVoiceRadioTechnology()I
    .locals 1

    .prologue
    .line 1685
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSnapshotStatus()I
    .locals 1

    .prologue
    .line 1668
    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 1492
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1477
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public getVoiceRegType()I
    .locals 1

    .prologue
    .line 1619
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 803
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v3, :cond_8

    :goto_8
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_8
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public isRRApplicable()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 1191
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1192
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1198
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1199
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1205
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1206
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 1184
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1185
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    .prologue
    .line 1382
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1383
    return-void

    .line 1382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1249
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1250
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1226
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1227
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1228
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1229
    return-void
.end method

.method public setDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1144
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1146
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 1165
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1166
    return-void

    .line 1165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataRoamingFromRegistration(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 644
    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1170
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1171
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 1177
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1178
    return-void
.end method

.method public setFemtocellIndicator(I)V
    .locals 0
    .param p1, "femtocellIndicator"    # I

    .prologue
    .line 1729
    iput p1, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    .line 1730
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    .prologue
    .line 1253
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1254
    return-void
.end method

.method public setLteImsVoiceAvail(I)V
    .locals 0
    .param p1, "lteImsVoiceAvail"    # I

    .prologue
    .line 1641
    iput p1, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    .line 1642
    return-void
.end method

.method public setLteIsEbSupported(I)V
    .locals 0
    .param p1, "lteIsEbSupported"    # I

    .prologue
    .line 1651
    iput p1, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    .line 1652
    return-void
.end method

.method public setLteIsEmergencyAccessBarred(I)V
    .locals 0
    .param p1, "lteIsEmergencyAccessBarred"    # I

    .prologue
    .line 1661
    iput p1, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    .line 1662
    return-void
.end method

.method public setMobileDataRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1712
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    .line 1713
    return-void
.end method

.method public setMobileVoiceRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1690
    iput p1, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    .line 1691
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1238
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1239
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1240
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1209
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1210
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1211
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1212
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1213
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1214
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1215
    return-void
.end method

.method public setOptionalRadioTech(I)V
    .locals 0
    .param p1, "optTech"    # I

    .prologue
    .line 1736
    iput p1, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    .line 1737
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1376
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1378
    return-void
.end method

.method public setRilMobileDataRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1717
    iput p1, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    .line 1718
    return-void
.end method

.method public setRilMobileVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1695
    iput p1, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    .line 1696
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1371
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1372
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .prologue
    .line 1149
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1150
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1151
    return-void

    .line 1149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoamingReduction(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1748
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    .line 1749
    return-void
.end method

.method public setSnapshotStatus(I)V
    .locals 0
    .param p1, "snapshotStatus"    # I

    .prologue
    .line 1673
    iput p1, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    .line 1674
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 1134
    return-void
.end method

.method public setStateOff()V
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 1129
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 1125
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .prologue
    .line 1387
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1388
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1389
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1244
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1245
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1219
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1220
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1221
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1222
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1138
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1140
    return-void
.end method

.method public setVoiceRegType(I)V
    .locals 0
    .param p1, "voiceRegType"    # I

    .prologue
    .line 1624
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    .line 1625
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1156
    return-void

    .line 1155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoiceRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1160
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 988
    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "radioTechnology":Ljava/lang/String;
    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    .line 993
    .local v2, "mobileVoiceRadioTechnology":Ljava/lang/String;
    iget v4, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, "mobileDataRadioTechnology":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v4, :cond_2

    .line 996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "voice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v4, :cond_0

    const-string v4, "(manual)"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v4, :cond_1

    const-string v4, "CSS supported"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DefRoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VoiceRegType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ImsVoiceAvail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsEbSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsEaBarred="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Snap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MobileVoice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MobileData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FemtocellInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EmergOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsDataRoamingFromRegistration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    :goto_2
    return-object v4

    .line 996
    :cond_0
    const-string v4, ""

    goto/16 :goto_0

    :cond_1
    const-string v4, "CSS not supported"

    goto/16 :goto_1

    .line 1023
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "voice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v5}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v4, :cond_3

    const-string v4, "(manual)"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v4, :cond_4

    const-string v4, "CSS supported"

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DefRoamInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VoiceRegType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ImsVoiceAvail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsEbSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsEaBarred="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Snap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MobileVoice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MobileData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FemtocellInd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EmergOnly="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IsDataRoamingFromRegistration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    const-string v4, ""

    goto/16 :goto_3

    :cond_4
    const-string v4, "CSS not supported"

    goto/16 :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/telephony/ServiceState;->mLteImsVoiceAvail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEbSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Landroid/telephony/ServiceState;->mLteIsEmergencyAccessBarred:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/telephony/ServiceState;->mSnapshotStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget v0, p0, Landroid/telephony/ServiceState;->mMobileDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v0, p0, Landroid/telephony/ServiceState;->mRilMobileDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v0, p0, Landroid/telephony/ServiceState;->mFemtocellIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Landroid/telephony/ServiceState;->mOptionalRadioTech:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoamingReduction:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 545
    return-void

    :cond_0
    move v0, v2

    .line 507
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 510
    goto :goto_1

    :cond_2
    move v0, v2

    .line 517
    goto :goto_2

    :cond_3
    move v0, v2

    .line 518
    goto :goto_3

    :cond_4
    move v1, v2

    .line 543
    goto :goto_4
.end method
