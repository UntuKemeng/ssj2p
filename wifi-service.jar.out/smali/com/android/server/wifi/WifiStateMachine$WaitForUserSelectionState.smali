.class Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForUserSelectionState"
.end annotation


# instance fields
.field private mPoorType:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1

    .prologue
    .line 16259
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 16260
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 16264
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16265
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$40100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    .line 16266
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0xb

    const/4 v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$40200(Lcom/android/server/wifi/WifiStateMachine;IZ)Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 16269
    const-string v1, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16270
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$40300(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16271
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "keep connection for KTCM"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16272
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$40400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 16276
    :cond_1
    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 16281
    const-string v1, "WifiStateMachine"

    const-string v2, "wrong state change!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16282
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$35100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$40500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 16285
    :goto_0
    return-void

    .line 16278
    :pswitch_0
    iget v1, v0, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    goto :goto_0

    .line 16276
    nop

    :pswitch_data_0
    .packed-switch 0x21015
        :pswitch_0
    .end packed-switch
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 16373
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0xb

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getBroadcastNotificationMessage(IZ)Landroid/content/Intent;
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$40200(Lcom/android/server/wifi/WifiStateMachine;IZ)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    .line 16375
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 16288
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 16368
    :cond_0
    :goto_0
    return v3

    .line 16290
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_5

    move v1, v3

    .line 16291
    .local v1, "keepConnection":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CMD_USER_SELECTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16293
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiStateMachine"

    const-string v6, "CMD_USER_SELECTION - setLastSelectedConfiguration(-1)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16294
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 16296
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastManualConnectedNetId:I
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$20802(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 16300
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 16301
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 16303
    if-eqz v1, :cond_c

    .line 16304
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "keep connection"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16305
    :cond_2
    const-string v2, "1"

    .line 16307
    .local v2, "nextValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 16308
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 16309
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    .line 16310
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-ne v4, v8, :cond_6

    .line 16312
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skipInternetCheck - This is first Confimation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16313
    :cond_3
    const-string v2, "1"

    .line 16330
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    const-string v6, "skip_internet_check"

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 16334
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 16335
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    .line 16336
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 16338
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheckConfirmedOnThisConnection(Z)V

    .line 16339
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$40600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .end local v1    # "keepConnection":Z
    .end local v2    # "nextValue":Ljava/lang/String;
    :cond_5
    move v1, v4

    .line 16290
    goto/16 :goto_1

    .line 16314
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "keepConnection":Z
    .restart local v2    # "nextValue":Ljava/lang/String;
    :cond_6
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-nez v4, :cond_8

    .line 16316
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skipInternetCheck - User previously selected [Cancel]. Pressed [Ok] on second time."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16317
    :cond_7
    const-string v2, "2"

    goto :goto_2

    .line 16318
    :cond_8
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-ne v4, v3, :cond_a

    .line 16320
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skipInternetCheck - This is second Confimation."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16321
    :cond_9
    const-string v2, "2"

    goto/16 :goto_2

    .line 16324
    :cond_a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skipInternetCheck - User double-confirmed to skipInternetCheck"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16325
    :cond_b
    const-string v2, "2"

    goto/16 :goto_2

    .line 16341
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "nextValue":Ljava/lang/String;
    :cond_c
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v6, "disable connection"

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 16342
    :cond_d
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v5, v10, :cond_e

    .line 16344
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const-string v7, "usable_internet"

    const-string v8, "0"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 16348
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    .line 16350
    :cond_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$17300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    const-string v7, "skip_internet_check"

    const-string v8, "0"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 16354
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 16355
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    .line 16356
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 16357
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v9, v10, :cond_f

    move v4, v3

    :cond_f
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    .line 16360
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$40700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 16288
    nop

    :pswitch_data_0
    .packed-switch 0x20136
        :pswitch_0
    .end packed-switch
.end method
