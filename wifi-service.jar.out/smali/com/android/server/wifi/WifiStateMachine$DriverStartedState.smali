.class Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 11491
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11495
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$22500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11496
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "DriverStartedState enter"

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11499
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-lez v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/server/wifi/DummyWifiLogger;->startLogging(Z)V

    .line 11500
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11501
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$22802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11502
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22908(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 11503
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 11509
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    .line 11511
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 11514
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    .line 11517
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$23100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11518
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    .line 11523
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$23202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11525
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_8

    .line 11526
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11527
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 11528
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 11529
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 11531
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11551
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    .line 11552
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 11554
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11560
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 11565
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11566
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 11575
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x20083

    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 11585
    :cond_3
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "wifi_scan_available"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11586
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11587
    const-string v2, "scan_enabled"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11588
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11590
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$23802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11591
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_4

    .line 11593
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$23902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11597
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    const-string v2, "wlan0"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStats(Ljava/lang/String;I)V

    .line 11599
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$22500()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11600
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Driverstarted State enter done, epno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$23900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$23800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11603
    :cond_5
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    move v2, v4

    .line 11499
    goto/16 :goto_0

    .line 11520
    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 11534
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 11536
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "Attempting to reconnect to wifi network .."

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11537
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 11544
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->status()Ljava/lang/String;

    .line 11546
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11547
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 11557
    :cond_a
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$23700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto/16 :goto_3

    .line 11581
    :cond_c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WifiStateMachine"

    const-string v4, " mP2pSupported"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12589
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/DummyWifiLogger;->stopLogging()V

    .line 12591
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12592
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V

    .line 12593
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$25902(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 12594
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 12595
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 12596
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 12604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wifi_scan_available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12605
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12606
    const-string v1, "scan_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12607
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 12608
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 48
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 11609
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_0

    .line 12582
    const/16 v42, 0x0

    .line 12584
    :goto_0
    return v42

    .line 11612
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Bundle;

    .line 11613
    .local v12, "bundle":Landroid/os/Bundle;
    if-eqz v12, :cond_5

    .line 11614
    const-string v42, "pid"

    const/16 v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 11615
    .local v30, "pid":I
    const/16 v42, -0x1

    move/from16 v0, v30

    move/from16 v1, v42

    if-eq v0, v1, :cond_5

    .line 11616
    const/16 v36, 0x0

    .line 11617
    .local v36, "scanType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanType(I)I

    move-result v36

    .line 11619
    const-string v42, "TRUE"

    sget-object v43, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 11620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getBigDataString(I)Ljava/lang/String;

    move-result-object v14

    .line 11621
    .local v14, "data":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 11622
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 11623
    .local v8, "args":Landroid/os/Bundle;
    const-string v42, "bigdata"

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11624
    const-string v42, "feature"

    const-string v43, "SCAN"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11625
    const-string v42, "data"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x200ca

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 11630
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v14    # "data":Ljava/lang/String;
    :cond_0
    const/16 v42, 0x4

    move/from16 v0, v36

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 11631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateTimeStampForCachedScanResult()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    const-wide/16 v44, 0x320

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendDelayBroadcast(IJ)V
    invoke-static/range {v42 .. v45}, Lcom/android/server/wifi/WifiStateMachine;->access$24100(Lcom/android/server/wifi/WifiStateMachine;IJ)V

    .line 12584
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v30    # "pid":I
    .end local v36    # "scanType":I
    :cond_1
    :goto_1
    const/16 v42, 0x1

    goto/16 :goto_0

    .line 11634
    .restart local v12    # "bundle":Landroid/os/Bundle;
    .restart local v30    # "pid":I
    .restart local v36    # "scanType":I
    :cond_2
    const/16 v42, 0x5

    move/from16 v0, v36

    move/from16 v1, v42

    if-eq v0, v1, :cond_1

    .line 11636
    if-eqz v36, :cond_4

    .line 11637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 11638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v19

    .line 11639
    .local v19, "freqsString":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 11640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseChannelFreq(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$24200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/util/List;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/samsung/android/server/wifi/WifiScanController;->updateChannelList(Ljava/util/List;)V

    .line 11641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11644
    .end local v19    # "freqsString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->getChannelFrequencyArray(I)[I

    move-result-object v18

    .line 11645
    .local v18, "freqs":[I
    if-eqz v18, :cond_4

    .line 11646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->startPartialScan(I[I)I

    goto :goto_1

    .line 11651
    .end local v18    # "freqs":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackageFromLastPid()Z

    move-result v42

    if-eqz v42, :cond_5

    .line 11652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 11657
    .end local v30    # "pid":I
    .end local v36    # "scanType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_6

    .line 11658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 11661
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 11664
    .end local v12    # "bundle":Landroid/os/Bundle;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 11665
    .local v18, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->partialScan(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 11666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const/16 v44, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$24500(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V

    goto/16 :goto_1

    .line 11670
    .end local v18    # "freqs":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 11671
    .local v13, "country":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 11673
    sget-object v42, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 11674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "airplane_mode_on"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    const-string v42, "FACTORY"

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 11677
    const-string v42, "WifiStateMachine"

    const-string v43, "[CMD_SET_COUNTRY_CODE] Airplane mode on, break !!!"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 11680
    :cond_7
    const-string v42, "FACTORY"

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 11681
    const-string v42, "WifiStateMachine"

    const-string v43, "DriverStarted - [CMD_SET_COUNTRY_CODE] - Factory mode"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11682
    const-string v42, "FACTORY"

    const-string v43, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 11684
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_a

    const/16 v29, 0x1

    .line 11685
    .local v29, "persist":Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 11686
    .local v37, "sequence":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "sequence = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", mCountryCodeSequence = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11687
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v42

    if-eqz v42, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v42

    move/from16 v0, v37

    move/from16 v1, v42

    if-eq v0, v1, :cond_b

    .line 11688
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "set country code ignored due to sequnce num"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11684
    .end local v29    # "persist":Z
    .end local v37    # "sequence":I
    :cond_a
    const/16 v29, 0x0

    goto :goto_2

    .line 11691
    .restart local v29    # "persist":Z
    .restart local v37    # "sequence":I
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "set country code "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11692
    :cond_c
    if-eqz v29, :cond_d

    .line 11693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$7502(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_country_code"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11698
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_f

    .line 11700
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_10

    .line 11701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$24602(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11703
    const-string v42, "WifiStateMachine"

    const-string v43, "mWifiNative.bssFlush()"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 11705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$18902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11710
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    const v43, 0x23010

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11707
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to set country code "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 11713
    .end local v13    # "country":Ljava/lang/String;
    .end local v29    # "persist":Z
    .end local v37    # "sequence":I
    :sswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 11714
    .local v10, "band":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "set frequency band "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11715
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v42

    if-eqz v42, :cond_14

    .line 11717
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$22500()Z

    move-result v42

    if-eqz v42, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "did set frequency band "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11720
    :cond_12
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Wifi_SetOffApRoaming"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_13

    .line 11721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->setRoamMode(I)Z

    .line 11723
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 11726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$12000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_1

    .line 11729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    const/16 v44, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$24800(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;)Z

    .line 11730
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$22500()Z

    move-result v42

    if-eqz v42, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "done set frequency band "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11733
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Failed to set frequency band "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11737
    .end local v10    # "band":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    if-eqz v42, :cond_15

    const/16 v42, 0x1

    :goto_4
    move-object/from16 v0, v43

    move/from16 v1, v42

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$6900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceScanMode(Z)Z

    goto/16 :goto_1

    .line 11737
    :cond_15
    const/16 v42, 0x0

    goto :goto_4

    .line 11742
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 11745
    .local v25, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_16

    .line 11746
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Already in delayed stop"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11750
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 11752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSendDhcpRelease:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$24900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v42

    if-eqz v42, :cond_17

    .line 11753
    const-string v42, "WifiStateMachine"

    const-string v43, "CMD_RELEASE_DHCP is sent due to CMD_STOP_DRIVER"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v42

    const v43, 0x30009

    invoke-virtual/range {v42 .. v43}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    .line 11756
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22908(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 11758
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Delayed stop message "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11761
    :cond_18
    new-instance v15, Landroid/content/Intent;

    const-string v42, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11762
    .local v15, "driverStopIntent":Landroid/content/Intent;
    const-string v42, "android"

    move-object/from16 v0, v42

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11763
    const-string v42, "DelayedStopCounter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    const/16 v44, 0x0

    const/high16 v45, 0x8000000

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$25002(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 11768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$25200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v42

    const/16 v43, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$25100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v44, v44, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->access$25000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v46

    invoke-virtual/range {v42 .. v46}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 11772
    .end local v15    # "driverStopIntent":Landroid/content/Intent;
    .end local v25    # "mode":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 11773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$22908(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 11775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$25200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$25000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11776
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Delayed stop ignored due to start"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11777
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1

    .line 11778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto/16 :goto_1

    .line 11783
    :sswitch_7
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "delayed stop "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11784
    :cond_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$22900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1

    .line 11785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$25300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-eq v0, v1, :cond_1b

    .line 11786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11789
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->stopDriver()Z

    .line 11791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 11792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 11793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$25400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 11795
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$25500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$25600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 11799
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1d

    .line 11800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 11801
    :cond_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    if-nez v42, :cond_1e

    .line 11802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->startFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 11804
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Illegal arugments to CMD_START_PACKET_FILTERING"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11808
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1f

    .line 11809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV6Packets()Z

    goto/16 :goto_1

    .line 11810
    :cond_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    if-nez v42, :cond_20

    .line 11811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->stopFilteringMulticastV4Packets()Z

    goto/16 :goto_1

    .line 11813
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "Illegal arugments to CMD_STOP_PACKET_FILTERING"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11817
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_21

    .line 11818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x4

    const/16 v44, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 11819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 11820
    :cond_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    if-nez v42, :cond_22

    .line 11821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x4

    const/16 v44, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 11824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 11825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_1

    .line 11827
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x4

    const/16 v44, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 11830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 11831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_1

    .line 11835
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_23

    .line 11836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    const/16 v44, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 11838
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    const/16 v44, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V
    invoke-static/range {v42 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$25700(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_1

    .line 11842
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    if-eqz v42, :cond_1

    .line 11843
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    .line 11844
    .local v33, "remoteAddress":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_24

    const/16 v16, 0x1

    .line 11845
    .local v16, "enable":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->startTdls(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 11844
    .end local v16    # "enable":Z
    :cond_24
    const/16 v16, 0x0

    goto :goto_5

    .line 11849
    .end local v33    # "remoteAddress":Ljava/lang/String;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/Long;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    if-eqz v43, :cond_25

    const/16 v43, 0x1

    :goto_6
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPDone(Ljava/lang/Long;Z)V

    goto/16 :goto_1

    :cond_25
    const/16 v43, 0x0

    goto :goto_6

    .line 11852
    :sswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 11853
    .local v39, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->stopWifiIPPacketOffload(I)I

    move-result v34

    .line 11854
    .local v34, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 11855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v39

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_1

    .line 11860
    .end local v34    # "ret":I
    .end local v39    # "slot":I
    :sswitch_f
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "DriverStartedState :: CMD_SET_SCAN_MOVE("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ") "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->setWifiScanMove(I)Z

    goto/16 :goto_1

    .line 11864
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 11866
    .local v21, "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_26

    .line 11867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "DriverStatedState::CMD_SEC_API_ASYNC - Invalid inner msg"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11870
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "DriverStatedState::CMD_SEC_API_ASYNC - inner msg ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11871
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_1

    .line 11922
    const/16 v42, 0x0

    goto/16 :goto_0

    .line 11873
    :sswitch_11
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11874
    .restart local v8    # "args":Landroid/os/Bundle;
    const-string v42, "netId"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 11875
    .local v26, "netId":Ljava/lang/Integer;
    const-string v42, "autojoin"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 11876
    .local v9, "autoJoin":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v43

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->updateAutojoin(II)V

    goto/16 :goto_1

    .line 11880
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "autoJoin":Ljava/lang/Integer;
    .end local v26    # "netId":Ljava/lang/Integer;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v42, v0

    if-eqz v42, :cond_1

    .line 11881
    const-string v42, "WifiStateMachine"

    const-string v43, "WifiManager.SEC_COMMAND_ID_PRE_SCAN"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 11883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xd

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_1

    .line 11890
    :sswitch_13
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11891
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 11892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "enable"

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 11893
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P mSkipScanAssoc : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssocLock:Z
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$25800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v42

    if-eqz v42, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v42, v0

    if-nez v42, :cond_1

    .line 11896
    :cond_27
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiNative.WIFI_NATIVE_CMD_SET_ESTABLISH_SUP_CONNECTION mSkipScanAssoc : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    const/16 v44, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    move/from16 v42, v0

    if-nez v42, :cond_28

    const/16 v42, 0x1

    :goto_7
    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_1

    :cond_28
    const/16 v42, 0x0

    goto :goto_7

    .line 11905
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_14
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11906
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 11907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xb

    const-string v44, "stop"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    goto/16 :goto_1

    .line 11913
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_15
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11914
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_1

    .line 11915
    const-string v42, "BSSID"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11916
    .local v11, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x51

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    .line 11917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto/16 :goto_1

    .line 11927
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v11    # "bssid":Ljava/lang/String;
    .end local v21    # "innerMsg":Landroid/os/Message;
    :sswitch_16
    const/16 v22, -0x1

    .line 11928
    .local v22, "intResult":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 11931
    .restart local v21    # "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_29

    .line 11932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "DriverStatedState::CMD_SEC_API - Invalid inner msg"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11936
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "DriverStatedState::CMD_SEC_API - inner msg ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11938
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_2

    .line 12504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "ignore message : not implementation"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11940
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x64

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11945
    :sswitch_18
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11946
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2a

    .line 11947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x65

    const-string v44, "level"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11949
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11952
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x66

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11957
    :sswitch_1a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11958
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2b

    .line 11959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x67

    const-string v44, "level"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11961
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11964
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x68

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11969
    :sswitch_1c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11970
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2c

    .line 11971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x69

    const-string v44, "time"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11973
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11976
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x6a

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11981
    :sswitch_1e
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11982
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2d

    .line 11983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x6b

    const-string v44, "mode"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 11985
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11988
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_1f
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 11989
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2e

    .line 11990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x6d

    const-string v44, "chinfo"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 11992
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11995
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x82

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 11997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12000
    :sswitch_21
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12001
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_2f

    .line 12002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x83

    const-string v44, "time"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12004
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12007
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x84

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12012
    :sswitch_23
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12013
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_30

    .line 12014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x85

    const-string v44, "time"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12016
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12019
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x86

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12024
    :sswitch_25
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12025
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_31

    .line 12026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x87

    const-string v44, "time"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12028
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12031
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x88

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12036
    :sswitch_27
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12037
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_32

    .line 12038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x89

    const-string v44, "num"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12040
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12043
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_28
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12044
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_33

    .line 12045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x97

    const-string v44, "param"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12047
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12050
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_29
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12051
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_34

    .line 12052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x96

    const-string v44, "param"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12054
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12057
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12058
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_35

    .line 12059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa1

    const-string v44, "country"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12061
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12064
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa2

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12069
    :sswitch_2c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12070
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_36

    .line 12071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa3

    const-string v44, "band"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12073
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12076
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa4

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12081
    :sswitch_2e
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12082
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_37

    .line 12083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa5

    const-string v44, "mode"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12085
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12088
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xaa

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12093
    :sswitch_30
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12094
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_38

    .line 12095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xab

    const-string v44, "mode"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12097
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12100
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_31
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 12101
    .local v16, "enable":I
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_SET_RPS_MODE : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x47

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12107
    .end local v16    # "enable":I
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x4b

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12108
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_GET_MU_MIMO_MODE : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12113
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x4c

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12114
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_GET_MU_MIMO_MODE : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12119
    :sswitch_34
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 12120
    .restart local v16    # "enable":I
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_SET_MU_MIMO_MODE : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x4d

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12127
    .end local v16    # "enable":I
    :sswitch_35
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12128
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_39

    .line 12129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x1

    const-string v44, "enable"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 12132
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12137
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_36
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12138
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_3b

    .line 12139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string v44, "wifi_skip_auto_conn"

    const-string v42, "enable"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3a

    const/16 v42, 0x1

    :goto_8
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xe

    const-string v44, "enable"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 12146
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12139
    :cond_3a
    const/16 v42, 0x0

    goto :goto_8

    .line 12143
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_skip_auto_conn"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 12144
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "WifiManager.SEC_COMMAND_ID_SKIP_AUTO_CONNECTION : wifi_skip_auto_conn("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 12150
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    const-string v44, "skip_internet_check"

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v42 .. v45}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3e

    .line 12154
    const/4 v6, 0x0

    .line 12155
    .local v6, "SkipInternetCheck":Z
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3d

    .line 12156
    const/4 v6, 0x1

    .line 12160
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 12161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    .line 12162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    if-eqz v42, :cond_3c

    .line 12163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 12164
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_3c

    .line 12165
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "updateSkipInternetCheck by callSECApi : SSID/netId/value"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12169
    :cond_3c
    const/16 v22, 0x0

    .line 12173
    .end local v6    # "SkipInternetCheck":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12158
    .restart local v6    # "SkipInternetCheck":Z
    :cond_3d
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 12171
    .end local v6    # "SkipInternetCheck":Z
    :cond_3e
    const/16 v22, -0x1

    goto :goto_b

    .line 12177
    :sswitch_38
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12178
    .restart local v8    # "args":Landroid/os/Bundle;
    const-string v42, "netId"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 12179
    .local v26, "netId":I
    const-string v42, "autojoin"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 12180
    .local v9, "autoJoin":I
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_3f

    .line 12181
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SEC_COMMAND_ID_SEC_RECONNECT_ENABLED : netId("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "), autoJoin("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12184
    :cond_3f
    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v9, v0, :cond_41

    .line 12185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wifi/WifiConfigStore;->updateAutojoin(II)V

    .line 12186
    const/16 v22, 0x0

    .line 12202
    :cond_40
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12188
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const-string v43, "autojoin"

    move-object/from16 v0, v42

    move/from16 v1, v26

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 12189
    .local v41, "value":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_42

    .line 12191
    :try_start_0
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 12197
    :goto_d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_40

    .line 12198
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SEC_COMMAND_ID_SEC_RECONNECT_ENABLED : get autojoin("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 12195
    :cond_42
    const/16 v22, 0x1

    goto :goto_d

    .line 12206
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "autoJoin":I
    .end local v26    # "netId":I
    .end local v41    # "value":Ljava/lang/String;
    :sswitch_39
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12207
    .restart local v8    # "args":Landroid/os/Bundle;
    const-string v42, "priority"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 12209
    .local v41, "value":I
    const/16 v42, -0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_46

    .line 12210
    new-instance v23, Landroid/content/Intent;

    const-string v42, "com.samsung.android.net.wifi.DISCONNECT_WEAK_WIFI_SERVICE"

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12212
    .local v23, "intent":Landroid/content/Intent;
    if-eqz v41, :cond_45

    .line 12213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_enable"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_43

    .line 12214
    const-string v42, "service"

    const/16 v43, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_enable"

    const/16 v44, 0x1

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12225
    :cond_43
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_settings"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12226
    const/16 v22, 0x0

    .line 12238
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_44
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12219
    .restart local v23    # "intent":Landroid/content/Intent;
    :cond_45
    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    const-string v44, "wifi_connection_monitor_enable"

    const/16 v45, 0x0

    invoke-static/range {v43 .. v45}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_43

    .line 12220
    const-string v42, "service"

    const/16 v43, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 12222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_enable"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    .line 12228
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_enable"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_47

    .line 12229
    const/16 v22, 0x0

    .line 12233
    :goto_10
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v42

    if-eqz v42, :cond_44

    .line 12234
    const-string v42, "WifiStateMachine"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SEC_COMMAND_ID_KT_DISCONNECTION_PRIORITY : get priority("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 12231
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "wifi_connection_monitor_settings"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    goto :goto_10

    .line 12243
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v41    # "value":I
    :sswitch_3a
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12244
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_48

    .line 12245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa

    const-string v44, "ampdu"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12248
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12296
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12301
    :sswitch_3c
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12302
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_49

    .line 12303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xc

    const-string v44, "enable"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 12306
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12310
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_3d
    const/16 v22, 0x0

    .line 12311
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12312
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4a

    .line 12313
    const-string v42, "OPTION"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 12314
    .local v27, "option":I
    const-string v42, "PATH"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 12315
    .local v28, "path":Ljava/lang/String;
    if-nez v27, :cond_4b

    .line 12316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x3d

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12317
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12318
    .local v17, "f":Ljava/io/File;
    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 12335
    .end local v17    # "f":Ljava/io/File;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :cond_4a
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12319
    .restart local v27    # "option":I
    .restart local v28    # "path":Ljava/lang/String;
    :cond_4b
    const/16 v42, 0x1

    move/from16 v0, v27

    move/from16 v1, v42

    if-ne v0, v1, :cond_4c

    .line 12320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x3e

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12321
    if-nez v22, :cond_4a

    .line 12322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto :goto_11

    .line 12324
    :cond_4c
    const/16 v42, 0x2

    move/from16 v0, v27

    move/from16 v1, v42

    if-ne v0, v1, :cond_4d

    .line 12325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x3b

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12326
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12327
    .restart local v17    # "f":Ljava/io/File;
    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_11

    .line 12328
    .end local v17    # "f":Ljava/io/File;
    :cond_4d
    const/16 v42, 0x3

    move/from16 v0, v27

    move/from16 v1, v42

    if-ne v0, v1, :cond_4a

    .line 12329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x3c

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12330
    if-nez v22, :cond_4a

    .line 12331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_11

    .line 12339
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :sswitch_3e
    const/16 v22, 0x0

    .line 12340
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12341
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4e

    .line 12342
    const-string v42, "OPTION"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 12343
    .restart local v27    # "option":I
    const-string v42, "PATH"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 12344
    .restart local v28    # "path":Ljava/lang/String;
    if-nez v27, :cond_4e

    .line 12345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xbf

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12347
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12348
    .restart local v17    # "f":Ljava/io/File;
    const/16 v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 12351
    .end local v17    # "f":Ljava/io/File;
    .end local v27    # "option":I
    .end local v28    # "path":Ljava/lang/String;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12355
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_3f
    const/16 v22, -0x1

    .line 12356
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12357
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_4f

    .line 12358
    const-string v42, "PATH"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 12359
    .local v31, "rawConfPath":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12360
    .restart local v17    # "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v42

    if-eqz v42, :cond_50

    .line 12361
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v42

    if-eqz v42, :cond_4f

    .line 12362
    const/16 v22, 0x0

    .line 12368
    .end local v17    # "f":Ljava/io/File;
    .end local v31    # "rawConfPath":Ljava/lang/String;
    :cond_4f
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12365
    .restart local v17    # "f":Ljava/io/File;
    .restart local v31    # "rawConfPath":Ljava/lang/String;
    :cond_50
    const/16 v22, 0x0

    goto :goto_12

    .line 12373
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v17    # "f":Ljava/io/File;
    .end local v31    # "rawConfPath":Ljava/lang/String;
    :sswitch_40
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12374
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_51

    .line 12375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "enable"

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v43

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$8502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x12d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v44, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->access$8500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 12379
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12383
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x136

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12388
    :sswitch_42
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    if-eqz v42, :cond_52

    .line 12389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    const/16 v44, 0x135

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12392
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12396
    :sswitch_43
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    if-eqz v42, :cond_53

    .line 12397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v43

    const/16 v44, 0x137

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->callSECApiString(ILjava/lang/String;)I

    move-result v22

    .line 12400
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12404
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x12e

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12409
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x132

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12414
    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x133

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    move-result v22

    .line 12415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12419
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x12f

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12424
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x134

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12429
    :sswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x131

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v22

    .line 12430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12443
    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12453
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12463
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12474
    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12478
    :sswitch_4e
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12479
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_54

    .line 12480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x9

    const-string v44, "enable"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    invoke-virtual/range {v42 .. v44}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v22

    .line 12483
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12488
    .end local v8    # "args":Landroid/os/Bundle;
    :sswitch_4f
    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    .line 12489
    .restart local v8    # "args":Landroid/os/Bundle;
    if-eqz v8, :cond_56

    .line 12490
    const-string v42, "netId"

    const/16 v43, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 12491
    .restart local v26    # "netId":I
    const-string v42, "reason"

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 12493
    .local v32, "reasonCode":I
    const/16 v42, -0x1

    move/from16 v0, v26

    move/from16 v1, v42

    if-eq v0, v1, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_55

    .line 12495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const v44, 0x25013

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 12497
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const v44, 0x25012

    const/16 v45, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;III)V

    goto/16 :goto_1

    .line 12500
    .end local v26    # "netId":I
    .end local v32    # "reasonCode":I
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const v44, 0x25012

    const/16 v45, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;III)V

    goto/16 :goto_1

    .line 12511
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v21    # "innerMsg":Landroid/os/Message;
    .end local v22    # "intResult":I
    :sswitch_50
    const/4 v7, 0x0

    .line 12512
    .local v7, "StringResult":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 12515
    .restart local v21    # "innerMsg":Landroid/os/Message;
    if-nez v21, :cond_57

    .line 12516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "DriverStartedState::CMD_SEC_STRING_API - Invalid inner msg"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12520
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "DriverStartedState::CMD_SEC_STRING_API - inner msg ["

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "]"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12522
    move-object/from16 v0, v21

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    sparse-switch v42, :sswitch_data_3

    .line 12575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    const-string v43, "ignore message : not implementation"

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12525
    :sswitch_51
    new-instance v35, Ljava/lang/StringBuffer;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    .line 12526
    .local v35, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v38, 0x0

    .line 12529
    .local v38, "sid":I
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v40

    .line 12530
    .local v40, "tmpResults":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_59

    .line 12549
    :goto_13
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12531
    :cond_59
    move-object/from16 v0, v35

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12532
    const-string v42, "\n"

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12533
    const-string v42, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 12534
    .local v24, "lines":[Ljava/lang/String;
    const/16 v38, -0x1

    .line 12535
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v20, v42, -0x1

    .local v20, "i":I
    :goto_14
    if-ltz v20, :cond_5a

    .line 12536
    aget-object v42, v24, v20

    const-string v43, "####"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_5b

    .line 12547
    :cond_5a
    :goto_15
    const/16 v42, -0x1

    move/from16 v0, v38

    move/from16 v1, v42

    if-ne v0, v1, :cond_58

    goto :goto_13

    .line 12538
    :cond_5b
    aget-object v42, v24, v20

    const-string v43, "id="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_5c

    .line 12540
    :try_start_1
    aget-object v42, v24, v20

    const-string v43, "id="

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v42

    add-int/lit8 v38, v42, 0x1

    goto :goto_15

    .line 12535
    :cond_5c
    add-int/lit8 v20, v20, -0x1

    goto :goto_14

    .line 12553
    .end local v20    # "i":I
    .end local v24    # "lines":[Ljava/lang/String;
    .end local v35    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .end local v38    # "sid":I
    .end local v40    # "tmpResults":Ljava/lang/String;
    :sswitch_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0x6c

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 12555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12558
    :sswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xa0

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 12560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12563
    :sswitch_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->getSecuredNetworkInfo(I)Ljava/lang/String;

    move-result-object v7

    .line 12564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12567
    :sswitch_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v42

    const/16 v43, 0xd7

    invoke-virtual/range {v42 .. v43}, Lcom/android/server/wifi/WifiNative;->callSECStringApiVoid(I)Ljava/lang/String;

    move-result-object v7

    .line 12568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12571
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/server/wifi/WifiScanController;->dump()Ljava/lang/String;

    move-result-object v7

    .line 12572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v42 .. v42}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v42

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 12192
    .end local v7    # "StringResult":Ljava/lang/String;
    .restart local v8    # "args":Landroid/os/Bundle;
    .restart local v9    # "autoJoin":I
    .restart local v22    # "intResult":I
    .restart local v26    # "netId":I
    .local v41, "value":Ljava/lang/String;
    :catch_0
    move-exception v42

    goto/16 :goto_d

    .line 12541
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "autoJoin":I
    .end local v22    # "intResult":I
    .end local v26    # "netId":I
    .end local v41    # "value":Ljava/lang/String;
    .restart local v7    # "StringResult":Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v24    # "lines":[Ljava/lang/String;
    .restart local v35    # "scanResultsBuf":Ljava/lang/StringBuffer;
    .restart local v38    # "sid":I
    .restart local v40    # "tmpResults":Ljava/lang/String;
    :catch_1
    move-exception v42

    goto/16 :goto_15

    .line 11609
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_6
        0x2000e -> :sswitch_5
        0x20012 -> :sswitch_7
        0x2001f -> :sswitch_4
        0x20047 -> :sswitch_0
        0x2004d -> :sswitch_b
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_8
        0x20055 -> :sswitch_9
        0x20056 -> :sswitch_a
        0x2005a -> :sswitch_3
        0x2005c -> :sswitch_c
        0x2006e -> :sswitch_1
        0x2007e -> :sswitch_f
        0x200a1 -> :sswitch_e
        0x2012c -> :sswitch_10
        0x2012d -> :sswitch_16
        0x2012e -> :sswitch_50
        0x2402c -> :sswitch_d
    .end sparse-switch

    .line 11871
    :sswitch_data_1
    .sparse-switch
        0x12 -> :sswitch_14
        0x1a -> :sswitch_13
        0x26 -> :sswitch_12
        0x47 -> :sswitch_11
        0x4a -> :sswitch_13
        0x52 -> :sswitch_15
    .end sparse-switch

    .line 11938
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_35
        0xf -> :sswitch_4e
        0x11 -> :sswitch_3a
        0x13 -> :sswitch_3c
        0x20 -> :sswitch_36
        0x23 -> :sswitch_37
        0x25 -> :sswitch_3b
        0x29 -> :sswitch_40
        0x2a -> :sswitch_44
        0x2c -> :sswitch_45
        0x2d -> :sswitch_49
        0x32 -> :sswitch_4a
        0x33 -> :sswitch_4b
        0x34 -> :sswitch_4c
        0x35 -> :sswitch_4d
        0x3d -> :sswitch_3d
        0x4b -> :sswitch_31
        0x53 -> :sswitch_38
        0x54 -> :sswitch_39
        0x64 -> :sswitch_17
        0x65 -> :sswitch_18
        0x66 -> :sswitch_19
        0x67 -> :sswitch_1a
        0x68 -> :sswitch_1b
        0x69 -> :sswitch_1c
        0x6a -> :sswitch_1d
        0x6b -> :sswitch_1e
        0x6d -> :sswitch_1f
        0x82 -> :sswitch_20
        0x83 -> :sswitch_21
        0x84 -> :sswitch_22
        0x85 -> :sswitch_23
        0x86 -> :sswitch_24
        0x87 -> :sswitch_25
        0x88 -> :sswitch_26
        0x89 -> :sswitch_27
        0x96 -> :sswitch_28
        0x97 -> :sswitch_29
        0xa1 -> :sswitch_2a
        0xa2 -> :sswitch_2b
        0xa3 -> :sswitch_2c
        0xa4 -> :sswitch_2d
        0xa5 -> :sswitch_2e
        0xaa -> :sswitch_2f
        0xab -> :sswitch_30
        0xcb -> :sswitch_4f
        0xcd -> :sswitch_3e
        0xce -> :sswitch_46
        0xd0 -> :sswitch_48
        0xd1 -> :sswitch_42
        0xd2 -> :sswitch_41
        0xfd -> :sswitch_43
        0xfe -> :sswitch_47
        0x105 -> :sswitch_3f
        0x107 -> :sswitch_32
        0x108 -> :sswitch_33
        0x109 -> :sswitch_34
    .end sparse-switch

    .line 12522
    :sswitch_data_3
    .sparse-switch
        0x21 -> :sswitch_51
        0x27 -> :sswitch_54
        0x6c -> :sswitch_52
        0xa0 -> :sswitch_53
        0xcf -> :sswitch_55
        0xdf -> :sswitch_56
    .end sparse-switch
.end method
