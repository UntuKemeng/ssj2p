.class Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsAnalyzer"
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_PERIOD:I = 0x2710

.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final GOOD_RX_VALID_DURATION:I = 0x493e0

.field private static final LEAST_AGGRESSIVE_MODE_HIGH_THRESHOLD_INTERVAL:I = 0x493e0

.field private static final LEAST_AGGRESSIVE_MODE_QC_INTERVAL:I = 0x4e20

.field private static final MAX_OPTION_TARGET_RSSI_DELTA:I = 0x5

.field private static final MIN_STAY_TIME_AFTER_RSSI_CHECK:I = 0x1388

.field private static final OPTION_RSSI_INCREMENT_INTERVAL:I = 0xea60

.field private static final PERIODIC_DNS_CHECK_INTERVAL:I = 0xea60

.field private static final RSSI_AVERAGE_WINDOW_SIZE:I = 0x3

.field private static final RSSI_THRESHOLD_LOW_HIGH_DELTA:I = 0x3

.field private static final RSSI_THRESHOLD_UPDATE_DECREMENT_DELTA:I = 0x3

.field private static final RSSI_THRESHOLD_UPDATE_SUCCESS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.NetworkStatsAnalyzer"


# instance fields
.field private mAggressiveModeQCTriggerTime:J

.field private mAggressiveModeThresholdUpdateTime:J

.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRxStats:I

.field private mDnsQueried:Z

.field private mGoodRxRate:I

.field private mGoodRxRssi:I

.field private mGoodRxTime:J

.field private mLastDnsCheckTime:J

.field private mLastRssi:I

.field private mMaybeUseStreaming:I

.field private mPollingStarted:Z

.field private mPublicDnsCheckProcess:Z

.field private mQCCancelledByScanOrDhcp:Z

.field private mQcSuccessCountAtCurrentThreshold:I

