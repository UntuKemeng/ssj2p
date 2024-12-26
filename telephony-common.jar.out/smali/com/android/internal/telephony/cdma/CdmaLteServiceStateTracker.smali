.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DAN_DELAY_TIMER:I = 0x1388

.field private static final DCN_HYST_TIMER:I = 0x3a98

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field private static final EVENT_DCN_TIMER_START:I = 0x7d0

.field private static final EVENT_DCN_TIMER_STOP:I = 0x7d1


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mDCNMessageTimer:Z

.field mLatestDataRadioTechnology:I

.field mPreferredNetworkType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 102
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 115
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 121
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private PnnFromUicc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1506
    const/4 v0, 0x0

    .line 1507
    .local v0, "displayname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 1508
    .local v3, "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 1509
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1510
    .local v2, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    const-string v4, "gsm.operator.numeric.real"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1511
    .local v1, "realOperatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    if-eqz v4, :cond_0

    .line 1512
    invoke-virtual {v2, v1, v7, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 1513
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eons Name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    .end local v1    # "realOperatorNumeric":Ljava/lang/String;
    .end local v2    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_0
    return-object v0
.end method

.method private isDCNHystTimerRunning()Z
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    return v0
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return v1

    .line 1372
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 1374
    if-eqz p1, :cond_0

    .line 1376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1379
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 1376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1386
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 127
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 128
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1491
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestDataRadioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
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
    .line 1396
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 1397
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1410
    :cond_0
    :goto_0
    return-object v0

    .line 1399
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 139
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v9, :cond_1

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 289
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :sswitch_0
    const-string v9, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 149
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 153
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string v9, "handleMessage EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 154
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 155
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 159
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-nez v9, :cond_9

    .line 163
    const-string v9, "IccRecords is not RuimRecords.."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 165
    const-string v9, "ACG"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 167
    .local v2, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    .line 168
    const-string v9, "cdmaUiccApp is not Null."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 170
    .local v4, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_8

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object v6, v4

    .line 174
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 182
    :goto_2
    if-eqz v6, :cond_6

    .line 183
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportCSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v9, :cond_5

    .line 187
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 188
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 189
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 192
    sget-boolean v9, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v9, :cond_4

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MIN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", PRL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 196
    :cond_4
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 199
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "airplaneModeState":I
    const-string v9, "3"

    const-string v10, "ril.otasp_state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eq v0, v13, :cond_6

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 207
    .end local v0    # "airplaneModeState":I
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    .line 212
    const-string v9, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 170
    .restart local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 178
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    check-cast v6, Lcom/android/internal/telephony/uicc/RuimRecords;

    .restart local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    goto/16 :goto_2

    .line 218
    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    goto/16 :goto_0

    .line 221
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 222
    .local v3, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v9

    invoke-virtual {v9, v3, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v9, :cond_a

    .line 225
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 227
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 231
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 229
    :cond_a
    :try_start_1
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 235
    .end local v3    # "dds":I
    :sswitch_5
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER expired"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 237
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v7

    .line 238
    .local v7, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v7, :cond_0

    .line 239
    const-string v9, "CdmaSST"

    const-string v10, "Sending domain change notification"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    goto/16 :goto_0

    .line 245
    .end local v7    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :sswitch_6
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER Started"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 248
    const/16 v9, 0x7d1

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 253
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 255
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/16 v9, 0x15

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 256
    .local v5, "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v9, v10, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 260
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "message":Landroid/os/Message;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 261
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v9, :cond_b

    .line 262
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-static {v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v10, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 264
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 267
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->syncNetworkSelectionInfo()V

    goto/16 :goto_0

    .line 273
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 275
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_c

    .line 276
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v9, v9, v12

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    .line 281
    :goto_4
    const/16 v9, 0x14

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 282
    .restart local v5    # "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v8

    .line 284
    .local v8, "toggledNetworkType":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 278
    .end local v5    # "message":Landroid/os/Message;
    .end local v8    # "toggledNetworkType":I
    :cond_c
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_4

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x1b -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x7d0 -> :sswitch_6
        0x7d1 -> :sswitch_5
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 33
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 298
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 299
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v29, v2

    check-cast v29, [Ljava/lang/String;

    .line 301
    .local v29, "states":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " states="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 305
    const/16 v21, 0x0

    .line 306
    .local v21, "newDataRAT":I
    const/16 v24, -0x1

    .line 308
    .local v24, "regState":I
    const/16 v16, -0x1

    .line 309
    .local v16, "lac":I
    const/4 v8, -0x1

    .line 312
    .local v8, "cid":I
    const/16 v18, 0x4

    .line 313
    .local v18, "mobileDataRegState":I
    const/16 v17, 0x0

    .line 316
    .local v17, "mobileDataRat":I
    move-object/from16 v0, v29

    array-length v2, v0

    if-lez v2, :cond_4

    .line 318
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 321
    move-object/from16 v0, v29

    array-length v2, v0

    const/16 v31, 0x3

    move/from16 v0, v31

    if-lt v2, v0, :cond_1

    .line 322
    const/4 v2, 0x1

    aget-object v2, v29, v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v2, 0x1

    aget-object v2, v29, v2

    const/16 v31, 0x10

    move/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 325
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v29, v2

    if-eqz v2, :cond_1

    .line 326
    const/4 v2, 0x2

    aget-object v2, v29, v2

    const/16 v31, 0x10

    move/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 329
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataLac:I

    .line 330
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataCid:I

    .line 333
    move-object/from16 v0, v29

    array-length v2, v0

    const/16 v31, 0x4

    move/from16 v0, v31

    if-lt v2, v0, :cond_2

    const/4 v2, 0x3

    aget-object v2, v29, v2

    if-eqz v2, :cond_2

    .line 334
    const/4 v2, 0x3

    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 340
    :cond_2
    :goto_0
    move-object/from16 v0, v29

    array-length v2, v0

    const/16 v31, 0xa

    move/from16 v0, v31

    if-lt v2, v0, :cond_4

    .line 347
    const/16 v23, 0x0

    .line 350
    .local v23, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    .line 351
    const/4 v2, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 364
    .local v3, "mcc":I
    :goto_1
    const/4 v2, 0x3

    :try_start_2
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    .line 374
    .local v4, "mnc":I
    :goto_2
    const/4 v2, 0x6

    :try_start_3
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .line 381
    .local v7, "tac":I
    :goto_3
    const/4 v2, 0x7

    :try_start_4
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .line 388
    .local v6, "pci":I
    :goto_4
    const/16 v2, 0x8

    :try_start_5
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    .line 395
    .local v5, "eci":I
    :goto_5
    const/16 v2, 0x9

    :try_start_6
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v9

    .line 403
    .local v9, "csgid":I
    :goto_6
    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataTac:I

    .line 414
    move-object/from16 v0, v29

    array-length v2, v0

    const/16 v31, 0xc

    move/from16 v0, v31

    if-lt v2, v0, :cond_3

    .line 416
    const/16 v2, 0xb

    :try_start_7
    aget-object v2, v29, v2

    if-eqz v2, :cond_3

    .line 417
    const/16 v2, 0xb

    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 418
    .local v25, "snapshotStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setSnapshotStatus(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 426
    .end local v25    # "snapshotStatus":I
    :cond_3
    :goto_7
    move-object/from16 v0, v29

    array-length v2, v0

    const/16 v31, 0xe

    move/from16 v0, v31

    if-lt v2, v0, :cond_4

    .line 428
    const/16 v2, 0xc

    :try_start_8
    aget-object v2, v29, v2

    if-eqz v2, :cond_4

    const/16 v2, 0xd

    aget-object v2, v29, v2

    if-eqz v2, :cond_4

    .line 429
    const/16 v2, 0xc

    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 430
    const/16 v2, 0xd

    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move-result v17

    .line 447
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v23    # "operatorNumeric":Ljava/lang/String;
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v22

    .line 448
    .local v22, "oldDataRAT":I
    if-nez v22, :cond_5

    if-nez v21, :cond_7

    :cond_5
    invoke-static/range {v22 .. v22}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xe

    move/from16 v0, v21

    if-eq v0, v2, :cond_7

    :cond_6
    const/16 v2, 0xe

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 454
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 457
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v10

    .line 459
    .local v10, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v10}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setMobileDataRegState(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilMobileDataRadioTechnology(I)V

    .line 467
    const-string v2, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v31, "gsm.network.type"

    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v31, "gsm.operator.ispsroaming"

    const-string v32, "true"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " regState="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " dataRadioTechnology="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 532
    .end local v8    # "cid":I
    .end local v10    # "dataRegState":I
    .end local v16    # "lac":I
    .end local v17    # "mobileDataRat":I
    .end local v18    # "mobileDataRegState":I
    .end local v21    # "newDataRAT":I
    .end local v22    # "oldDataRAT":I
    .end local v24    # "regState":I
    .end local v29    # "states":[Ljava/lang/String;
    :cond_a
    :goto_a
    return-void

    .line 336
    .restart local v8    # "cid":I
    .restart local v16    # "lac":I
    .restart local v17    # "mobileDataRat":I
    .restart local v18    # "mobileDataRegState":I
    .restart local v21    # "newDataRAT":I
    .restart local v24    # "regState":I
    .restart local v29    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 337
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .restart local v23    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 354
    .local v11, "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    .line 355
    const/4 v2, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v3

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 356
    .end local v3    # "mcc":I
    :catch_2
    move-exception v12

    .line 357
    .local v12, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " ex="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 359
    const-string v23, ""

    .line 360
    const v3, 0x7fffffff

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 365
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 366
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 368
    const v4, 0x7fffffff

    .restart local v4    # "mnc":I
    goto/16 :goto_2

    .line 375
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    .line 376
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0x6

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 378
    const v7, 0x7fffffff

    .restart local v7    # "tac":I
    goto/16 :goto_3

    .line 382
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 383
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0x7

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 385
    const v6, 0x7fffffff

    .restart local v6    # "pci":I
    goto/16 :goto_4

    .line 389
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v11

    .line 390
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0x8

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 392
    const v5, 0x7fffffff

    .restart local v5    # "eci":I
    goto/16 :goto_5

    .line 396
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 400
    .restart local v11    # "e":Ljava/lang/Exception;
    const v9, 0x7fffffff

    .restart local v9    # "csgid":I
    goto/16 :goto_6

    .line 420
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v11

    .line 421
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad snapstatus states[11]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0xb

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 432
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v11

    .line 433
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "handlePollStateResultMessage: bad mobile data registration states[12]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0xc

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, ", states[13]="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v31, 0xd

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, " e="

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 476
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v23    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "dataRegState":I
    .restart local v22    # "oldDataRAT":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v31, "gsm.operator.ispsroaming"

    const-string v32, "false"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 486
    .end local v8    # "cid":I
    .end local v10    # "dataRegState":I
    .end local v16    # "lac":I
    .end local v17    # "mobileDataRat":I
    .end local v18    # "mobileDataRegState":I
    .end local v21    # "newDataRAT":I
    .end local v22    # "oldDataRAT":I
    .end local v24    # "regState":I
    .end local v29    # "states":[Ljava/lang/String;
    :cond_c
    const/16 v2, 0xe

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 488
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v15, v2

    check-cast v15, [I

    .line 493
    .local v15, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    const/4 v2, 0x0

    aget v2, v15, v2

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_10

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 495
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v31, "CscFeature_RIL_SupportAllRat"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_e

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v31, "persist.radio.multisim.stackid"

    const-string v32, "0"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 498
    .local v28, "stackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v31, "ril.ICC_TYPE"

    const-string v32, "1"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 499
    .local v13, "iccType":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "3"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "4"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 500
    :cond_d
    const-string v2, "Manual Selection with CTC card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 502
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ACTION_SIXMODE_MANUAL_SELECTION"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v31, 0x0

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 509
    .end local v13    # "iccType":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v28    # "stackId":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v31, "CscFeature_RIL_NetworkInfoRat"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v30

    .line 511
    .local v30, "subId":I
    invoke-static/range {v30 .. v30}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 513
    .local v27, "sp1":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "network_selection_key"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v31, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 515
    .local v19, "network_selection_key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "network_selection_name_key"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v31, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 517
    .local v20, "network_selection_name_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 519
    :cond_f
    const-string v2, "update manual selection mode to auto."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 521
    .local v26, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 522
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "network_selection_key"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "network_selection_name_key"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v31, ""

    move-object/from16 v0, v31

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_a

    .line 493
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "network_selection_key":Ljava/lang/String;
    .end local v20    # "network_selection_name_key":Ljava/lang/String;
    .end local v26    # "sp":Landroid/content/SharedPreferences;
    .end local v27    # "sp1":Landroid/content/SharedPreferences;
    .end local v30    # "subId":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 530
    .end local v15    # "ints":[I
    :cond_11
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_a
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1334
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return v0

    .line 1340
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->hasPsAutomaticCallOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallTracker;->mSkipDisableDataConnection:Z

    if-nez v1, :cond_0

    .line 1349
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1481
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1486
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v4, 0xe

    .line 1308
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1311
    const/4 p2, 0x1

    .line 1313
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 1315
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 1316
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1317
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 1318
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 1319
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 1322
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1327
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 1328
    return v1

    .line 1327
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 536
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 539
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 565
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 592
    :goto_1
    return-void

    .line 541
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 544
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 553
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 555
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 78

    .prologue
    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateRoamingState()V

    .line 598
    sget-boolean v72, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v72, :cond_0

    const-string v72, "telephony.test.forceRoaming"

    const/16 v73, 0x0

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    if-eqz v72, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const/16 v73, 0x1

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 603
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-nez v72, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v72

    const/16 v73, 0x1

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_4c

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setLteImsVoiceAvail(I)V

    .line 616
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 617
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, "] newSS=["

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, "]"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-eqz v72, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-nez v72, :cond_4d

    const/16 v34, 0x1

    .line 622
    .local v34, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-nez v72, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-eqz v72, :cond_4e

    const/16 v29, 0x1

    .line 625
    .local v29, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-eqz v72, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-nez v72, :cond_4f

    const/16 v21, 0x1

    .line 629
    .local v21, "hasCdmaDataConnectionAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-nez v72, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-eqz v72, :cond_50

    const/16 v23, 0x1

    .line 633
    .local v23, "hasCdmaDataConnectionDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_51

    const/16 v22, 0x1

    .line 636
    .local v22, "hasCdmaDataConnectionChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_52

    const/16 v35, 0x1

    .line 639
    .local v35, "hasVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_53

    const/16 v26, 0x1

    .line 642
    .local v26, "hasDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_54

    const/16 v24, 0x1

    .line 644
    .local v24, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-nez v72, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-eqz v72, :cond_55

    const/16 v38, 0x1

    .line 646
    .local v38, "hasVoiceRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-eqz v72, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-nez v72, :cond_56

    const/16 v37, 0x1

    .line 648
    .local v37, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-nez v72, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-eqz v72, :cond_57

    const/16 v28, 0x1

    .line 650
    .local v28, "hasDataRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-eqz v72, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-nez v72, :cond_58

    const/16 v27, 0x1

    .line 652
    .local v27, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_59

    const/16 v30, 0x1

    .line 654
    .local v30, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_5a

    const/16 v36, 0x1

    .line 658
    .local v36, "hasVoiceRegStateChanged":Z
    :goto_e
    const/16 v25, 0x0

    .line 659
    .local v25, "hasCheckDAN":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    .line 660
    .local v6, "NVT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    .line 664
    .local v9, "PVT":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    move/from16 v72, v0

    if-eqz v72, :cond_2

    .line 665
    const/16 v24, 0x1

    .line 666
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    .line 667
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Change hasChanged to "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 672
    :cond_2
    const/16 v33, 0x0

    .line 673
    .local v33, "hasPlmnChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v73

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    if-eq v0, v1, :cond_3

    .line 674
    const/16 v33, 0x1

    .line 678
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-nez v72, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5b

    :cond_5
    const/16 v19, 0x1

    .line 685
    .local v19, "has4gHandoff":Z
    :goto_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_a

    .line 686
    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5c

    :cond_9
    const/16 v19, 0x1

    .line 697
    :cond_a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5d

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_5d

    const/16 v32, 0x1

    .line 703
    .local v32, "hasMultiApnSupport":Z
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_d

    .line 704
    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_5e

    :cond_c
    const/16 v32, 0x1

    .line 709
    :cond_d
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x4

    move/from16 v0, v72

    move/from16 v1, v73

    if-lt v0, v1, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0x8

    move/from16 v0, v72

    move/from16 v1, v73

    if-gt v0, v1, :cond_5f

    const/16 v31, 0x1

    .line 714
    .local v31, "hasLostMultiApnSupport":Z
    :goto_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SmsCml"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_60

    .line 735
    :cond_e
    :goto_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_f

    const-string v72, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_f

    .line 737
    if-nez v9, :cond_f

    if-eqz v6, :cond_f

    const-string v72, "1"

    const-string v73, "persist.radio.sent.dan_sms"

    invoke-static/range {v73 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_f

    .line 740
    const/16 v25, 0x1

    .line 745
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    const-string v73, "phone"

    invoke-virtual/range {v72 .. v73}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/telephony/TelephonyManager;

    .line 749
    .local v67, "tm":Landroid/telephony/TelephonyManager;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "pollStateDone: hasRegistered="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasDeegistered="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasChanged="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasVoiceRoamingOn="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasVoiceRoamingOff="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasDataRoamingOn="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasDataRoamingOff="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasLocationChanged="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " has4gHandoff = "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " LatestDataRadioTechnology="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasMultiApnSupport="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " hasLostMultiApnSupport="

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_11

    .line 773
    :cond_10
    const v72, 0xc3c4

    const/16 v73, 0x4

    move/from16 v0, v73

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    aput-object v75, v73, v74

    const/16 v74, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    aput-object v75, v73, v74

    const/16 v74, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    aput-object v75, v73, v74

    const/16 v74, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v75

    aput-object v75, v73, v74

    invoke-static/range {v72 .. v73}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 777
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v72

    if-eqz v72, :cond_12

    if-eqz v32, :cond_12

    .line 778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v72, v0

    const/16 v73, 0x4

    move/from16 v0, v72

    move/from16 v1, v73

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v72, v0

    const/16 v73, 0x8

    move/from16 v0, v72

    move/from16 v1, v73

    if-gt v0, v1, :cond_12

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v72, v0

    const-string v73, "MultiApnSupport"

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 784
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v72

    if-eqz v72, :cond_14

    if-eqz v31, :cond_14

    .line 785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v72, v0

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v72, v0

    const/16 v73, 0xd

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v72, v0

    const/16 v73, 0x12

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_14

    .line 790
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v72, v0

    const-string v73, "LostMultiApnSupport"

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 792
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_14

    const-string v72, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_14

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v64

    .line 795
    .local v64, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    const/4 v13, 0x0

    .line 796
    .local v13, "canSend":Z
    const/16 v44, 0x0

    .line 797
    .local v44, "isHybrid":Z
    if-eqz v64, :cond_14

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v72

    if-eqz v72, :cond_62

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/LegacyIms;->dcnAvailability()Z

    move-result v13

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/LegacyIms;->isHybridVolte()Z

    move-result v44

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/LegacyIms;->clearVolteRegistered()V

    .line 803
    if-eqz v13, :cond_14

    .line 804
    const-string v72, "CdmaSST"

    const-string v73, "Sending domain change notification"

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v72, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 806
    if-eqz v44, :cond_14

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/LegacyIms;->requestInitialImsRegistration()V

    .line 820
    .end local v13    # "canSend":Z
    .end local v44    # "isHybrid":Z
    .end local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_14
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    if-eqz v72, :cond_15

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 826
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v70, v0

    .line 827
    .local v70, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 828
    move-object/from16 v0, v70

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v65, v0

    .line 833
    .local v65, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 834
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 838
    if-eqz v35, :cond_17

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 840
    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_17

    .line 842
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    const-string v73, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v74, v0

    invoke-virtual/range {v74 .. v74}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v74

    invoke-static/range {v74 .. v74}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {v72 .. v74}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_17
    if-eqz v26, :cond_19

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v73

    move-object/from16 v0, v67

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 850
    const/16 v72, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_18

    .line 852
    const-string v72, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 855
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_63

    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_63

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_63

    .line 858
    const/16 v72, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    .line 866
    :cond_19
    :goto_16
    if-eqz v34, :cond_1a

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 875
    :cond_1a
    if-eqz v24, :cond_39

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v72, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v72

    if-nez v72, :cond_64

    const/16 v20, 0x0

    .line 878
    .local v20, "hasBrandOverride":Z
    :goto_17
    if-nez v20, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v72, v0

    invoke-interface/range {v72 .. v72}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v72

    if-eqz v72, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v72

    if-eqz v72, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v72

    const v73, 0x11200af

    invoke-virtual/range {v72 .. v73}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v72

    if-eqz v72, :cond_6c

    .line 883
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v17

    .line 886
    .local v17, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-nez v72, :cond_66

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v17

    .line 903
    :cond_1c
    :goto_18
    const/16 v71, 0x1

    .line 905
    .local v71, "useERItext":Z
    const/16 v72, 0xb

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_1d

    const/16 v71, 0x0

    .line 907
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_ExceptionSid"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_1e

    const/16 v71, 0x0

    .line 908
    :cond_1e
    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_1f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_20

    .line 910
    :cond_1f
    const/16 v71, 0x0

    .line 912
    :cond_20
    if-eqz v71, :cond_69

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 944
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v71    # "useERItext":Z
    :cond_21
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v72, v0

    if-eqz v72, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v72

    sget-object v73, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    if-eqz v72, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-nez v72, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_24

    .line 952
    const/16 v59, 0x0

    .line 954
    .local v59, "showSpn":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportCSIM"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    move/from16 v72, v0

    if-eqz v72, :cond_23

    .line 958
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v59

    .line 962
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v39

    .line 964
    .local v39, "iconIndex":I
    if-eqz v59, :cond_24

    const/16 v72, 0x1

    move/from16 v0, v39

    move/from16 v1, v72

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v73

    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v72

    if-eqz v72, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    if-eqz v72, :cond_24

    .line 969
    const/16 v72, 0xb

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-nez v72, :cond_24

    const/16 v72, 0xc

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-nez v72, :cond_24

    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_24

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 973
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Set OperatorAlphaLong: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ", Cause: SPN"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 979
    .end local v39    # "iconIndex":I
    .end local v59    # "showSpn":Z
    :cond_24
    const-string v72, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_2b

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v16

    .line 981
    .local v16, "displayname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-nez v72, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-eqz v72, :cond_6d

    :cond_26
    const/16 v72, 0x1

    :goto_1a
    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    .line 983
    .local v45, "isLteRoam":Ljava/lang/Boolean;
    const/16 v66, 0x0

    .line 986
    .local v66, "tempname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v72

    if-nez v72, :cond_70

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkIsSprintSimCard()Z

    move-result v72

    if-eqz v72, :cond_6e

    .line 988
    sget-object v72, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    const-string v73, ""

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 989
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "sprint sim + home displayname= "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1010
    :cond_27
    :goto_1b
    const/16 v72, 0x7

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_28

    const-string v72, "Chameleon"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_28

    .line 1011
    const-string v16, "Samsung"

    .line 1013
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_2b

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-eqz v72, :cond_78

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v55

    .line 1019
    .local v55, "rat":I
    const/16 v72, 0x4

    move/from16 v0, v55

    move/from16 v1, v72

    if-lt v0, v1, :cond_29

    const/16 v72, 0x8

    move/from16 v0, v55

    move/from16 v1, v72

    if-le v0, v1, :cond_2a

    :cond_29
    const/16 v72, 0xc

    move/from16 v0, v55

    move/from16 v1, v72

    if-eq v0, v1, :cond_2a

    const/16 v72, 0xd

    move/from16 v0, v55

    move/from16 v1, v72

    if-ne v0, v1, :cond_73

    .line 1021
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    const/16 v73, 0xa0

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_72

    const/16 v46, 0x1

    .line 1022
    .local v46, "isRREri":Z
    :goto_1c
    const-string v72, "CdmaSST"

    new-instance v73, Ljava/lang/StringBuilder;

    invoke-direct/range {v73 .. v73}, Ljava/lang/StringBuilder;-><init>()V

    const-string v74, "RoamingReduction ERI: "

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v73

    move-object/from16 v0, v73

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoamingReduction(Z)V

    .line 1051
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v45    # "isLteRoam":Ljava/lang/Boolean;
    .end local v46    # "isRREri":Z
    .end local v55    # "rat":I
    .end local v66    # "tempname":Ljava/lang/String;
    :cond_2b
    :goto_1d
    const-string v72, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_2c

    const-string v72, "TFN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_2e

    .line 1052
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-nez v72, :cond_2e

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    if-eqz v72, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    const/16 v73, 0x2

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_79

    .line 1054
    :cond_2d
    const-string v72, "Device is in roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, "Roaming"

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1065
    :cond_2e
    :goto_1e
    const-string v72, "TFN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_30

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-nez v72, :cond_30

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    const/16 v73, 0x2

    move/from16 v0, v72

    move/from16 v1, v73

    if-eq v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    if-nez v72, :cond_7a

    .line 1068
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, "Roaming"

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1075
    :cond_30
    :goto_1f
    const-string v72, "CCT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_31

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-nez v72, :cond_31

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v72

    if-eqz v72, :cond_7b

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, "Roaming"

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1086
    :cond_31
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v73

    move-object/from16 v0, v67

    move/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    move-object/from16 v0, v67

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v54

    .line 1089
    .local v54, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v52

    .line 1091
    .local v52, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_32

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v60

    .line 1093
    .local v60, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v52

    .line 1095
    .end local v60    # "sid":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    move-object/from16 v0, v67

    move/from16 v1, v72

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v54

    move-object/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_7c

    .line 1100
    const-string v72, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    const-string v73, ""

    move-object/from16 v0, v67

    move/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1102
    const/16 v72, 0x0

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1138
    :cond_33
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v72

    if-nez v72, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v72

    if-eqz v72, :cond_7e

    :cond_34
    const/16 v72, 0x1

    :goto_22
    move-object/from16 v0, v67

    move/from16 v1, v73

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 1141
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_35

    .line 1142
    const-string v63, "false"

    .line 1143
    .local v63, "sixmodeslave":Ljava/lang/String;
    const-string v72, "false"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v73, v0

    const-string v74, "gsm.operator.isroaming"

    const-string v75, "false"

    invoke-virtual/range {v73 .. v75}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_35

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v72

    const-string v73, "IS_CTC"

    const/16 v74, 0x0

    invoke-static/range {v72 .. v74}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v47

    .line 1145
    .local v47, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v72

    const-string v73, "IS_CTC2"

    const/16 v74, 0x0

    invoke-static/range {v72 .. v74}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v48

    .line 1146
    .local v48, "isctc2":I
    const/16 v72, 0x1

    move/from16 v0, v47

    move/from16 v1, v72

    if-ne v0, v1, :cond_35

    const/16 v72, 0x1

    move/from16 v0, v48

    move/from16 v1, v72

    if-ne v0, v1, :cond_35

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    const-string v73, "persist.radio.multisim.stackid"

    const-string v74, "-1"

    invoke-virtual/range {v72 .. v74}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    const/16 v73, 0x1

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_35

    .line 1148
    const-string v72, "true"

    .line 1156
    .end local v47    # "isctc":I
    .end local v48    # "isctc2":I
    .end local v63    # "sixmodeslave":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v58

    .line 1157
    .local v58, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    const-string v73, "ril.servicestate"

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {v72 .. v74}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 1161
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Broadcasting ServiceState : "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1163
    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_36

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_37

    .line 1165
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getState()I

    move-result v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    .line 1170
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-nez v72, :cond_39

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v53

    .line 1175
    .local v53, "operatorNumericForTimezone":Ljava/lang/String;
    const/16 v72, 0x8

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_38

    .line 1176
    const-string v72, "gsm.operator.numeric.real"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1178
    :cond_38
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->CalibrationTimezoneUsingMcc(Ljava/lang/String;)V

    .line 1183
    .end local v20    # "hasBrandOverride":Z
    .end local v52    # "operatorNumeric":Ljava/lang/String;
    .end local v53    # "operatorNumericForTimezone":Ljava/lang/String;
    .end local v54    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v58    # "serviceStateForProperty":I
    :cond_39
    const/16 v72, 0x2

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_3a

    .line 1184
    const-string v72, "ril.cdma.inecmmode"

    const-string v73, "false"

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1185
    .local v40, "inEcm":Ljava/lang/String;
    const-string v72, "true"

    move-object/from16 v0, v72

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_3a

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    const/16 v73, 0x1

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_80

    .line 1187
    const/16 v72, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hasMessages(I)Z

    move-result v72

    if-nez v72, :cond_7f

    .line 1188
    const/16 v72, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v72

    const-wide/16 v74, 0x38a4

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-wide/from16 v2, v74

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1189
    const-string v72, "Start the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1201
    .end local v40    # "inEcm":Ljava/lang/String;
    :cond_3a
    :goto_23
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-eqz v72, :cond_3c

    const-string v72, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-eqz v72, :cond_3c

    .line 1203
    if-eqz v25, :cond_3c

    .line 1204
    const/16 v72, 0x4

    move/from16 v0, v72

    if-lt v6, v0, :cond_81

    const/16 v72, 0x6

    move/from16 v0, v72

    if-gt v6, v0, :cond_81

    const/16 v41, 0x1

    .line 1206
    .local v41, "is1xVD":Z
    :goto_24
    if-eqz v41, :cond_3b

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v64

    .line 1208
    .restart local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v64, :cond_3b

    .line 1209
    const-string v72, "CdmaSST"

    const-string v73, "Send DAN - Stop (reboot or airplane mode)"

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/16 v72, 0x20

    move-object/from16 v0, v64

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 1213
    .end local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_3b
    const-string v72, "persist.radio.sent.dan_sms"

    const-string v73, "0"

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    .end local v41    # "is1xVD":Z
    :cond_3c
    if-nez v21, :cond_3d

    if-eqz v19, :cond_3e

    .line 1219
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1222
    :cond_3e
    if-eqz v23, :cond_3f

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1226
    :cond_3f
    if-nez v22, :cond_40

    if-eqz v26, :cond_41

    .line 1227
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1228
    const/16 v72, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_82

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    const-string v73, "iwlanAvailable"

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1236
    :cond_41
    :goto_25
    if-eqz v38, :cond_42

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1240
    :cond_42
    if-eqz v37, :cond_43

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1244
    :cond_43
    if-eqz v28, :cond_44

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1248
    :cond_44
    if-eqz v27, :cond_45

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1252
    :cond_45
    if-eqz v30, :cond_46

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1257
    :cond_46
    if-eqz v33, :cond_47

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1263
    :cond_47
    if-eqz v34, :cond_48

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSavedTime:J

    move-wide/from16 v72, v0

    const-wide/16 v74, 0x0

    cmp-long v72, v72, v74

    if-nez v72, :cond_48

    .line 1264
    const/16 v72, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hasMessages(I)Z

    move-result v72

    if-eqz v72, :cond_83

    .line 1265
    const-string v72, "REFRESH_NITZ_TIME timer is running"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1273
    :cond_48
    :goto_26
    if-eqz v34, :cond_49

    .line 1281
    :cond_49
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v12, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v73, v0

    monitor-enter v73

    .line 1283
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v15, Landroid/telephony/CellInfoLte;

    .line 1285
    .local v15, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v74, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_84

    const/4 v14, 0x1

    .line 1286
    .local v14, "cidChanged":Z
    :goto_27
    if-nez v34, :cond_4a

    if-nez v29, :cond_4a

    if-eqz v14, :cond_4b

    .line 1288
    :cond_4a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v74

    const-wide/16 v76, 0x3e8

    mul-long v68, v74, v76

    .line 1289
    .local v68, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    if-nez v72, :cond_85

    const/16 v57, 0x1

    .line 1290
    .local v57, "registered":Z
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 1292
    move/from16 v0, v57

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 1295
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v74, "pollStateDone: hasRegistered="

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v74, " hasDeregistered="

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v74, " cidChanged="

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v74, " mCellInfo="

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v74, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    .end local v57    # "registered":Z
    .end local v68    # "timeStamp":J
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1303
    monitor-exit v73
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    return-void

    .line 612
    .end local v6    # "NVT":I
    .end local v9    # "PVT":I
    .end local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v19    # "has4gHandoff":Z
    .end local v21    # "hasCdmaDataConnectionAttached":Z
    .end local v22    # "hasCdmaDataConnectionChanged":Z
    .end local v23    # "hasCdmaDataConnectionDetached":Z
    .end local v24    # "hasChanged":Z
    .end local v25    # "hasCheckDAN":Z
    .end local v26    # "hasDataRadioTechnologyChanged":Z
    .end local v27    # "hasDataRoamingOff":Z
    .end local v28    # "hasDataRoamingOn":Z
    .end local v29    # "hasDeregistered":Z
    .end local v30    # "hasLocationChanged":Z
    .end local v31    # "hasLostMultiApnSupport":Z
    .end local v32    # "hasMultiApnSupport":Z
    .end local v33    # "hasPlmnChanged":Z
    .end local v34    # "hasRegistered":Z
    .end local v35    # "hasVoiceRadioTechnologyChanged":Z
    .end local v36    # "hasVoiceRegStateChanged":Z
    .end local v37    # "hasVoiceRoamingOff":Z
    .end local v38    # "hasVoiceRoamingOn":Z
    .end local v65    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v67    # "tm":Landroid/telephony/TelephonyManager;
    .end local v70    # "tss":Landroid/telephony/ServiceState;
    :cond_4c
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Update LteImsVoiceAvail: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, " (DataRegState: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ", DataRadioTechnology: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ", SnapshotStatus: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ")"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_4d
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 622
    .restart local v34    # "hasRegistered":Z
    :cond_4e
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 625
    .restart local v29    # "hasDeregistered":Z
    :cond_4f
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 629
    .restart local v21    # "hasCdmaDataConnectionAttached":Z
    :cond_50
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 633
    .restart local v23    # "hasCdmaDataConnectionDetached":Z
    :cond_51
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 636
    .restart local v22    # "hasCdmaDataConnectionChanged":Z
    :cond_52
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 639
    .restart local v35    # "hasVoiceRadioTechnologyChanged":Z
    :cond_53
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 642
    .restart local v26    # "hasDataRadioTechnologyChanged":Z
    :cond_54
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 644
    .restart local v24    # "hasChanged":Z
    :cond_55
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 646
    .restart local v38    # "hasVoiceRoamingOn":Z
    :cond_56
    const/16 v37, 0x0

    goto/16 :goto_a

    .line 648
    .restart local v37    # "hasVoiceRoamingOff":Z
    :cond_57
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 650
    .restart local v28    # "hasDataRoamingOn":Z
    :cond_58
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 652
    .restart local v27    # "hasDataRoamingOff":Z
    :cond_59
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 654
    .restart local v30    # "hasLocationChanged":Z
    :cond_5a
    const/16 v36, 0x0

    goto/16 :goto_e

    .line 678
    .restart local v6    # "NVT":I
    .restart local v9    # "PVT":I
    .restart local v25    # "hasCheckDAN":Z
    .restart local v33    # "hasPlmnChanged":Z
    .restart local v36    # "hasVoiceRegStateChanged":Z
    :cond_5b
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 686
    .restart local v19    # "has4gHandoff":Z
    :cond_5c
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 697
    :cond_5d
    const/16 v32, 0x0

    goto/16 :goto_11

    .line 704
    .restart local v32    # "hasMultiApnSupport":Z
    :cond_5e
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 709
    :cond_5f
    const/16 v31, 0x0

    goto/16 :goto_13

    .line 714
    .restart local v31    # "hasLostMultiApnSupport":Z
    :cond_60
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_e

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v7

    .line 719
    .local v7, "NewRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    .line 721
    .local v10, "PreRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v8

    .line 722
    .local v8, "NewVoiceTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v11

    .line 724
    .local v11, "PreVoiceTech":I
    const/16 v72, 0x4

    move/from16 v0, v72

    if-lt v8, v0, :cond_61

    const/16 v72, 0x8

    move/from16 v0, v72

    if-gt v8, v0, :cond_61

    const/16 v42, 0x1

    .line 727
    .local v42, "is1xVoiceDomain":Z
    :goto_29
    if-eqz v42, :cond_e

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v64

    .line 729
    .restart local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    invoke-virtual/range {v64 .. v64}, Lcom/android/internal/telephony/SMSDispatcher;->restartDanTimer()Z

    goto/16 :goto_14

    .line 724
    .end local v42    # "is1xVoiceDomain":Z
    .end local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_61
    const/16 v42, 0x0

    goto :goto_29

    .line 811
    .end local v7    # "NewRadioTech":I
    .end local v8    # "NewVoiceTech":I
    .end local v10    # "PreRadioTech":I
    .end local v11    # "PreVoiceTech":I
    .restart local v13    # "canSend":Z
    .restart local v44    # "isHybrid":Z
    .restart local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v67    # "tm":Landroid/telephony/TelephonyManager;
    :cond_62
    const-string v72, "CdmaSST"

    const-string v73, "getLegacyIms is not exist"

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 861
    .end local v13    # "canSend":Z
    .end local v44    # "isHybrid":Z
    .end local v64    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v65    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v70    # "tss":Landroid/telephony/ServiceState;
    :cond_63
    const/16 v72, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    goto/16 :goto_16

    .line 876
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v72, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v72

    if-eqz v72, :cond_65

    const/16 v20, 0x1

    goto/16 :goto_17

    :cond_65
    const/16 v20, 0x0

    goto/16 :goto_17

    .line 888
    .restart local v17    # "eriText":Ljava/lang/String;
    .restart local v20    # "hasBrandOverride":Z
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v72

    const/16 v73, 0x3

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_68

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    if-eqz v72, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 890
    :goto_2a
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v72

    if-eqz v72, :cond_1c

    .line 893
    const-string v72, "ro.cdma.home.operator.alpha"

    invoke-static/range {v72 .. v72}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_18

    .line 889
    :cond_67
    const/16 v17, 0x0

    goto :goto_2a

    .line 895
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-eqz v72, :cond_1c

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    const v73, 0x10400d7

    invoke-virtual/range {v72 .. v73}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_18

    .line 916
    .restart local v71    # "useERItext":Z
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-eqz v72, :cond_21

    .line 923
    const/16 v72, 0xe

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_6b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isImsRegistered()Z

    move-result v72

    if-eqz v72, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v72

    if-nez v72, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_6b

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v17

    .line 930
    :goto_2b
    const-string v72, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_6a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v72

    const-string v73, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v72 .. v73}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v72

    if-nez v72, :cond_6a

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 934
    :cond_6a
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Set OperatorAlphaLong: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ", Cause: ServiceState is "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Landroid/telephony/ServiceState;->getState()I

    move-result v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 928
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v72

    const v73, 0x10400d7

    invoke-virtual/range {v72 .. v73}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v72

    invoke-interface/range {v72 .. v72}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2b

    .line 938
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v71    # "useERItext":Z
    :cond_6c
    const/16 v72, 0xc

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getState()I

    move-result v72

    if-nez v72, :cond_21

    .line 939
    const-string v72, "No ERI information"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v51

    .line 941
    .local v51, "mccMnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, ""

    const-string v74, ""

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    move-object/from16 v2, v74

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 981
    .end local v51    # "mccMnc":Ljava/lang/String;
    .restart local v16    # "displayname":Ljava/lang/String;
    :cond_6d
    const/16 v72, 0x0

    goto/16 :goto_1a

    .line 990
    .restart local v45    # "isLteRoam":Ljava/lang/Boolean;
    .restart local v66    # "tempname":Ljava/lang/String;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkIsSprintSimCard()Z

    move-result v72

    if-nez v72, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v72

    const/16 v73, 0xe

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_27

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    if-nez v72, :cond_27

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v66

    .line 993
    if-eqz v66, :cond_6f

    .line 994
    move-object/from16 v16, v66

    .line 996
    :cond_6f
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "non sprint sim + LTE home displayname= "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 999
    :cond_70
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    if-eqz v72, :cond_27

    .line 1000
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v66

    .line 1002
    if-nez v66, :cond_71

    .line 1003
    const-string v16, "Roam"

    .line 1006
    :goto_2c
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "LTE roam displayname= "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1005
    :cond_71
    move-object/from16 v16, v66

    goto :goto_2c

    .line 1021
    .restart local v55    # "rat":I
    :cond_72
    const/16 v46, 0x0

    goto/16 :goto_1c

    .line 1025
    :cond_73
    const-string v72, "gsm.operator.numeric.real"

    const-string v73, ""

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1026
    .restart local v51    # "mccMnc":Ljava/lang/String;
    if-eqz v51, :cond_74

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v72

    const/16 v73, 0x3

    move/from16 v0, v72

    move/from16 v1, v73

    if-le v0, v1, :cond_74

    const/16 v72, 0x0

    const/16 v73, 0x3

    move-object/from16 v0, v51

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v50

    .line 1028
    .local v50, "mcc":Ljava/lang/String;
    :goto_2d
    if-eqz v50, :cond_75

    const-string v72, "310"

    move-object/from16 v0, v50

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v72

    if-ltz v72, :cond_75

    const-string v72, "316"

    move-object/from16 v0, v50

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v72

    if-gtz v72, :cond_75

    .line 1029
    const-string v72, "CdmaSST"

    const-string v73, "RoamingReduction false"

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setRoamingReduction(Z)V

    goto/16 :goto_1d

    .line 1026
    .end local v50    # "mcc":Ljava/lang/String;
    :cond_74
    const/16 v50, 0x0

    goto :goto_2d

    .line 1032
    .restart local v50    # "mcc":Ljava/lang/String;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v73

    const/16 v74, 0x1

    invoke-virtual/range {v72 .. v74}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v62

    .line 1033
    .local v62, "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v62, :cond_76

    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v72

    check-cast v72, Lcom/android/internal/telephony/uicc/SIMRecords;

    move-object/from16 v61, v72

    .line 1035
    .local v61, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :goto_2e
    if-eqz v61, :cond_77

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOplmnList:Ljava/util/ArrayList;

    move-object/from16 v72, v0

    if-eqz v72, :cond_77

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOplmnList:Ljava/util/ArrayList;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v72

    if-nez v72, :cond_77

    const/16 v43, 0x1

    .line 1037
    .local v43, "isAbsentInOplmnList":Z
    :goto_2f
    const-string v72, "CdmaSST"

    new-instance v73, Ljava/lang/StringBuilder;

    invoke-direct/range {v73 .. v73}, Ljava/lang/StringBuilder;-><init>()V

    const-string v74, "RoamingReduction: "

    invoke-virtual/range {v73 .. v74}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v73

    move-object/from16 v0, v73

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v73

    invoke-virtual/range {v73 .. v73}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, v72

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoamingReduction(Z)V

    goto/16 :goto_1d

    .line 1033
    .end local v43    # "isAbsentInOplmnList":Z
    .end local v61    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_76
    const/16 v61, 0x0

    goto :goto_2e

    .line 1035
    .restart local v61    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_77
    const/16 v43, 0x0

    goto :goto_2f

    .line 1042
    .end local v50    # "mcc":Ljava/lang/String;
    .end local v51    # "mccMnc":Ljava/lang/String;
    .end local v55    # "rat":I
    .end local v61    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    .end local v62    # "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_78
    const-string v72, "CdmaSST"

    const-string v73, "RoamingReduction False"

    invoke-static/range {v72 .. v73}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setRoamingReduction(Z)V

    goto/16 :goto_1d

    .line 1057
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v45    # "isLteRoam":Ljava/lang/Boolean;
    .end local v66    # "tempname":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v72, v0

    if-eqz v72, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v72

    sget-object v73, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v72

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v72, v0

    if-eqz v72, :cond_2e

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1059
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "Set OperatorAlphaLong: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    const-string v73, ", Cause: SPN "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1069
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v72

    const/16 v73, 0x1

    move/from16 v0, v72

    move/from16 v1, v73

    if-ne v0, v1, :cond_30

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, " "

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1080
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v72, v0

    const-string v73, "XFINITY Mobile"

    invoke-virtual/range {v72 .. v73}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 1104
    .restart local v52    # "operatorNumeric":Ljava/lang/String;
    .restart local v54    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_7c
    const-string v49, ""

    .line 1105
    .local v49, "isoCountryCode":Ljava/lang/String;
    const/16 v72, 0x0

    const/16 v73, 0x3

    move-object/from16 v0, v52

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v50

    .line 1107
    .restart local v50    # "mcc":Ljava/lang/String;
    const/16 v72, 0x0

    const/16 v73, 0x3

    :try_start_1
    move-object/from16 v0, v52

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v49

    .line 1115
    :goto_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    invoke-virtual/range {v72 .. v72}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v72

    move-object/from16 v0, v67

    move/from16 v1, v72

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1116
    const/16 v72, 0x1

    move/from16 v0, v72

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v73, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v52

    move-object/from16 v3, v54

    move/from16 v4, v73

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v72

    if-eqz v72, :cond_33

    .line 1122
    const/16 v72, 0x8

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v72

    if-eqz v72, :cond_7d

    .line 1123
    const-string v72, "gsm.operator.numeric.real"

    const-string v73, ""

    invoke-static/range {v72 .. v73}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1124
    .local v56, "realOperatorNumeric":Ljava/lang/String;
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v72

    const/16 v73, 0x2

    move/from16 v0, v72

    move/from16 v1, v73

    if-le v0, v1, :cond_7d

    .line 1126
    const/16 v72, 0x0

    const/16 v73, 0x3

    :try_start_2
    move-object/from16 v0, v56

    move/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    invoke-static/range {v72 .. v72}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v49

    .line 1134
    .end local v56    # "realOperatorNumeric":Ljava/lang/String;
    :cond_7d
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1109
    :catch_0
    move-exception v18

    .line 1110
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "countryCodeForMcc error"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1111
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 1112
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "countryCodeForMcc error"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 1127
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v56    # "realOperatorNumeric":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 1128
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "countryCodeForMcc error"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_31

    .line 1129
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    .line 1130
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v72, Ljava/lang/StringBuilder;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuilder;-><init>()V

    const-string v73, "countryCodeForMcc error"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1138
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v49    # "isoCountryCode":Ljava/lang/String;
    .end local v50    # "mcc":Ljava/lang/String;
    .end local v56    # "realOperatorNumeric":Ljava/lang/String;
    :cond_7e
    const/16 v72, 0x0

    goto/16 :goto_22

    .line 1191
    .end local v20    # "hasBrandOverride":Z
    .end local v52    # "operatorNumeric":Ljava/lang/String;
    .end local v54    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v40    # "inEcm":Ljava/lang/String;
    :cond_7f
    const-string v72, "ExitEmergencyCallbackMode timer is running"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1194
    :cond_80
    const/16 v72, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->removeMessages(I)V

    .line 1195
    const-string v72, "Cancel the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1204
    .end local v40    # "inEcm":Ljava/lang/String;
    :cond_81
    const/16 v41, 0x0

    goto/16 :goto_24

    .line 1232
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v72, v0

    const/16 v73, 0x0

    invoke-virtual/range {v72 .. v73}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1266
    :cond_83
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v72

    if-eqz v72, :cond_48

    .line 1267
    const/16 v72, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v72

    const-wide/16 v74, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-wide/from16 v2, v74

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1268
    const-string v72, "Start REFRESH_NITZ_TIME timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 1285
    .restart local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "cil":Landroid/telephony/CellInfoLte;
    :cond_84
    const/4 v14, 0x0

    goto/16 :goto_27

    .line 1289
    .restart local v14    # "cidChanged":Z
    .restart local v68    # "timeStamp":J
    :cond_85
    const/16 v57, 0x0

    goto/16 :goto_28

    .line 1303
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v68    # "timeStamp":J
    :catchall_0
    move-exception v72

    :try_start_3
    monitor-exit v73
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v72
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 1431
    monitor-enter p0

    .line 1432
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_2

    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupBeforeDeactivePDP()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 1477
    :goto_0
    return-void

    .line 1439
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1442
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1447
    :cond_1
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1448
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1476
    .end local v0    # "dds":I
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1451
    .restart local v0    # "dds":I
    :cond_3
    :try_start_1
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1452
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1454
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 1459
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1461
    :cond_4
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1462
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1463
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1465
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1466
    const-string v2, "Wait upto 10s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1468
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_1

    .line 1470
    :cond_5
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1472
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1422
    return-void
.end method
