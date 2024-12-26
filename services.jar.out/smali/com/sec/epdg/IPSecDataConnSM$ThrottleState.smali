.class Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThrottleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 1386
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1390
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "SM entered in Throttle state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 1392
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "IMS APN entered in Throttle state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgRilSharedData;->setImsApnThrottled(Z)V

    .line 1396
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1397
    .local v0, "msgNetRegi":Landroid/os/Message;
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1398
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    .end local v0    # "msgNetRegi":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1404
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM exited from Throttle state"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x50

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1409
    const/4 v2, 0x0

    .line 1410
    .local v2, "status":Z
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SM Current State"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$8700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1474
    :pswitch_0
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_0
    :goto_0
    return v2

    .line 1414
    :pswitch_1
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data retry timer expired for apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 1424
    :pswitch_2
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$8800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unexpected event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1428
    :pswitch_3
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Request is throttled, no need to trigger handover, remain in throttle state only"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1432
    :pswitch_4
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Video call might end but need to be in this state until throttle timer expired"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :pswitch_5
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "As connect request is throttled, sending call status as failed to RIL"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V
    invoke-static {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V

    goto :goto_0

    .line 1442
    :pswitch_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v0, :cond_2

    .line 1443
    .local v0, "isWifiConnected":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    .line 1444
    if-eqz v0, :cond_0

    .line 1445
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1448
    const-string v4, "[IPSECDATACONNSM]"

    const-string v5, "IMS APN exited from Throttle state"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/epdg/EpdgRilSharedData;->setImsApnThrottled(Z)V

    .line 1450
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1451
    .local v1, "msgNetRegi":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1452
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1454
    .end local v1    # "msgNetRegi":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .end local v0    # "isWifiConnected":Z
    :cond_2
    move v0, v3

    .line 1442
    goto :goto_1

    .line 1458
    :pswitch_7
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface UP event as SM is in Throttle state."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1462
    :pswitch_8
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1465
    const-string v4, "[IPSECDATACONNSM]"

    const-string v5, "IMS APN exited from Throttle state"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/epdg/EpdgRilSharedData;->setImsApnThrottled(Z)V

    .line 1467
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1468
    .restart local v1    # "msgNetRegi":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 1469
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1471
    .end local v1    # "msgNetRegi":Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method
