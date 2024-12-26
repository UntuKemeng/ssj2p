.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_CS_FALLBACK:I = 0x68

.field protected static final EVENT_DEFLECT_RESULT:I = 0x65

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HYSTERESIS_DCN:I = 0xcf

.field protected static final EVENT_MODIFY_CALL:I = 0x66

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field protected static final EVENT_VOICE_SYSTEM_ID:I = 0x67

.field protected static final EVENT_VOLTE_SWITCH_RESULT:I = 0x69

.field static final POLL_DELAY_MSEC:I = 0xfa

.field protected static final UPDATE_PHONESTATE_CALL_ENDED:I = 0x8

.field protected static final UPDATE_PHONESTATE_CALL_ESTABLISHED:I = 0x4

.field protected static final UPDATE_PHONESTATE_CALL_ORIGINATED:I = 0x1

.field protected static final UPDATE_PHONESTATE_CALL_TERMINATED:I = 0x2


# instance fields
.field private final VALID_COMPARE_LENGTH:I

.field public mAcceptingWaitingCall:Z

.field protected mCallTypeInPhoneState:Ljava/lang/String;

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCsFallback:I

.field mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

.field protected mHandoverConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public mHasActiveVideoCall:Z

.field public mHasEpdgCall:Z

.field public mHasVideoCall:Z

.field public mHasVolteCall:Z

.field public mIsDmHdvAlarmEvent:Z

.field public mLastCallRat:Ljava/lang/String;

.field protected mLastRelevantPoll:Landroid/os/Message;

.field protected mNeedUpdatePhoneState:I

.field protected mNeedsPoll:Z

.field protected mNumberConverted:Z

.field protected mPendingOperations:I

.field mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field protected mRadioInPhoneState:Ljava/lang/String;

.field protected mReasonInPhoneState:Ljava/lang/String;

.field public mSkipDisableDataConnection:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->VALID_COMPARE_LENGTH:I

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/CallTracker;->mCsFallback:I

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mSkipDisableDataConnection:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mHasVolteCall:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mHasVideoCall:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mHasActiveVideoCall:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mHasEpdgCall:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mAcceptingWaitingCall:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastCallRat:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedUpdatePhoneState:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mRadioInPhoneState:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCallTypeInPhoneState:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mReasonInPhoneState:Ljava/lang/String;

    .line 120
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mIsDmHdvAlarmEvent:Z

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 132
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    .line 133
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 135
    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "serviceGid1"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "gid1":Ljava/lang/String;
    const/4 v2, 0x1

    .line 370
    .local v2, "ret":Z
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareGid1 serviceGid is empty, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    move v3, v2

    .line 383
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 375
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 377
    .local v1, "gid_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 379
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " gid1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " serviceGid1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    .line 382
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareGid1 is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    const-string v4, "Same"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    move v3, v2

    .line 383
    .restart local v3    # "ret":I
    goto :goto_0

    .line 382
    .end local v3    # "ret":I
    :cond_4
    const-string v4, "Different"

    goto :goto_1
.end method

