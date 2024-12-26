.class Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 17923
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 17928
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$22500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17929
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Enter DisconnectingState State scan interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLegacyPnoEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 17941
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 17942
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Disconnecting Watchdog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 17943
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20060

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v3, v3, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 17945
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 17949
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    invoke-static {v1, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 17950
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 17977
    const/4 v0, 0x0

    .line 17979
    :cond_0
    :goto_0
    return v0

    .line 17952
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v0, :cond_0

    .line 17953
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$46000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 17957
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$46100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 17960
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 17961
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "disconnecting watchdog! -> disconnect"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 17962
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 17963
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$46200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 17972
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$46300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 17973
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 17974
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$46400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 17950
    nop

    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_1
        0x20048 -> :sswitch_0
        0x20060 -> :sswitch_2
        0x24006 -> :sswitch_3
    .end sparse-switch
.end method
