.class Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkMonitoringState"
.end annotation


# instance fields
.field private mLastRssi:I

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 6629
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6636
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6637
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 6638
    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    .line 6640
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v2, 0x2100b

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12004(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 6641
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 6642
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6646
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 6912
    const/16 v20, 0x0

    .line 6914
    :goto_0
    return v20

    .line 6648
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4300(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v21

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 6652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v22

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isInEvaluationLevel(II)Z
    invoke-static/range {v20 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27500(Lcom/android/server/wifi/WifiWatchdogStateMachine;II)Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 6914
    :cond_1
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 6658
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6663
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6667
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 6668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6669
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 6670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v20

    const v21, 0x25014

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 6671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    const v22, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v23, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12004(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x1f4

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 6674
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "msg.arg1 != mRssiFetchToken"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6679
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 6682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 6683
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/RssiPacketCountInfo;

    .line 6684
    .local v9, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v15, v9, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 6685
    .local v15, "rssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 6686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 6688
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    move/from16 v20, v0

    add-int v20, v20, v15

    div-int/lit8 v14, v20, 0x2

    .line 6689
    .local v14, "mrssi":I
    iget v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    move/from16 v18, v0

    .line 6690
    .local v18, "txbad":I
    iget v0, v9, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    move/from16 v19, v0

    .line 6691
    .local v19, "txgood":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28300()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x0

    :goto_2
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28302(I)I

    .line 6692
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28300()I

    move-result v20

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const-string v20, "[FD]"

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "Fetch RSSI succeed, rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " mrssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " txbad="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " txgood="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6695
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 6696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_POOR_DETECTED_RSSI_MIN:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v14, v0, :cond_a

    .line 6697
    const-string v20, "WifiWatchdogStateMachine"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RSSI is under than level 0 - rssi:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6698
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mWeakSignalQCStartTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v10, v20, v22

    .line 6699
    .local v10, "intervalTimeSec":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mWeakSignalQCStartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->WEAK_SIGNAL_FREQUENT_QC_CYCLE_SEC:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v10, v20

    if-lez v20, :cond_a

    .line 6701
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 6702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mWeakSignalQCStartTime:J

    goto/16 :goto_1

    .line 6691
    .end local v10    # "intervalTimeSec":J
    :cond_8
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 6692
    :cond_9
    const-string v20, ""

    goto/16 :goto_3

    .line 6708
    :cond_a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentApDefault:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$26400()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 6709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->fastDisconnectUpdateRssi(I)V

    .line 6710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->FD_RSSI_LOW_THRESHOLD:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_b

    .line 6711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->fastDisconnectEvaluate()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 6713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    const/16 v21, 0xd

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 6714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v21

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 6715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 6716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZII)V
    invoke-static {v0, v1, v2, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15900(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZII)V

    .line 6721
    :cond_b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bUpdateLinkMonitor:I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28300()I

    move-result v20

    if-eqz v20, :cond_1

    .line 6724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 6725
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$14600(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v20

    sub-long v20, v16, v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600()J

    move-result-wide v22

    const-wide/16 v24, 0x2

    mul-long v22, v22, v24

    cmp-long v20, v20, v22

    if-gez v20, :cond_2e

    .line 6726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    if-nez v20, :cond_c

    .line 6727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 6730
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    sub-int v4, v18, v20

    .line 6731
    .local v4, "dbad":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    sub-int v6, v19, v20

    .line 6732
    .local v6, "dgood":I
    add-int v7, v4, v6

    .line 6734
    .local v7, "dtotal":I
    if-lez v7, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    if-eqz v20, :cond_35

    .line 6736
    int-to-double v0, v4

    move-wide/from16 v20, v0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 6738
    .local v12, "loss":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 6740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v12, v13, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->updateLoss(IDI)V

    .line 6742
    const-string v8, ""

    .line 6743
    .local v8, "dumpString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 6744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 6745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6809
    :cond_d
    :goto_4
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v20, "#.##"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6810
    .local v5, "df":Ljava/text/DecimalFormat;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " rssi="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " [L]Incremental loss="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cumulative loss="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v21

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$15300(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "% loss="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "% volume="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v21

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$15400(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mLinkLossOccurred="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " linkspeed="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6817
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6820
    .end local v5    # "df":Ljava/text/DecimalFormat;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isAggressiveModeEnabled(I)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)Z

    move-result v20

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2f

    .line 6822
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "@L - dbad : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " loss : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mLinkLossOccurred : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6824
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_f

    const-string v20, "WifiWatchdogStateMachine"

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6825
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2c

    .line 6826
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "@L - Staying under last Poor link, r="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    .line 6827
    :cond_10
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "@L - Staying under last Poor link, r="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6828
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mStayingPoorRssi:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6832
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)D

    .line 6834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v20

    if-nez v20, :cond_2d

    .line 6837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$14602(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6840
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 6746
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mInAggGoodStateNow:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 6747
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_14

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - In Agg good Rx state"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6748
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    .line 6750
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastGoodRxRssi:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$15000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v20

    if-gez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastGoodRxRssi:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$15000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v20

    move/from16 v0, v20

    if-gt v0, v14, :cond_1a

    .line 6751
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_16

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - beyond Last good rssi"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6752
    :cond_16
    if-lez v4, :cond_19

    .line 6753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_18

    .line 6754
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_17

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - loss begin occurring"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6755
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6757
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static {v0, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)D

    goto/16 :goto_4

    .line 6760
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)D

    goto/16 :goto_4

    .line 6765
    :cond_1a
    const/16 v20, 0x1e

    move/from16 v0, v20

    if-ge v4, v0, :cond_1b

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_1f

    .line 6766
    :cond_1b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1c

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - (dbad >= 30) || (loss >= 0.5)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6767
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .line 6768
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_1d

    const/16 v20, 0x5

    move/from16 v0, v20

    if-lt v4, v0, :cond_1d

    .line 6769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .line 6770
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1d

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - (loss >= 0.5) && (dbad >= 5)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6795
    :cond_1d
    :goto_6
    if-nez v4, :cond_2b

    .line 6796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15104(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    .line 6797
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1e

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - loss has gone"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6798
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)D

    goto/16 :goto_4

    .line 6772
    :cond_1f
    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v4, v0, :cond_21

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_21

    .line 6773
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_20

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - (dbad > 4)&&(loss >= 0.1)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6774
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto :goto_6

    .line 6775
    :cond_21
    const/16 v20, -0x41

    move/from16 v0, v20

    if-ge v14, v0, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v20

    if-eqz v20, :cond_24

    const/16 v20, 0x4

    move/from16 v0, v20

    if-gt v4, v0, :cond_22

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_24

    .line 6776
    :cond_22
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_23

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - rssi < -65) && (mWifiInfo.is24GHz()) && ((dbad > 4)||(loss >= 0.1))"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6777
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto/16 :goto_6

    .line 6778
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_26

    const-wide v20, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v12, v20

    if-ltz v20, :cond_26

    .line 6779
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_25

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - (mWifiInfo.getLinkSpeed() <= 6) && (loss >= 0.1)"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto/16 :goto_6

    .line 6781
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v20

    cmpl-double v20, v12, v20

    if-lez v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v20

    const-wide v22, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_28

    .line 6782
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_27

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - loss increasing"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto/16 :goto_6

    .line 6784
    :cond_28
    if-lez v4, :cond_1d

    .line 6785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    if-nez v20, :cond_2a

    .line 6786
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_29

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - loss begin occurring"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6787
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkLossOccurred:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14808(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto/16 :goto_6

    .line 6789
    :cond_2a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_1d

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "@L - loss still can be seen, keep the value!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 6803
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLossHasGone:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPreviousLoss:D
    invoke-static {v0, v12, v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15202(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)D

    goto/16 :goto_4

    .line 6830
    :cond_2c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v20

    const-string v21, "HIT @L!!!"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 6844
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v21

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 6845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 6846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZII)V
    invoke-static {v0, v1, v2, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15900(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZII)V

    .line 6895
    .end local v4    # "dbad":I
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v8    # "dumpString":Ljava/lang/String;
    .end local v12    # "loss":D
    :cond_2e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$14602(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6898
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 6848
    .restart local v4    # "dbad":I
    .restart local v6    # "dgood":I
    .restart local v7    # "dtotal":I
    .restart local v8    # "dumpString":Ljava/lang/String;
    .restart local v12    # "loss":D
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v20

    if-nez v20, :cond_30

    .line 6849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$14602(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    .line 6850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6852
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mLastRssi:I

    goto/16 :goto_1

    .line 6857
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$15300(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v20

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpl-double v20, v20, v22

    if-lez v20, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$15400(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->POOR_LINK_MIN_VOLUME:D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16100()D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_34

    .line 6859
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v20

    if-eqz v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Poor link for link sample count, rssi="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6860
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 6861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    const/16 v21, 0x29

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 6862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    const/16 v21, 0xc

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 6865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2e

    .line 6866
    const/16 v20, -0x50

    move/from16 v0, v20

    if-ge v14, v0, :cond_32

    .line 6867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v21

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 6868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 6869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZII)V
    invoke-static {v0, v1, v2, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15900(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZII)V

    .line 6875
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12004(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    goto/16 :goto_7

    .line 6871
    :cond_32
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v20

    if-eqz v20, :cond_33

    const-string v20, "WifiWatchdogStateMachine"

    const-string v21, "from LinkMonitoring"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 6873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_8

    .line 6880
    :cond_34
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->mSampleCount:I

    goto/16 :goto_7

    .line 6885
    .end local v8    # "dumpString":Ljava/lang/String;
    .end local v12    # "loss":D
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v20

    if-eqz v20, :cond_2e

    .line 6886
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 6887
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v20, "#.##"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6888
    .restart local v5    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " rssi="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " [L]Incremental loss=0/0 cumulative loss="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    move-result-object v22

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$15300(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v22

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6903
    .end local v4    # "dbad":I
    .end local v5    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "dgood":I
    .end local v7    # "dtotal":I
    .end local v9    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v14    # "mrssi":I
    .end local v15    # "rssi":I
    .end local v16    # "now":J
    .end local v18    # "txbad":I
    .end local v19    # "txgood":I
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const-string v21, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6907
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v20

    if-eqz v20, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    const-string v21, "[LinkMonitoringState] EVENT_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6908
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWaitingSwitchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 6909
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 6646
    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21007 -> :sswitch_1
        0x2100b -> :sswitch_2
        0x21042 -> :sswitch_5
        0x25015 -> :sswitch_3
        0x25016 -> :sswitch_4
    .end sparse-switch
.end method
