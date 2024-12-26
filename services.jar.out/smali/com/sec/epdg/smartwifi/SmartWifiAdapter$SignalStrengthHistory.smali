.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SignalStrengthHistory"
.end annotation


# static fields
.field private static final INVALID_CDMA_ECIO:I = -0x10

.field private static final INVALID_LTE_RSRP:I = -0x8c

.field private static final MAX_READINGS:I = 0x14


# instance fields
.field private mIndex:I

.field private mPingThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrengthHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 2

    .prologue
    .line 796
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mIndex:I

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    return-void
.end method

.method private declared-synchronized getLastKnownReading()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->getSignalStrength()Landroid/telephony/SignalStrength;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeOldestReadingIfFull()V
    .locals 3

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 818
    .local v0, "size":I
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 821
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Radio oldest entry removed"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    :cond_0
    monitor-exit p0

    return-void

    .line 817
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized runPingIfNeeded()V
    .locals 3

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 810
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)V

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;->run()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :goto_0
    monitor-exit p0

    return-void

    .line 812
    :cond_0
    :try_start_1
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping already running : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addReading(Landroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "sigstr"    # Landroid/telephony/SignalStrength;

    .prologue
    const v8, 0x7fffffff

    .line 841
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownLteRSRP()I

    move-result v3

    .line 842
    .local v3, "lastLteRSRP":I
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownCdmaDb()I

    move-result v2

    .line 843
    .local v2, "lastCdmaDb":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v1

    .line 844
    .local v1, "currentLteRSRP":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v4

    div-int/lit8 v0, v4, 0xa

    .line 846
    .local v0, "currentCdmaDb":I
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentLteRSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastCdmaDb is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "currentCdmaDb is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->removeOldestReadingIfFull()V

    .line 850
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;

    iget-object v6, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/telephony/SignalStrength;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    const-string v4, "[SMARTWIFI]"

    const-string v5, "Radio entry added"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 857
    if-ne v3, v8, :cond_0

    .line 858
    const/16 v3, -0x8c

    .line 861
    :cond_0
    if-ne v1, v8, :cond_1

    .line 862
    const/16 v1, -0x8c

    .line 865
    :cond_1
    if-nez v3, :cond_2

    .line 866
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 867
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 868
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnable(I)V
    invoke-static {v4, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    .line 877
    :cond_2
    :goto_0
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1300()I

    move-result v4

    if-lt v1, v4, :cond_3

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1300()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 879
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLteThGood "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableLteOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 883
    :cond_3
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1600()I

    move-result v4

    if-ge v1, v4, :cond_4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1600()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 885
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSRP is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLteThLow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1600()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableLteOff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 890
    :cond_4
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 892
    if-lez v0, :cond_5

    .line 893
    const-string v4, "[SMARTWIFI]"

    const-string v5, "Ril indicated the wrong Ec/Io value"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/16 v0, -0x10

    .line 897
    :cond_5
    if-ne v2, v8, :cond_6

    .line 898
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnable(I)V
    invoke-static {v4, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V

    .line 901
    :cond_6
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v4

    if-le v0, v4, :cond_7

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v4

    if-gt v2, v4, :cond_7

    .line 903
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cdma Ec/IO is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaTh "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableCdmaOn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOn:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    .line 907
    :cond_7
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v4

    if-gt v0, v4, :cond_8

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v4

    if-le v2, v4, :cond_8

    .line 909
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cdma Ec/IO is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCdmaTh "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2000()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posting mRunnableCdmaOff"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V
    invoke-static {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_8
    monitor-exit p0

    return-void

    .line 870
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postStartLteRunnable(I)V
    invoke-static {v4, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 841
    .end local v0    # "currentCdmaDb":I
    .end local v1    # "currentLteRSRP":I
    .end local v2    # "lastCdmaDb":I
    .end local v3    # "lastLteRSRP":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 873
    .restart local v0    # "currentCdmaDb":I
    .restart local v1    # "currentLteRSRP":I
    .restart local v2    # "lastCdmaDb":I
    .restart local v3    # "lastLteRSRP":I
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postStartLteRunnable(I)V
    invoke-static {v4, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$1200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized clearReadings()V
    .locals 2

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    const-string v0, "[SMARTWIFI]"

    const-string v1, "cdma history cleared"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_1
    monitor-exit p0

    return-void

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownCdmaDb()I
    .locals 1

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    const v0, 0x7fffffff

    .line 957
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v0

    div-int/lit8 v0, v0, 0xa
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLteRSRP()I
    .locals 1

    .prologue
    .line 961
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 964
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLteRsrp()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownReadingLevel()I
    .locals 1

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x0

    .line 950
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPingResult()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->runPingIfNeeded()V

    .line 827
    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    .local v2, "ret":Ljava/lang/Boolean;
    :try_start_1
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    :goto_0
    :try_start_2
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA Ping thread returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 837
    monitor-exit p0

    return-object v2

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "[SMARTWIFI]"

    const-string v4, "InterruptedException CDMA getPingResult"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 826
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ret":Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 832
    .restart local v2    # "ret":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 833
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized isCdmaSignalGoodEnough()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 928
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    const-string v2, "[SMARTWIFI]"

    const-string v3, "not enough cdma history"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :goto_0
    monitor-exit p0

    return v1

    .line 935
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownReading()Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .line 936
    .local v0, "cdmaStrength":I
    if-gez v0, :cond_1

    .line 937
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA too weak to handover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v1, 0x0

    goto :goto_0

    .line 940
    :cond_1
    const-string v2, "[SMARTWIFI]"

    const-string v3, "cdma signal strong enough"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 928
    .end local v0    # "cdmaStrength":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
