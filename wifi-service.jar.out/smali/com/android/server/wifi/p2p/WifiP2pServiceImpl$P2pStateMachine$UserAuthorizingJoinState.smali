.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAuthorizingJoinState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 4792
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4796
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 4797
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->soundNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 4798
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 4844
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 4802
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4803
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 4836
    const/4 v0, 0x0

    .line 4838
    :goto_0
    return v0

    .line 4810
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4811
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWpsTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$9500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4812
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4813
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInvitationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4815
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 4816
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$21400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 4838
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4820
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->p2pStopFind()Z

    .line 4821
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    if-nez v0, :cond_1

    .line 4822
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4827
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 4828
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$21500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4824
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v2, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4831
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v1, "User rejected incoming request"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4832
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 4833
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$21600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4803
    :sswitch_data_0
    .sparse-switch
        0x23002 -> :sswitch_2
        0x23003 -> :sswitch_3
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
        0x24084 -> :sswitch_0
    .end sparse-switch
.end method