.method public static convertCallType(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isVideo"    # Z

    .prologue
    .line 515
    if-eqz p0, :cond_0

    .line 516
    const-string v0, "video"

    .line 519
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "voice"

    goto :goto_0
.end method

.method public static convertRadioTech(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p1, "phoneName"    # Ljava/lang/String;

    .prologue
    .line 493
    if-nez p0, :cond_0

    .line 494
    const-string v0, ""

    .line 511
    :goto_0
    return-object v0

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 498
    :cond_1
    const-string v0, "CDMA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    const-string v0, "1x"

    goto :goto_0

    .line 500
    :cond_2
    const-string v0, "GSM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    const-string v0, "gsm"

    goto :goto_0

    .line 504
    :cond_3
    const-string v0, "epdg"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    const-string v2, "radiotech"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    const-string v0, "wifi"

    goto :goto_0

    .line 507
    :cond_4
    const-string v0, "lte"

    goto :goto_0

    .line 511
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected addNumberOfCalls(Z)V
    .locals 1
    .param p1, "isIncoming"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mPhoneRP:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    goto :goto_0
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->cancelTransferCall(ILandroid/os/Message;)V

    .line 427
    return-void
.end method

.method protected checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 283
    const-string v2, "ril.test.emergencynumber"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "testEn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForTestEmergencyNumber: values.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 291
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 292
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForTestEmergencyNumber: remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 297
    aget-object p1, v1, v4

    .line 301
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 305
    if-nez p2, :cond_1

    .line 362
    .end local p2    # "dialNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 308
    .restart local p2    # "dialNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1070040

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "convertMaps":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertNumberIfNecessary Roaming convertMaps.length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dialNumber.length() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 314
    array-length v11, v3

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-lt v11, v12, :cond_0

    .line 320
    const-string v9, ""

    .line 321
    .local v9, "outNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 322
    .local v8, "needConvert":Z
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v2, v1, v5

    .line 323
    .local v2, "convertMap":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "convertNumberIfNecessary: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 324
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "entry":[Ljava/lang/String;
    array-length v11, v4

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 326
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "tmpArray":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x0

    aget-object v11, v4, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 328
    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_5

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 329
    const/4 v11, 0x1

    aget-object v11, v10, v11

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/internal/telephony/CallTracker;->compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 330
    const/4 v8, 0x1

    .line 336
    :cond_2
    :goto_2
    if-eqz v8, :cond_4

    .line 337
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "MDN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "mdn":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 340
    const-string v11, "+"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 341
    move-object v9, v7

    .line 350
    .end local v7    # "mdn":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v8, 0x0

    .line 322
    .end local v10    # "tmpArray":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 332
    .restart local v10    # "tmpArray":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 333
    const/4 v8, 0x1

    goto :goto_2

    .line 343
    .restart local v7    # "mdn":Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 348
    .end local v7    # "mdn":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    aget-object v9, v10, v11

    goto :goto_3

    .line 356
    .end local v2    # "convertMap":Ljava/lang/String;
    .end local v4    # "entry":[Ljava/lang/String;
    .end local v10    # "tmpArray":[Ljava/lang/String;
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 357
    const-string v11, "convertNumberIfNecessary: convert service number"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 358
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    move-object/from16 p2, v9

    .line 359
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "CallTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastRelevantPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method protected getAudioQualityFromExtraValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "codecInfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 459
    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    const-string v1, "AMR-NB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    const-string v1, "AMR-WB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    const/4 v0, 0x2

    goto :goto_0

    .line 467
    :cond_2
    const-string v1, "EVS-SWB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EVS-NB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EVS-WB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EVS-FB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EVS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 402
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 403
    const/16 v1, 0xa

    .line 411
    :goto_0
    return v1

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-nez v1, :cond_1

    .line 407
    const-string v1, "getCallType(): callDetails is null. default to CALL_TYPE_VOICE."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    goto :goto_0
.end method

.method public getCallTypeInPhoneState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCallTypeInPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method public getDmHdvAlarmEvent()Z
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDmHdvAlarmEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mIsDmHdvAlarmEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mIsDmHdvAlarmEvent:Z

    return v0
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 203
    .local v0, "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHoConnection - compare number: hoConn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHoConnection: Handover connection match found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 216
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v0

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 210
    .restart local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHoConnection: compare state hoConn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v3}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHoConnection: Handover connection match found = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRadioInPhoneState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mRadioInPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonInPhoneState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mReasonInPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    .line 233
    return-void
.end method

.method public hasPsAutomaticCallOnly()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 7
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J
    .param p5, "duration"    # J
    .param p7, "isIncoming"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/DeviceInventory;->addCallsCount(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-virtual {v0}, Landroid/sec/enterprise/DeviceInventory;->isCallingCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mDeviceInfo:Landroid/sec/enterprise/DeviceInventory;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v4, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/DeviceInventory;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->modifyCallConfirm(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V

    .line 395
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/android/internal/telephony/CallModify;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/android/internal/telephony/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/CommandsInterface;->modifyCallInitiate(Lcom/android/internal/telephony/CallModify;Landroid/os/Message;)V

    .line 390
    return-void
.end method

.method protected notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState: mHandoverConnections= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 229
    return-void

    .line 223
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    if-eq p1, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 245
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 179
    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    return-void
.end method

.method protected pollCallsAfterDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 172
    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public setDmHdvAlarmEvent(Z)V
    .locals 2
    .param p1, "onoff"    # Z

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDmHdvAlarmEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    .line 449
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallTracker;->mIsDmHdvAlarmEvent:Z

    .line 450
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->transferCall(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 424
    return-void
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method
