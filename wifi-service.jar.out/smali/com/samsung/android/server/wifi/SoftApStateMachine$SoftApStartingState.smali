.class Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3500(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/os/Message;

    move-result-object v0

    .line 1007
    .local v0, "message":Landroid/os/Message;
    const-string v1, "SoftApStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside SoftApStarting state inside enter message.what"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x20015

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x20135

    if-ne v1, v2, :cond_6

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1011
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2001b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1039
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v1

    if-nez v1, :cond_4

    .line 1014
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x20019

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 1015
    const-string v1, "1"

    const-string v2, "net.forward.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1016
    const-string v1, "net.forward.disable"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_2
    const-string v1, "100"

    const-string v2, "net.leasetime"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1019
    const-string v1, "net.leasetime"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1021
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v1

    if-lez v1, :cond_3

    .line 1022
    const-string v1, "net.forward.disable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v1, "net.leasetime"

    const-string v2, "100"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v2, "net.forward.disable = 1, net.leasetime = 100"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    .line 1032
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2900(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    goto :goto_1

    .line 1037
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1042
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SoftApStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1081
    :goto_0
    :pswitch_0
    return v1

    .line 1047
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3900(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/os/Message;)V

    :goto_1
    move v1, v2

    .line 1081
    goto :goto_0

    .line 1050
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1051
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mRVFMode:I
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)I

    move-result v1

    if-lez v1, :cond_1

    .line 1054
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 1057
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3800(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 1059
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v3, "Softap config is null!"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4000(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v3, 0x20017

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1064
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4200(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 1066
    const-string v1, "SoftApStateMachine"

    const-string v3, "SoftApStartingState and transition to softapstartedstate"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1069
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 1070
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2502(Lcom/samsung/android/server/wifi/SoftApStateMachine;I)I

    .line 1071
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1072
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApIface(Z)V

    .line 1075
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$SoftApStartingState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4300(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$4400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 1076
    const-string v1, "SoftApStateMachine"

    const-string v3, "SoftApStartingState and transition to Initial state because of failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1043
    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