.field private mRssiAverageWindow:[I

.field private mRssiIndex:I

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mSkipRemainingDnsResults:Z

.field private mStayingLowMCS:I

.field private mTxBytes:J

.field private mTxPackets:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private triggeredByAggressiveMode:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3943
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 3944
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3903
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    .line 3904
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    .line 3905
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    .line 3906
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    .line 3907
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    .line 3908
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 3909
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 3910
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 3911
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    .line 3913
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 3914
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 3915
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 3916
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 3919
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 3920
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 3921
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 3932
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    .line 3933
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    .line 3934
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    .line 3935
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    .line 3936
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiAverageWindow:[I

    .line 3937
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiIndex:I

    .line 3939
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    .line 3941
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastRssi:I

    .line 3945
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.SingDnsChecker"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 3946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    .line 3947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    .line 3948
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    .prologue
    .line 3894
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method


# virtual methods
.method checkPublicDns()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3951
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 3952
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3953
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    .line 3954
    return-void
.end method

.method getCurrentRxStats()I
    .locals 3

    .prologue
    .line 3985
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRxStats : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 61
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 3999
    .local v36, "now":J
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 4541
    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore msg id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    :cond_0
    :goto_0
    return-void

    .line 4001
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-nez v4, :cond_0

    .line 4002
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    .line 4003
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    .line 4004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->initNetworkStatHistory()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 4005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastRssi:I

    goto :goto_0

    .line 4009
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPollingStarted : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-eqz v4, :cond_0

    .line 4012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-result-object v60

    .line 4013
    .local v60, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v50

    .line 4014
    .local v50, "rssi":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastRssi:I

    add-int v4, v4, v50

    div-int/lit8 v31, v4, 0x2

    .line 4015
    .local v31, "mrssi":I
    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastRssi:I

    .line 4016
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rssi : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "linkspeed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :cond_3
    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    const/4 v5, 0x6

    if-gt v4, v5, :cond_1d

    .line 4020
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    .line 4025
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-lez v4, :cond_5

    .line 4027
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v4, v36, v4

    const-wide/32 v8, 0x493e0

    cmp-long v4, v4, v8

    if-gez v4, :cond_4

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-lt v4, v5, :cond_4

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-ne v4, v5, :cond_5

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    add-int/lit8 v5, v5, -0x5

    if-ge v4, v5, :cond_5

    .line 4031
    :cond_4
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 4035
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    sub-long v4, v36, v4

    const-wide/32 v8, 0x1b7740

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    .line 4036
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 4037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v8, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 4038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14002(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4041
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v46, v0

    .local v46, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v40, v0

    .line 4042
    .local v40, "preRxPkts":J
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    .line 4043
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    .line 4044
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    sub-long v14, v4, v40

    .line 4045
    .local v14, "diffRx":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    sub-long v18, v4, v46

    .line 4046
    .local v18, "diffTx":J
    long-to-int v4, v14

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    .line 4047
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diffRx : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    :cond_7
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diffTx : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v44, v0

    .local v44, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v42, v0

    .line 4051
    .local v42, "preRxbyte":J
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    .line 4052
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    .line 4053
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    sub-long v16, v4, v42

    .line 4054
    .local v16, "diffRxBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    sub-long v20, v4, v44

    .line 4055
    .local v20, "diffTxBytes":J
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diffRxBytes : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_9
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "diffTxBytes : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_1e

    div-long v4, v16, v14

    :goto_2
    long-to-int v0, v4

    move/from16 v52, v0

    .line 4059
    .local v52, "rxBytesPerPacket":I
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_1f

    div-long v4, v20, v18

    :goto_3
    long-to-int v0, v4

    move/from16 v58, v0

    .line 4060
    .local v58, "txBytesPerPacket":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rxBytesPerPacket : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "txBytesPerPacket : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->addNetworkStatHistory(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4067
    :cond_d
    const/16 v32, 0x0

    .line 4068
    .local v32, "needCheckByNoRx":Z
    const/16 v33, 0x0

    .line 4069
    .local v33, "needCheckByPoorRx":Z
    const/16 v34, 0x0

    .line 4071
    .local v34, "needCheckInternetIsAlive":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_e

    .line 4072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 4075
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    long-to-int v7, v14

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4077
    const/16 v4, 0x596

    move/from16 v0, v52

    if-le v0, v4, :cond_20

    const/16 v29, 0x1

    .line 4078
    .local v29, "isStreaming":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 4079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    move/from16 v0, v31

    move-wide/from16 v1, v16

    move/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateMaxThroughput(IJZ)V

    .line 4082
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    if-nez v29, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v8, v4

    cmp-long v4, v16, v8

    if-gez v4, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v4, v4, 0x14

    int-to-long v8, v4

    cmp-long v4, v16, v8

    if-ltz v4, :cond_21

    :cond_11
    const/4 v4, 0x1

    :goto_5
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4085
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mInAggGoodStateNow : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    if-eqz v4, :cond_13

    if-eqz v60, :cond_13

    .line 4088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateGoodRssi(I)V

    .line 4092
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 4093
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 4094
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Start Rechecking Link Quality - Previous QC cancelled because (Scan / DHCP session) and QC overlapped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 4098
    :cond_15
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaybeUseStreaming : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-nez v4, :cond_1c

    .line 4100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v35

    .line 4101
    .local v35, "ongoingId":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-nez v4, :cond_17

    if-lez v35, :cond_25

    .line 4102
    :cond_17
    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "waiting dns responses or the quality result now!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4104
    :cond_18
    const/16 v53, 0x0

    .line 4105
    .local v53, "stopQC":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 4106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v53, 0x1

    .line 4110
    :cond_19
    :goto_6
    if-eqz v53, :cond_1c

    .line 4111
    if-lez v35, :cond_1b

    .line 4112
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Good Rx!, don\'t need to keep evaluating quality! - id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    mul-int/lit8 v57, v4, 0x2

    .line 4115
    .local v57, "thresholdBytes":I
    :goto_7
    move/from16 v0, v57

    int-to-long v4, v0

    cmp-long v4, v16, v4

    if-lez v4, :cond_24

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v49, v0

    .line 4116
    .local v49, "result":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21026

    const/4 v7, -0x1

    move/from16 v0, v49

    invoke-static {v4, v5, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4118
    .end local v49    # "result":I
    .end local v57    # "thresholdBytes":I
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-eqz v4, :cond_1c

    .line 4119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 4120
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 4121
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 4329
    .end local v35    # "ongoingId":I
    .end local v53    # "stopQC":Z
    :cond_1c
    :goto_9
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 4330
    const v4, 0x21035

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    .line 4332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 4333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 4334
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Do nothing in AGG good state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4022
    .end local v14    # "diffRx":J
    .end local v16    # "diffRxBytes":J
    .end local v18    # "diffTx":J
    .end local v20    # "diffTxBytes":J
    .end local v29    # "isStreaming":Z
    .end local v32    # "needCheckByNoRx":Z
    .end local v33    # "needCheckByPoorRx":Z
    .end local v34    # "needCheckInternetIsAlive":Z
    .end local v40    # "preRxPkts":J
    .end local v42    # "preRxbyte":J
    .end local v44    # "preTxBytes":J
    .end local v46    # "preTxPkts":J
    .end local v52    # "rxBytesPerPacket":I
    .end local v58    # "txBytesPerPacket":I
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    goto/16 :goto_1

    .line 4058
    .restart local v14    # "diffRx":J
    .restart local v16    # "diffRxBytes":J
    .restart local v18    # "diffTx":J
    .restart local v20    # "diffTxBytes":J
    .restart local v40    # "preRxPkts":J
    .restart local v42    # "preRxbyte":J
    .restart local v44    # "preTxBytes":J
    .restart local v46    # "preTxPkts":J
    :cond_1e
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .line 4059
    .restart local v52    # "rxBytesPerPacket":I
    :cond_1f
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 4077
    .restart local v32    # "needCheckByNoRx":Z
    .restart local v33    # "needCheckByPoorRx":Z
    .restart local v34    # "needCheckInternetIsAlive":Z
    .restart local v58    # "txBytesPerPacket":I
    :cond_20
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 4082
    .restart local v29    # "isStreaming":Z
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 4107
    .restart local v35    # "ongoingId":I
    .restart local v53    # "stopQC":Z
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v14, v4

    if-ltz v4, :cond_19

    const/16 v4, 0x1f4

    move/from16 v0, v52

    if-le v0, v4, :cond_19

    .line 4108
    const/16 v53, 0x1

    goto/16 :goto_6

    .line 4113
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    move/from16 v57, v0

    goto/16 :goto_7

    .restart local v57    # "thresholdBytes":I
    :cond_24
    move/from16 v49, v57

    .line 4115
    goto/16 :goto_8

    .line 4125
    .end local v53    # "stopQC":Z
    .end local v57    # "thresholdBytes":I
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 4126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4127
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 4128
    if-eqz v29, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 4129
    :cond_26
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v8, 0x1b58

    cmp-long v4, v4, v8

    if-lez v4, :cond_1c

    const-wide/16 v4, 0x1b58

    sub-long v4, v36, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_9

    .line 4131
    :cond_27
    if-nez v34, :cond_2b

    if-nez v32, :cond_2b

    if-nez v33, :cond_2b

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_28

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_2b

    :cond_28
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v8, v36, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled()Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v4, 0x2710

    :goto_a
    int-to-long v4, v4

    cmp-long v4, v8, v4

    if-lez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2b

    .line 4134
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 4135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PERIODIC DNS CHECK TRIGGER (SIMPLE CONNECTION TEST) - Last DNS check was "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v8, v36, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " seconds ago."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4138
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_2a

    .line 4139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x20

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4141
    :cond_2a
    const/16 v34, 0x1

    .line 4144
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2d

    .line 4145
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 4146
    const v4, 0x21035

    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4131
    :cond_2c
    const v4, 0xea60

    goto :goto_a

    .line 4150
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNoRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v14, v4

    if-lez v4, :cond_33

    .line 4151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x56f4

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v14, v4

    if-gez v4, :cond_32

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_32

    .line 4152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4156
    :goto_b
    const/16 v4, 0x38

    move/from16 v0, v58

    if-ge v4, v0, :cond_30

    const/16 v4, 0x49

    move/from16 v0, v58

    if-ge v0, v4, :cond_30

    .line 4157
    const-wide/16 v4, 0x64

    mul-long v4, v4, v18

    div-long/2addr v4, v14

    long-to-int v0, v4

    move/from16 v59, v0

    .line 4158
    .local v59, "txProportionToRx":I
    const/16 v4, 0x5a

    move/from16 v0, v59

    if-ge v4, v0, :cond_30

    const/16 v4, 0x6e

    move/from16 v0, v59

    if-ge v0, v4, :cond_30

    add-int/lit8 v4, v58, -0xa

    move/from16 v0, v52

    if-ge v4, v0, :cond_30

    move/from16 v0, v52

    move/from16 v1, v58

    if-gt v0, v1, :cond_30

    .line 4170
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "DNS queries and abnormal responses"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_2f

    .line 4172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x21

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4174
    :cond_2f
    const/16 v34, 0x1

    .line 4218
    .end local v59    # "txProportionToRx":I
    :cond_30
    :goto_c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCumulativePoorRx.size : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_44

    .line 4220
    const/16 v54, 0x0

    .line 4221
    .local v54, "sum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v51

    .local v51, "rx":I
    add-int v54, v54, v51

    goto :goto_d

    .line 4154
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v51    # "rx":I
    .end local v54    # "sum":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_b

    .line 4178
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v4, :cond_3b

    .line 4185
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "No [SYN,ACK] or No subsequent transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    :cond_34
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_39

    .line 4187
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "suspicious No Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_36

    .line 4189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x22

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4191
    :cond_36
    const/16 v34, 0x1

    .line 4198
    :goto_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 4209
    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_30

    .line 4210
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "could be in No service state during streaming!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_38

    .line 4212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x23

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4214
    :cond_38
    const/16 v34, 0x1

    goto/16 :goto_c

    .line 4193
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3a

    .line 4194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1f

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4196
    :cond_3a
    const/16 v32, 0x1

    goto :goto_e

    .line 4199
    :cond_3b
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_3d

    .line 4200
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-nez v4, :cond_3c

    .line 4201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    .line 4203
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    long-to-int v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 4206
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    .line 4222
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v54    # "sum":I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    mul-int/lit8 v4, v4, 0x3

    move/from16 v0, v54

    if-ge v0, v4, :cond_58

    .line 4223
    const/16 v33, 0x1

    .line 4224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3f

    .line 4225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x26

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4227
    :cond_3f
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_10
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_41

    .line 4228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    if-lt v4, v5, :cond_51

    .line 4229
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_40

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "It\'s hard to say poor rx"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_40
    const/16 v33, 0x0

    .line 4234
    :cond_41
    if-eqz v33, :cond_57

    .line 4235
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_52

    .line 4236
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_42

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "suspicious Poor Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_43

    .line 4238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x24

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4240
    :cond_43
    const/16 v34, 0x1

    .line 4241
    const/16 v33, 0x0

    .line 4266
    .end local v24    # "i":I
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v54    # "sum":I
    :cond_44
    :goto_11
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v36, v4

    const-wide/16 v8, 0x5dc

    cmp-long v4, v4, v8

    if-lez v4, :cond_59

    const-wide/16 v4, 0x2

    cmp-long v4, v18, v4

    if-ltz v4, :cond_59

    const/16 v4, 0x3b

    move/from16 v0, v58

    if-gt v4, v0, :cond_59

    const/16 v4, 0x3e

    move/from16 v0, v58

    if-gt v0, v4, :cond_59

    cmp-long v4, v16, v20

    if-lez v4, :cond_45

    const/16 v4, 0x1f4

    move/from16 v0, v52

    if-ge v0, v4, :cond_59

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1cfc

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_59

    .line 4269
    :cond_45
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "SYN packets might be transmitted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :cond_46
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 4275
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v48, v0

    .line 4276
    .local v48, "prevStreaming":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v14, v4

    if-lez v4, :cond_5a

    if-eqz v29, :cond_5a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    add-int/lit8 v4, v4, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 4278
    const/4 v4, 0x5

    move/from16 v0, v48

    if-lt v0, v4, :cond_49

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    if-nez v4, :cond_49

    .line 4279
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_47

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "need to check if there are problems on streaming service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_48

    .line 4281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x23

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4283
    :cond_48
    const/16 v34, 0x1

    .line 4286
    :cond_49
    if-nez v33, :cond_4a

    if-eqz v32, :cond_4c

    .line 4287
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4288
    const/16 v34, 0x0

    .line 4289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-wide/from16 v0, v36

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19902(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 4290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    sub-long v4, v36, v4

    const-wide/16 v8, 0x1388

    cmp-long v4, v4, v8

    if-lez v4, :cond_5b

    .line 4291
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 4292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_4b

    .line 4293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4295
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 4305
    :cond_4c
    :goto_14
    if-eqz v34, :cond_1c

    .line 4306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    .line 4308
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 4310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 4311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xbb8

    .line 4313
    .local v6, "timeoutMS":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled()Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 4314
    const/16 v6, 0x5dc

    .line 4316
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_50

    .line 4317
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "DNS List is empty, need to check quality"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4318
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_4f

    .line 4319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4321
    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 4323
    :cond_50
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_9

    .line 4227
    .end local v6    # "timeoutMS":I
    .end local v48    # "prevStreaming":I
    .restart local v24    # "i":I
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v54    # "sum":I
    :cond_51
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_10

    .line 4243
    :cond_52
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_53

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Cumulative Rx is in poor status!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4244
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled()Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 4245
    const/16 v33, 0x0

    .line 4246
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_55

    .line 4247
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_54

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "staying in poor streaming state on AGG mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4248
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x24

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_11

    .line 4251
    :cond_55
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "check dns in poor rx status of AGG"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    :cond_56
    const/16 v34, 0x1

    goto/16 :goto_11

    .line 4257
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_11

    .line 4261
    .end local v24    # "i":I
    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_11

    .line 4272
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v54    # "sum":I
    :cond_59
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto/16 :goto_12

    .line 4276
    .restart local v48    # "prevStreaming":I
    :cond_5a
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 4297
    :cond_5b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "The interval between evaluations is too short!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_5d

    .line 4299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x25

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4301
    :cond_5d
    const/16 v34, 0x1

    goto/16 :goto_14

    .line 4337
    .end local v35    # "ongoingId":I
    .end local v48    # "prevStreaming":I
    :cond_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastPoorRssi:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20300(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v4

    move/from16 v0, v31

    if-gt v0, v4, :cond_65

    .line 4338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_63

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v20, v4

    if-gez v4, :cond_63

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mMaxThroughput:[J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20400(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)[J

    move-result-object v4

    move/from16 v0, v31

    neg-int v5, v0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    cmp-long v4, v4, v8

    if-gez v4, :cond_63

    .line 4341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14708(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .line 4342
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStayingPoorRssi : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_5f
    :goto_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_62

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_62

    .line 4353
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Staying 3 sec under 6Mbps in streaming state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4354
    :cond_60
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_61

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Staying 3 sec under 6Mbps"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4355
    :cond_61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x24

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4361
    :cond_62
    if-eqz v60, :cond_0

    .line 4362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiAverageWindow:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiIndex:I

    rem-int/lit8 v5, v5, 0x3

    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    aput v7, v4, v5

    .line 4363
    const/4 v13, 0x0

    .line 4364
    .local v13, "currentRssi":I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_16
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_66

    .line 4365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRssiAverageWindow:[I

    aget v4, v4, v24

    add-int/2addr v13, v4

    .line 4364
    add-int/lit8 v24, v24, 0x1

    goto :goto_16

    .line 4344
    .end local v13    # "currentRssi":I
    .end local v24    # "i":I
    :cond_63
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "reset poor rssi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v4

    const/4 v5, 0x5

    # -= operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastPoorRssi:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20320(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;I)I

    goto/16 :goto_15

    .line 4349
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_15

    .line 4367
    .restart local v13    # "currentRssi":I
    .restart local v24    # "i":I
    :cond_66
    div-int/lit8 v13, v13, 0x3

    .line 4368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    if-nez v4, :cond_0

    .line 4370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    move/from16 v56, v0

    .line 4371
    .local v56, "targetRssiLow":I
    add-int/lit8 v55, v56, 0x3

    .line 4373
    .local v55, "targetRssiHigh":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_67

    .line 4374
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    .line 4375
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    .line 4378
    :cond_67
    move/from16 v0, v56

    if-le v13, v0, :cond_68

    move/from16 v0, v55

    if-gt v13, v0, :cond_6b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    sub-long v4, v36, v4

    const-wide/32 v8, 0x493e0

    cmp-long v4, v4, v8

    if-lez v4, :cond_6b

    .line 4381
    :cond_68
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    sub-long v4, v36, v4

    const-wide/16 v8, 0x4e20

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 4382
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_69

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@R - D_COND - QCT - CR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", TRL: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", TRH: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (T "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    sub-long v8, v36, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sec ago)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (U "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    sub-long v8, v36, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sec ago)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    :cond_69
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[@R]\nQC Trigger - currRssi: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\ntargetRssiLow: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\ntargetRssiHigh: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4392
    :cond_6a
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    .line 4393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x28

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4394
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    .line 4395
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    .line 4396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    .line 4401
    :cond_6b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    sub-long v4, v36, v4

    long-to-int v4, v4

    const v5, 0xea60

    div-int v27, v4, v5

    .line 4403
    .local v27, "incrementalRssi":I
    invoke-virtual/range {v60 .. v60}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    const/16 v5, 0xfa0

    if-le v4, v5, :cond_6e

    const/16 v28, 0x1

    .line 4404
    .local v28, "is5G":Z
    :goto_17
    if-eqz v28, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode5G:I

    :goto_18
    add-int/lit8 v30, v4, 0x5

    .line 4406
    .local v30, "maxOptionTargetRssi":I
    add-int v4, v56, v27

    move/from16 v0, v30

    if-le v4, v0, :cond_70

    move/from16 v38, v30

    .line 4408
    .local v38, "optionTargetRssi":I
    :goto_19
    move/from16 v0, v38

    if-gt v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    sub-long v4, v36, v4

    const-wide/16 v8, 0x4e20

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 4410
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@R - O_COND - QCT - CR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", OTR: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (T "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    sub-long v8, v36, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sec ago)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    :cond_6c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[@R]\nQC Trigger - currRssi: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\noptionTargetRssi: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4417
    :cond_6d
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    .line 4418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x28

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4419
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    .line 4420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    .line 4403
    .end local v28    # "is5G":Z
    .end local v30    # "maxOptionTargetRssi":I
    .end local v38    # "optionTargetRssi":I
    :cond_6e
    const/16 v28, 0x0

    goto/16 :goto_17

    .line 4404
    .restart local v28    # "is5G":Z
    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggMode2G:I

    goto/16 :goto_18

    .line 4406
    .restart local v30    # "maxOptionTargetRssi":I
    :cond_70
    add-int v38, v56, v27

    goto/16 :goto_19

    .line 4429
    .end local v13    # "currentRssi":I
    .end local v14    # "diffRx":J
    .end local v16    # "diffRxBytes":J
    .end local v18    # "diffTx":J
    .end local v20    # "diffTxBytes":J
    .end local v24    # "i":I
    .end local v27    # "incrementalRssi":I
    .end local v28    # "is5G":Z
    .end local v29    # "isStreaming":Z
    .end local v30    # "maxOptionTargetRssi":I
    .end local v31    # "mrssi":I
    .end local v32    # "needCheckByNoRx":Z
    .end local v33    # "needCheckByPoorRx":Z
    .end local v34    # "needCheckInternetIsAlive":Z
    .end local v40    # "preRxPkts":J
    .end local v42    # "preRxbyte":J
    .end local v44    # "preTxBytes":J
    .end local v46    # "preTxPkts":J
    .end local v50    # "rssi":I
    .end local v52    # "rxBytesPerPacket":I
    .end local v55    # "targetRssiHigh":I
    .end local v56    # "targetRssiLow":I
    .end local v58    # "txBytesPerPacket":I
    .end local v60    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :sswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    .line 4430
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    .line 4431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4432
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    .line 4433
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    .line 4434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 4437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 4438
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 4439
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    .line 4440
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    .line 4441
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 4442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v8, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 4443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14002(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->resetAggressiveModeParams()V

    .line 4446
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mStayingLowMCS:I

    .line 4448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_0

    .line 4453
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->resetAggressiveModeParams()V

    goto/16 :goto_0

    .line 4457
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_71

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v22

    .line 4459
    .local v22, "dns2Result":I
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_72

    .line 4460
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4464
    :cond_72
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_74

    .line 4465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4469
    :goto_1a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPublicDnsAvailable : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4470
    :cond_73
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    .line 4467
    :cond_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_1a

    .line 4474
    .end local v22    # "dns2Result":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v23

    .line 4475
    .local v23, "dnsResult":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-eqz v4, :cond_78

    .line 4476
    const/4 v4, 0x2

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    .line 4477
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_76

    .line 4478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4487
    :goto_1b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_75

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPublicDnsAvailable : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    :cond_75
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    .line 4479
    :cond_76
    const/4 v4, 0x4

    move/from16 v0, v23

    if-ne v0, v4, :cond_77

    .line 4480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4481
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xbb8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget-object v11, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    goto/16 :goto_0

    .line 4485
    :cond_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_1b

    .line 4491
    :cond_78
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DNS_PING_RESULT] skip : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    :cond_79
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    if-nez v4, :cond_0

    .line 4493
    const/4 v4, 0x2

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    .line 4494
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    .line 4495
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_7a

    .line 4496
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    .line 4498
    :cond_7a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_7b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "single DNS Checking FAILURE"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4499
    :cond_7b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-wide/from16 v0, v36

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19902(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 4500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_7c

    .line 4501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4503
    :cond_7c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_7e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 4504
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_7d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "But, do not check the quality in AGG good rx state"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4505
    :cond_7d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    .line 4507
    :cond_7e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    .line 4516
    .end local v23    # "dnsResult":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 4517
    .local v26, "id":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v49, v0

    .line 4518
    .restart local v49    # "result":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    if-eqz v4, :cond_0

    .line 4519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytesAggressiveMode:I

    move/from16 v0, v49

    if-lt v0, v4, :cond_80

    .line 4520
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    .line 4521
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_7f

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@R - REPORT_QC_RESULT - res: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", SC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    :cond_7f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 4524
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    .line 4525
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    .line 4526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    move/from16 v39, v0

    .line 4527
    .local v39, "prevRSSIThreshold":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    add-int/lit8 v5, v5, -0x3

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    .line 4528
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@R - RSSI Th UDT: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mRssiThresholdAggModeCurrentAP:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4533
    .end local v39    # "prevRSSIThreshold":I
    :cond_80
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@R - REPORT_QC_RESULT - res: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3999
    :sswitch_data_0
    .sparse-switch
        0x21023 -> :sswitch_6
        0x21033 -> :sswitch_0
        0x21034 -> :sswitch_2
        0x21035 -> :sswitch_1
        0x21036 -> :sswitch_3
        0x50000 -> :sswitch_5
        0x50005 -> :sswitch_4
    .end sparse-switch
.end method

.method resetAggressiveModeParams()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 3990
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeQCTriggerTime:J

    .line 3991
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mAggressiveModeThresholdUpdateTime:J

    .line 3992
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->triggeredByAggressiveMode:Z

    .line 3993
    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQcSuccessCountAtCurrentThreshold:I

    .line 3994
    return-void
.end method

.method restartQCCancelledByScanOrDhcp()V
    .locals 1

    .prologue
    .line 3961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    .line 3962
    return-void
.end method

.method setGoodRxStateNow(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3965
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 3967
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 3968
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 3969
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 3970
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "lose Good Rx status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    :cond_0
    :goto_0
    return-void

    .line 3973
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 3977
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    .line 3978
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    .line 3980
    :cond_3
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    .line 3981
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "obtain Good Rx status [rssi : %ddbm, rate : %dMbps]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateLastDnsCheckTime()V
    .locals 2

    .prologue
    .line 3957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    .line 3958
    return-void
.end method
