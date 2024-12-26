.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingSwitchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 6955
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const v5, 0x21041

    const/4 v4, 0x0

    .line 6958
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6959
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchableCondition:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$29900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6960
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 6961
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 6966
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 6967
    return-void

    .line 6963
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30100(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 6964
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 6971
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6972
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v1, 0x21041

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30300(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 6973
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6977
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v2, v3

    .line 7033
    :goto_0
    return v2

    .line 6980
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_MOBILE_HIPRI_CONNECTED / EVENT_MOBILE_CONNECTED :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6982
    :cond_0
    const-wide/16 v6, 0x3c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 6983
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "Wait to be connected MOBILE completely."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6988
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchable:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 6989
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    if-le v6, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    :cond_1
    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v5, v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    .line 6992
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$23600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_2
    move v2, v4

    .line 7033
    goto :goto_0

    .line 6985
    :catch_0
    move-exception v0

    .line 6986
    .local v0, "ex":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WaitingSwitchState sleep exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 6996
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :sswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14008(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    .line 6997
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_SWITCH_TIMEOUT : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 6998
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6999
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v5

    const-string v6, "enableHIPRI"

    invoke-virtual {v5, v3, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 7002
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "[WaitingSwitchState] stop FEATURE_ENABLE_HIPRI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7003
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 7005
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-le v5, v2, :cond_5

    .line 7006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pause qualifying for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "1800000ms"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7007
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$30900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 7008
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 7009
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 7010
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v2, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    .line 7012
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$31000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 7006
    :cond_6
    const-string v2, "a while"

    goto :goto_3

    .line 7016
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "[WaitingSwitchState]CMD_QUALITY_RECHECK"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$31100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7021
    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "[WaitingSwitchState]EVENT_AUTHENTICATION_COMPLETE"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$31200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7026
    :sswitch_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "[QualityCheckingState] EVENT_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$31300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6977
    nop

    :sswitch_data_0
    .sparse-switch
        0x2100c -> :sswitch_2
        0x2103f -> :sswitch_0
        0x21040 -> :sswitch_0
        0x21041 -> :sswitch_1
        0x21042 -> :sswitch_4
        0x21047 -> :sswitch_3
    .end sparse-switch
.end method
