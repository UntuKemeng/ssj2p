.class Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverConnectingState"
.end annotation


# instance fields
.field private mIsDetachRcvdFromRil:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method

.method private isDetachRcvdFromRil()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    return v0
.end method

.method private setDetachRcvdFromRil(Z)V
    .locals 0
    .param p1, "isDetachRcvdFromRil"    # Z

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->mIsDetachRcvdFromRil:Z

    .line 629
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 633
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Entered HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 635
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 636
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 637
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 641
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in Connecting state : Exiting HandoverConnecting State"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 643
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 644
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 648
    const/16 v26, 0x0

    .line 649
    .local v26, "status":Z
    const/16 v22, 0x0

    .line 650
    .local v22, "errorEnableEpdg":Z
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 897
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v4}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_0
    :goto_0
    return v26

    .line 654
    :pswitch_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ISSUE -- No response from RIL/IPSec/DNS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIms60()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFrameworkWOIntent(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 661
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 659
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto :goto_1

    .line 668
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->isDetachRcvdFromRil()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Disconnect received during Connecting phase"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 674
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 675
    .local v19, "cid":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    .line 676
    .local v7, "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Call Connected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    move/from16 v0, v19

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v2, v3, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v22

    .line 679
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$4200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Update conn status for cid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v2, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 685
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Connection successful. Resetting throttle timer."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 687
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->resetHandoverFailCount()V

    .line 691
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$4300(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 704
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0x11

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 709
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 710
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 713
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IMS APN throttled - delay notify handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_5
    :goto_3
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->cacheEpdgServerIpAddress()V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v22, :cond_0

    .line 724
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getTargetRilNetwork()I

    move-result v23

    .line 726
    .local v23, "mTargetRilNetwork":I
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Error while enable epdg, calling failure function"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/16 v22, 0x0

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4700(Lcom/sec/epdg/IPSecDataConnSM;III)V

    goto/16 :goto_0

    .line 707
    .end local v23    # "mTargetRilNetwork":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    goto :goto_2

    .line 715
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4600(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    goto :goto_3

    .line 736
    .end local v7    # "linkprop":Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
    .end local v19    # "cid":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v21

    .line 738
    .local v21, "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 741
    :cond_8
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->checkAndAddRouteForNextEpdgServerIp()Z

    move-result v24

    .line 743
    .local v24, "result":Z
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_9

    .line 744
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next epdg server ip address is available apn name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv4 address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipv6 addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v8, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 753
    .local v8, "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getDataConnectionHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v18

    .line 755
    .local v18, "apnAttachReq":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->what:I

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 758
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 759
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v8, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, v18

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 765
    .end local v8    # "connReqObj":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    .end local v18    # "apnAttachReq":Landroid/os/Message;
    :cond_9
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No new epdg server ip address is available, resetting the ip and counter"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 772
    .end local v24    # "result":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2900(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 774
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIms60()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFrameworkWOIntent(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 780
    :cond_b
    :goto_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 781
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/sec/epdg/IWlanConnectResult;

    .line 782
    .local v15, "AttResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual {v15}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v25

    .line 783
    .local v25, "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x2001

    if-ne v2, v3, :cond_c

    .line 784
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, " ATT MAX_CONNECTION_REACHED handling"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/sec/epdg/EpdgService;->setIsEpdgConnBlocked()V

    .line 788
    .end local v15    # "AttResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_c
    if-eqz v21, :cond_f

    .line 789
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/epdg/IWlanConnectResult;

    .line 790
    .local v20, "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 792
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is needed, so move to throttle state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVd2()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 795
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/epdg/IWlanConnectResult;

    .line 796
    .local v17, "Vd2Result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v25

    .line 797
    .restart local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_d

    .line 798
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Vd2 req. Handling auth fail."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendEpdgPermanantFailBroadcast()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$3000(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 805
    .end local v17    # "Vd2Result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_d
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->initConnectionWhenAuthFailDuringHandover()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->checkHandoverFailCounter()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 812
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 818
    :goto_5
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V

    .line 821
    .end local v20    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_f
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/epdg/IWlanConnectResult;

    .line 823
    .local v16, "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v25

    .line 824
    .restart local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13

    .line 825
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Rogers req. Handling auth fail."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/throttle/ThrottleController;->getPermanentErrorCount(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v25

    invoke-static {v2, v0, v3}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$2600(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 777
    .end local v16    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto/16 :goto_4

    .line 814
    .restart local v20    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    :cond_11
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Throttling is not needed for this error, so move to inactive state"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_5

    .line 831
    .end local v20    # "connectResult":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v16    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v9, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mPendingConnReqObj:Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    invoke-static {v2, v9}, Lcom/sec/epdg/IPSecDataConnSM;->access$3202(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;)Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsExistPendingConnReq:Z
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$3302(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto/16 :goto_0

    .line 839
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto/16 :goto_0

    .line 845
    .end local v16    # "RogersResult":Lcom/sec/epdg/IWlanConnectResult;
    .end local v21    # "curSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v25    # "resultError":Lcom/sec/epdg/IWlanError;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired(Z)Z
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1400(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 847
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "DNS query posted to Epdg service"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4900(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v3, 0xb

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 851
    :cond_14
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "No DNS retry required. Proceeding handling the Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_0

    .line 856
    :pswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_15

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleDnsResolutionFail()V
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1600(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 859
    :cond_15
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Proceeding Handling Connect Request"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I
    invoke-static {v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I

    goto/16 :goto_0

    .line 864
    :pswitch_5
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4500(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4600(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 874
    :pswitch_6
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM Current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Unexpected event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 880
    :pswitch_7
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received Disconnect Req: Marked for disconnect"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->setDetachRcvdFromRil(Z)V

    goto/16 :goto_0

    .line 884
    :pswitch_8
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Received W2L Req: Marked for W2L handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    move-object/from16 v0, p1

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 893
    :pswitch_a
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "Ignoring the Interface UP event as SM is in Connecting state. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method