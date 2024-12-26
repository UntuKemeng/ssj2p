.class Lcom/sec/epdg/EpdgService$EpdgHandler;
.super Landroid/os/Handler;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2763
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    .line 2764
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2765
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 52
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2769
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 2771
    .local v22, "cid":I
    const/16 v17, 0x0

    .line 2772
    .local v17, "apnType":Ljava/lang/String;
    const/16 v36, -0x1

    .line 2773
    .local v36, "networkType":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: cid - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3589
    const-string v2, "[RIL->EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3592
    :cond_0
    :goto_0
    return-void

    .line 2777
    :sswitch_0
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v33

    .line 2779
    .local v33, "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x5

    move-object/from16 v0, v33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v22

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    .line 2783
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2784
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    if-eqz v17, :cond_2

    .line 2786
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v36

    .line 2787
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;Z)V

    .line 2791
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportWeakSignalHO()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5400(Lcom/sec/epdg/EpdgService;)V

    .line 2794
    :cond_1
    # getter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2795
    invoke-static/range {v36 .. v36}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v2

    add-int/lit8 v21, v2, -0x1

    .line 2796
    .local v21, "checkCid":I
    if-lez v21, :cond_2

    .line 2797
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5502(Z)Z

    .line 2798
    const-string v2, "[EPDGService]"

    const-string v4, "During Connecting LTE was available, retryW2LHandoverIfRequired"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v17

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    .line 2804
    .end local v21    # "checkCid":I
    :cond_2
    const/16 v2, 0xb

    move/from16 v0, v36

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf

    move/from16 v0, v36

    if-ne v0, v2, :cond_4

    .line 2806
    :cond_3
    new-instance v31, Landroid/content/Intent;

    const-string v2, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2807
    .local v31, "infoToIMSCII":Landroid/content/Intent;
    const-string v2, "apntype"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    const-string v2, "ikeerror"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2809
    const-string v2, "count"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2810
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2812
    .end local v31    # "infoToIMSCII":Landroid/content/Intent;
    :cond_4
    # getter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5700()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 2813
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5702(I)I

    .line 2815
    :cond_5
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$4002(I)I

    goto/16 :goto_0

    .line 2820
    .end local v33    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_1
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2821
    const/16 v36, -0x1

    .line 2822
    if-eqz v17, :cond_6

    .line 2823
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v36

    .line 2824
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;Z)V

    .line 2829
    :cond_6
    const/16 v2, 0xb

    move/from16 v0, v36

    if-ne v0, v2, :cond_7

    .line 2836
    const-string v2, "[EPDGService]"

    const-string v4, "IPsec disconnected,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2839
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isIPsecDisconnectedUnexpectedly()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5800(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2842
    new-instance v27, Landroid/content/Intent;

    const-string v2, "com.sec.epdgservice.EPDG_DEREGISTER"

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2843
    .local v27, "deregiIntent":Landroid/content/Intent;
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2847
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 2853
    .end local v27    # "deregiIntent":Landroid/content/Intent;
    :cond_7
    :goto_1
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v33

    .line 2855
    .restart local v33    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v22

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .line 2849
    .end local v33    # "msgToHandoverSM":Landroid/os/Message;
    :cond_8
    const-string v2, "[EPDGService]"

    const-string v4, "IPsec is disconnected normally"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2861
    :sswitch_2
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v33

    .line 2863
    .restart local v33    # "msgToHandoverSM":Landroid/os/Message;
    const/4 v2, 0x6

    move-object/from16 v0, v33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v22

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    .line 2866
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 2867
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    if-eqz v17, :cond_9

    .line 2869
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v36

    .line 2870
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkType returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2872
    # getter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5500()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2873
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5502(Z)Z

    .line 2877
    :cond_9
    const/16 v2, 0xb

    move/from16 v0, v36

    if-eq v0, v2, :cond_a

    const/16 v2, 0xf

    move/from16 v0, v36

    if-ne v0, v2, :cond_b

    .line 2879
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v2, v4, :cond_b

    .line 2880
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/sec/epdg/IWlanConnectResult;

    .line 2881
    .local v43, "result":Lcom/sec/epdg/IWlanConnectResult;
    invoke-virtual/range {v43 .. v43}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v44

    .line 2882
    .local v44, "resultError":Lcom/sec/epdg/IWlanError;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v44 .. v44}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v44 .. v44}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v2

    const/16 v4, 0x18

    if-ne v2, v4, :cond_e

    .line 2884
    const-string v2, "[EPDGService]"

    const-string v4, "AUTHENTICATION_FAILED. Do not send fail intent here for Rogers"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    .end local v43    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v44    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_b
    :goto_2
    const/16 v2, 0xb

    move/from16 v0, v36

    if-ne v0, v2, :cond_c

    .line 2895
    const-string v2, "[EPDGService]"

    const-string v4, "IPsec Error/failure,  stop TEPDGLTE and 1x timer and allow mobile attach"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2898
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2900
    :cond_c
    # operator++ for: Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4008()I

    .line 2901
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setup failure count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    const-string v2, "ro.csc.sales_code"

    const-string v4, "none"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2903
    .local v45, "salesCode":Ljava/lang/String;
    const-string v2, "INS"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "INU"

    move-object/from16 v0, v45

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2904
    :cond_d
    # getter for: Lcom/sec/epdg/EpdgService;->mSetupFailureCount:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4000()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    .line 2905
    const-string v2, "[EPDGService]"

    const-string v4, "Sending intent to disable wifi calling."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 2907
    .local v32, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.epdg.DISABLE_WIFI_CALLING"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2908
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2886
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v45    # "salesCode":Ljava/lang/String;
    .restart local v43    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .restart local v44    # "resultError":Lcom/sec/epdg/IWlanError;
    :cond_e
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2887
    .local v16, "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v24, v2, 0x1

    .line 2888
    .local v24, "count":I
    invoke-virtual/range {v43 .. v43}, Lcom/sec/epdg/IWlanConnectResult;->getIwlanError()Lcom/sec/epdg/IWlanError;

    move-result-object v2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v2, v1}, Lcom/sec/epdg/EpdgService;->sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V

    goto/16 :goto_2

    .line 2914
    .end local v16    # "apnName":Ljava/lang/String;
    .end local v24    # "count":I
    .end local v33    # "msgToHandoverSM":Landroid/os/Message;
    .end local v43    # "result":Lcom/sec/epdg/IWlanConnectResult;
    .end local v44    # "resultError":Lcom/sec/epdg/IWlanError;
    :sswitch_3
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v33

    .line 2916
    .restart local v33    # "msgToHandoverSM":Landroid/os/Message;
    const/16 v2, 0x8

    move-object/from16 v0, v33

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$5100(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move/from16 v0, v22

    # invokes: Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V
    invoke-static {v2, v0, v4}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;II)V

    goto/16 :goto_0

    .line 2921
    .end local v33    # "msgToHandoverSM":Landroid/os/Message;
    :sswitch_4
    const-string v2, "[EPDGService]"

    const-string v4, "IWLAN_EVENT_CONNECT_INIT received. Ignore it."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2924
    :sswitch_5
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5900()Z

    move-result v4

    if-ne v2, v4, :cond_f

    .line 2925
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$5902(Z)Z

    .line 2927
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_10

    .line 2929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6000(Lcom/sec/epdg/EpdgService;)V

    .line 2935
    :cond_f
    :goto_3
    const/4 v2, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6200()Z

    move-result v4

    if-ne v2, v4, :cond_0

    .line 2936
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6202(Z)Z

    .line 2938
    const/4 v2, 0x2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v2, v4, :cond_11

    .line 2940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2931
    :cond_10
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger W2L is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6100()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2943
    :cond_11
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger L2W is not applicable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mActiveRat:I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6100()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2950
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 2951
    .local v19, "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .line 2952
    .local v23, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v22

    .line 2953
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    if-lez v22, :cond_12

    .line 2955
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 2957
    .local v34, "msgtoHandoverSM":Landroid/os/Message;
    const/16 v2, 0xf

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2958
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2959
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2961
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_12
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2967
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v23    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 2968
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    .line 2969
    .restart local v23    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;->getCid()I

    move-result v22

    .line 2970
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect request is received for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    if-lez v22, :cond_13

    .line 2972
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 2974
    .restart local v34    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2975
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2976
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2978
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_13
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2984
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v23    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 2985
    .local v38, "obj":Ljava/lang/Object;
    if-eqz v38, :cond_14

    move-object/from16 v0, v38

    instance-of v2, v0, Landroid/os/AsyncResult;

    if-eqz v2, :cond_14

    move-object/from16 v19, v38

    .line 2986
    check-cast v19, Landroid/os/AsyncResult;

    .line 2987
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 2989
    .local v23, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getCid()I

    move-result v22

    .line 2991
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v23    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_14
    if-lez v22, :cond_15

    .line 2992
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 2994
    .restart local v34    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x2

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2995
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2997
    const/4 v2, 0x1

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2998
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v34

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2999
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3001
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_15
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3007
    .end local v38    # "obj":Ljava/lang/Object;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 3008
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;

    .line 3010
    .local v23, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getCid()I

    move-result v22

    .line 3011
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->getRat()I

    move-result v40

    .line 3012
    .local v40, "rat":I
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;->isWifiOrMobile()Z

    move-result v51

    .line 3013
    .local v51, "wifiOrMobile":Z
    if-lez v22, :cond_18

    .line 3014
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 3016
    .restart local v34    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x4

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3017
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3018
    const/16 v2, 0xff

    move/from16 v0, v40

    if-ne v0, v2, :cond_16

    const/16 v2, 0xff

    :goto_4
    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3022
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3018
    :cond_16
    if-eqz v51, :cond_17

    const/16 v2, 0x30

    goto :goto_4

    :cond_17
    const/16 v2, 0x21

    goto :goto_4

    .line 3024
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_18
    const-string v2, "[RIL->EPDGService]"

    const-string v4, "Event received for invalid cid neglect it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3030
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v23    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnHandoverResponse;
    .end local v40    # "rat":I
    .end local v51    # "wifiOrMobile":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v39, v0

    .line 3031
    .local v39, "pdnType":I
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v39, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v36

    .line 3034
    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_19

    .line 3036
    :try_start_0
    const-string v2, "[HANDOFF]"

    const-string v4, "Fallback W2L handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v36

    # invokes: Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$6300(Lcom/sec/epdg/EpdgService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3038
    :catch_0
    move-exception v28

    .line 3039
    .local v28, "e":Landroid/os/RemoteException;
    const-string v2, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "W2L handover failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3042
    .end local v28    # "e":Landroid/os/RemoteException;
    :cond_19
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid network type for W2L handover, networkType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3049
    .end local v39    # "pdnType":I
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 3050
    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_L2W_IF_REQUIRED event received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v17

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3056
    :sswitch_c
    const-string v2, "[EPDGService]"

    const-string v4, "DATA_RETRY_TIMER_EXPIRED event received."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3058
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/Pair;

    .line 3059
    .local v18, "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v2, v4}, Lcom/sec/epdg/EpdgService;->access$6400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3062
    .end local v18    # "args":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DNS_RETRY_TIMER_EXPIRY:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    # invokes: Lcom/sec/epdg/EpdgService;->performDnsAndGetResult(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$2600(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3065
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_1a

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v2, v4, :cond_1b

    .line 3067
    :cond_1a
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 3069
    :cond_1b
    const-string v2, "[EPDGService]"

    const-string v4, "No need to start DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 3073
    :cond_1c
    const-string v2, "[EPDGService]"

    const-string v4, "No need to restart DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 3077
    :cond_1d
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->resetTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 3082
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_20

    .line 3083
    const-string v2, "[EPDGService]"

    const-string v4, "Posting Epdg NOT Available as DNS fails"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3085
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3086
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 3090
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_1e

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v2, v4, :cond_1f

    .line 3092
    :cond_1e
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode or no voice RAT or call active, start DNS retry timer voice rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " call status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgPeriodicDns;->startTimerForPeriodicDns()V

    goto/16 :goto_0

    .line 3097
    :cond_1f
    const-string v2, "[EPDGService]"

    const-string v4, "No need to start DNS retry timer"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3100
    :cond_20
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3105
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 3106
    .restart local v16    # "apnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_21

    .line 3107
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Posting Epdg NOT Available to Framework and RIL. Triggered by failure of:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " APN ipsec connection over ePDG."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    goto/16 :goto_0

    .line 3113
    :cond_21
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi is disconnected. EPDG is already UNAVAILABLE"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3118
    .end local v16    # "apnName":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    .line 3119
    .local v25, "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getCid()I

    move-result v3

    .line 3120
    .local v3, "apnConnCid":I
    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getApnType()Ljava/lang/String;

    move-result-object v17

    .line 3121
    const/4 v8, 0x0

    .line 3122
    .local v8, "isPermanentFail":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update apn connection status for apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 3126
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPermanentFail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isConnSuccess()Z

    move-result v4

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->getLinkProp()Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->isHandover()Z

    move-result v6

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isAttachApn(I)Z

    move-result v7

    invoke-interface/range {v2 .. v8}, Lcom/sec/epdg/EpdgRilInterface;->updateApnConnStatus(IZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;ZZZ)V

    goto/16 :goto_0

    .line 3133
    .end local v3    # "apnConnCid":I
    .end local v8    # "isPermanentFail":Z
    .end local v25    # "data":Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Boolean;

    .line 3134
    .local v30, "handoverToWifi":Ljava/lang/Boolean;
    invoke-static/range {v22 .. v22}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v49

    .line 3136
    .local v49, "supressW2L":Z
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger HO. Cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handovertoWifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "supressW2L: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    if-eqz v49, :cond_22

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    .line 3140
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 3142
    .restart local v34    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3143
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3144
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3146
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 3147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6600(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegisteringToMobile()Z

    move-result v2

    if-nez v2, :cond_23

    .line 3148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v22

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    .line 3150
    :cond_23
    const-string v2, "[EPDGService]"

    const-string v4, "Delay Trigger HO - IMS registering"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3154
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v0, v22

    invoke-interface {v2, v0, v4}, Lcom/sec/epdg/EpdgRilInterface;->triggerHandover(IZ)V

    goto/16 :goto_0

    .line 3160
    .end local v30    # "handoverToWifi":Ljava/lang/Boolean;
    .end local v49    # "supressW2L":Z
    :sswitch_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    const/16 v43, 0x1

    .line 3161
    .local v43, "result":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 3162
    .restart local v17    # "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying registrants, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v43

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3160
    .end local v43    # "result":Z
    :cond_25
    const/16 v43, 0x0

    goto :goto_5

    .line 3165
    .restart local v43    # "result":Z
    :cond_26
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 3166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v43

    move-object/from16 v1, v17

    # invokes: Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/sec/epdg/EpdgService;->access$6800(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 3171
    .end local v43    # "result":Z
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$6900(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3176
    :sswitch_14
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v42

    .line 3178
    .local v42, "reportDnsStatus":Landroid/os/Message;
    const/16 v2, 0xc

    move-object/from16 v0, v42

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3180
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3181
    const-string v2, "[EPDGService]"

    const-string v4, "No DNS packets need to be sent to EPDG. DNS already resolved!"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3182
    const/4 v2, 0x1

    move-object/from16 v0, v42

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3183
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3186
    :cond_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/Boolean;

    .line 3187
    .local v35, "needFlush":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v35

    if-ne v0, v2, :cond_28

    sget-object v41, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DATA_RETRY_8MIN_ONWARD_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    .line 3189
    .local v41, "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    :goto_6
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v43

    .line 3191
    .restart local v43    # "result":Z
    const/4 v2, 0x1

    move/from16 v0, v43

    if-ne v2, v0, :cond_29

    .line 3192
    const-string v2, "[EPDGService]"

    const-string v4, "DNS Resolution was succesful."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiProfiling()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$3100(Lcom/sec/epdg/EpdgService;)V

    .line 3194
    const/4 v2, 0x1

    move-object/from16 v0, v42

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3195
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3187
    .end local v41    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .end local v43    # "result":Z
    :cond_28
    sget-object v41, Lcom/sec/epdg/EpdgService$DnsRetryReason;->DNS_TTL_CHECK:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    goto :goto_6

    .line 3198
    .restart local v41    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .restart local v43    # "result":Z
    :cond_29
    const-string v2, "[EPDGService]"

    const-string v4, "DNS resolution failed."

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    const/4 v2, 0x0

    move-object/from16 v0, v42

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3200
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3205
    .end local v35    # "needFlush":Ljava/lang/Boolean;
    .end local v41    # "reason":Lcom/sec/epdg/EpdgService$DnsRetryReason;
    .end local v42    # "reportDnsStatus":Landroid/os/Message;
    .end local v43    # "result":Z
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->handleMapconChange()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7000(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3208
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3212
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3216
    :sswitch_18
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCallInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;Z)V

    .line 3220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3227
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3232
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3237
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    .line 3238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 3242
    :sswitch_1c
    const-string v2, "[EPDGService]"

    const-string v4, "Wifi ip config timer finished, call DNS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    # invokes: Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7300()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7400(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 3244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7500(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3248
    :sswitch_1d
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 3253
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3254
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->pollAndGetWifiRssi()V

    .line 3255
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto/16 :goto_0

    .line 3260
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    .line 3261
    .local v20, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CALL_STATUS_CHANGE event, call status is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3264
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_2e

    .line 3265
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3266
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 3272
    :cond_2a
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    .line 3326
    :cond_2b
    :goto_7
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_2c

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_2c

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_3b

    .line 3329
    :cond_2c
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    .line 3330
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    .line 3331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3332
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 3334
    :cond_2d
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7800(Ljava/lang/String;)V

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3274
    :cond_2e
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-eq v0, v2, :cond_2f

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_31

    .line 3276
    :cond_2f
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3277
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_7

    .line 3280
    :cond_30
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_7

    .line 3283
    :cond_31
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_2b

    .line 3284
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_32

    .line 3285
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v4

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    const/16 v6, -0x64

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    if-nez v2, :cond_35

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v2

    :goto_8
    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    .line 3289
    :cond_32
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getE911CallCount()I

    move-result v29

    .line 3290
    .local v29, "e911CallCount":I
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v37

    .line 3291
    .local v37, "nonE911CallCount":I
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nonE911CallCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    const/4 v2, 0x1

    move/from16 v0, v29

    if-lt v0, v2, :cond_36

    .line 3294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3295
    invoke-static/range {v29 .. v29}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    .line 3307
    :cond_33
    :goto_9
    const/4 v2, 0x1

    move/from16 v0, v37

    if-lt v0, v2, :cond_38

    .line 3308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3309
    invoke-static/range {v37 .. v37}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 3321
    :cond_34
    :goto_a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7800(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3285
    .end local v29    # "e911CallCount":I
    .end local v37    # "nonE911CallCount":I
    :cond_35
    const/16 v2, -0x64

    goto :goto_8

    .line 3297
    .restart local v29    # "e911CallCount":I
    .restart local v37    # "nonE911CallCount":I
    :cond_36
    if-nez v29, :cond_37

    .line 3298
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_33

    .line 3299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3301
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    goto :goto_9

    .line 3305
    :cond_37
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3311
    :cond_38
    if-nez v37, :cond_39

    .line 3312
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_34

    .line 3313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3315
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    goto :goto_a

    .line 3319
    :cond_39
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid non e911 call count"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 3323
    .end local v29    # "e911CallCount":I
    .end local v37    # "nonE911CallCount":I
    :cond_3a
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_2b

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 3336
    :cond_3b
    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_43

    .line 3337
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    .line 3338
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3339
    const-string v2, "[EPDGService]"

    const-string v4, "IPME is connected skip stop LTE profiling"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    :cond_3c
    :goto_b
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3346
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startCdmaProfiling()V

    .line 3348
    :cond_3d
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3e

    .line 3349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getEmergencyApnType()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3350
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousE911CallCount(I)V

    .line 3353
    :cond_3e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getPreviousNonE911CallCount()I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3f

    .line 3354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3355
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 3358
    :cond_3f
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7900()V

    .line 3359
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3360
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3361
    .restart local v16    # "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 3362
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 3363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, v16

    # invokes: Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$8000(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v46

    .line 3364
    .local v46, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v46, :cond_40

    .line 3365
    invoke-virtual/range {v46 .. v46}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v26

    .line 3366
    .local v26, "dataRetryExpired":Landroid/os/Message;
    if-eqz v26, :cond_42

    .line 3367
    const-string v2, "[EPDGService]"

    const-string v4, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    const/16 v2, 0xd

    move-object/from16 v0, v26

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3370
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 3379
    .end local v16    # "apnName":Ljava/lang/String;
    .end local v26    # "dataRetryExpired":Landroid/os/Message;
    .end local v46    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_40
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3341
    :cond_41
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_3c

    .line 3342
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    goto/16 :goto_b

    .line 3372
    .restart local v16    # "apnName":Ljava/lang/String;
    .restart local v26    # "dataRetryExpired":Landroid/os/Message;
    .restart local v46    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_42
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 3381
    .end local v16    # "apnName":Ljava/lang/String;
    .end local v26    # "dataRetryExpired":Landroid/os/Message;
    .end local v46    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_43
    const-string v2, "[EPDGService]"

    const-string v4, "Unhandled case"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3386
    .end local v20    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 3387
    .local v15, "IpmeStatus":Z
    if-nez v15, :cond_45

    .line 3388
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-nez v2, :cond_44

    .line 3389
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_IDLE_PROFILING:Z

    if-nez v2, :cond_44

    .line 3390
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopLteProfiling()V

    .line 3393
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3395
    :cond_45
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startLteProfiling()V

    goto/16 :goto_0

    .line 3400
    .end local v15    # "IpmeStatus":Z
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_47

    const/4 v13, 0x1

    :goto_d
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3403
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8200(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3400
    :cond_47
    const/4 v13, 0x0

    goto :goto_d

    .line 3407
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_49

    const/4 v13, 0x1

    :goto_e
    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3410
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8300(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3407
    :cond_49
    const/4 v13, 0x0

    goto :goto_e

    .line 3414
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2100(Lcom/sec/epdg/EpdgService;)I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 3415
    const/16 v2, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgService$EpdgHandler;->removeMessages(I)V

    .line 3416
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3421
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isWifiConnected()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$2200(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3427
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4b

    const/4 v11, 0x1

    :goto_f
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3430
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8500(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3427
    :cond_4b
    const/4 v11, 0x0

    goto :goto_f

    .line 3435
    :sswitch_26
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_4f

    .line 3436
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-nez v2, :cond_4d

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3439
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3440
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3442
    :cond_4c
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3444
    :cond_4d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/16 v4, 0x12

    if-ne v2, v4, :cond_4e

    .line 3446
    const-string v2, "[EPDGService]"

    const-string v4, "IMS_REG_STATUS_CHANGE case 1"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;Z)V

    .line 3484
    :cond_4e
    :goto_10
    # getter for: Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9100()Lcom/sec/epdg/EpdgService$HoDelayStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v2, v4, :cond_0

    .line 3485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    goto/16 :goto_0

    .line 3449
    :cond_4f
    # getter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8600()Z

    move-result v2

    if-eqz v2, :cond_53

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->DEREG_SUCCEEDED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_53

    .line 3452
    const-string v2, "[EPDGService]"

    const-string v4, "DE-registration finished. start WIFI disconnection"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->IsNeedDeregi()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$3300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3455
    const-string v2, "[EPDGService]"

    const-string v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3457
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-nez v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8700(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3459
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$8800(Lcom/sec/epdg/EpdgService;Z)V

    .line 3464
    :cond_50
    # getter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$8900()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 3465
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v22

    .line 3466
    if-lez v22, :cond_51

    .line 3467
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4500()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v2

    add-int/lit8 v4, v22, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v34

    .line 3469
    .restart local v34    # "msgtoHandoverSM":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v34

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3470
    move/from16 v0, v22

    move-object/from16 v1, v34

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3471
    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 3472
    const-string v2, "[EPDGService]"

    const-string v4, "disconnect ims pdn after de-registered "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    .end local v34    # "msgtoHandoverSM":Landroid/os/Message;
    :cond_51
    const/4 v2, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$8902(Z)Z

    .line 3476
    :cond_52
    const-string v2, "[EPDGService]"

    const-string v4, "Delay send ims registration status to wifi module"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x54

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_10

    .line 3478
    :cond_53
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v2

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_BLOCKED:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v2, v4, :cond_4e

    .line 3479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    # invokes: Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$9000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    .line 3480
    const-string v2, "[EPDGService]"

    const-string v4, "start EPDG disconnection "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3482
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_10

    .line 3490
    :sswitch_27
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received VOPS_STATUS_CHANGED as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$9200(Lcom/sec/epdg/EpdgService;I)V

    goto/16 :goto_0

    .line 3495
    :sswitch_28
    const-string v2, "[EPDGService]"

    const-string v4, "Received DNS ping result"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3499
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "apnType":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 3500
    .restart local v17    # "apnType":Ljava/lang/String;
    if-eqz v17, :cond_54

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9300(Lcom/sec/epdg/EpdgService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3502
    const-string v2, "[EPDGService]"

    const-string v4, "Send cdma availability to IMS"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;Z)V

    .line 3505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$9400(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 3508
    :cond_54
    const-string v2, "[EPDGService]"

    const-string v4, "Invalid APNType"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3513
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_55

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    .line 3514
    :goto_11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_56

    const/4 v2, 0x1

    :goto_12
    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z
    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgService;->access$2900(Lcom/sec/epdg/EpdgService;Z)Z

    goto/16 :goto_0

    .line 3513
    :cond_55
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v17

    goto :goto_11

    .line 3515
    :cond_56
    const/4 v2, 0x0

    goto :goto_12

    .line 3523
    :sswitch_2b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_58

    const/16 v43, 0x1

    .line 3524
    .restart local v43    # "result":Z
    :goto_13
    if-eqz v43, :cond_59

    .line 3528
    # invokes: Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9500()Z

    move-result v2

    if-nez v2, :cond_57

    .line 3529
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 3531
    :cond_57
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$7800(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3523
    .end local v43    # "result":Z
    :cond_58
    const/16 v43, 0x0

    goto :goto_13

    .line 3536
    .restart local v43    # "result":Z
    :cond_59
    # invokes: Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9600()Z

    move-result v2

    if-nez v2, :cond_5a

    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 3537
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$7900()V

    goto/16 :goto_0

    .line 3536
    :cond_5a
    const/4 v2, 0x0

    goto :goto_14

    .line 3542
    .end local v43    # "result":Z
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 3543
    .restart local v19    # "asyncRes":Landroid/os/AsyncResult;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;

    .line 3545
    .local v47, "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    invoke-virtual/range {v47 .. v47}, Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;->getVoiceFactor()I

    move-result v50

    .line 3546
    .local v50, "voiceFactor":I
    const/16 v2, 0x64

    move/from16 v0, v50

    if-ne v0, v2, :cond_5b

    .line 3547
    const-string v2, "[EPDGService]"

    const-string v4, "Voice factor is 100. Ignore it"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3548
    :cond_5b
    if-nez v50, :cond_5d

    .line 3549
    const-string v2, "[EPDGService]"

    const-string v4, "Voice call is barred 100% using SSAC"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3551
    const/4 v2, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9800(Z)V

    .line 3552
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/sec/epdg/EpdgService;->access$8100(Lcom/sec/epdg/EpdgService;ZZZZZ)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    sget-object v4, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    # invokes: Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$7200(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 3555
    :cond_5c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(IZ)V
    invoke-static {v2, v4, v5}, Lcom/sec/epdg/EpdgService;->access$9900(Lcom/sec/epdg/EpdgService;IZ)V

    goto/16 :goto_0

    .line 3558
    :cond_5d
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9700()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3559
    const/4 v2, 0x1

    # invokes: Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9800(Z)V

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(IZ)V
    invoke-static {v2, v4, v5}, Lcom/sec/epdg/EpdgService;->access$9900(Lcom/sec/epdg/EpdgService;IZ)V

    goto/16 :goto_0

    .line 3566
    .end local v19    # "asyncRes":Landroid/os/AsyncResult;
    .end local v47    # "ssacInfo":Lcom/sec/epdg/EpdgRilInterface$IilSsacUpdate;
    .end local v50    # "voiceFactor":I
    :sswitch_2d
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5e

    const/16 v48, 0x1

    .line 3567
    .local v48, "status":Z
    :goto_15
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received EPDG_WFCPROFILE_READ as: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move/from16 v0, v48

    # invokes: Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V
    invoke-static {v2, v0}, Lcom/sec/epdg/EpdgService;->access$10000(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 3566
    .end local v48    # "status":Z
    :cond_5e
    const/16 v48, 0x0

    goto :goto_15

    .line 3572
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->initAfterimsReady()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$10100(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3576
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateNetRegist()V
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$10200(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 3580
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    # invokes: Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgService;->access$10300(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3584
    :sswitch_31
    const-string v2, "[EPDGService]"

    const-string v4, "Send ims registration infor to wifi module"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService$EpdgHandler;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V
    invoke-static {v2, v4}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;Z)V

    goto/16 :goto_0

    .line 2775
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_15
        0x1d -> :sswitch_13
        0x1e -> :sswitch_12
        0x1f -> :sswitch_b
        0x21 -> :sswitch_c
        0x22 -> :sswitch_11
        0x23 -> :sswitch_a
        0x25 -> :sswitch_f
        0x26 -> :sswitch_10
        0x29 -> :sswitch_7
        0x2a -> :sswitch_9
        0x2b -> :sswitch_8
        0x2c -> :sswitch_6
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_4
        0x34 -> :sswitch_14
        0x35 -> :sswitch_5
        0x36 -> :sswitch_23
        0x37 -> :sswitch_24
        0x38 -> :sswitch_16
        0x39 -> :sswitch_17
        0x3a -> :sswitch_19
        0x3b -> :sswitch_18
        0x3c -> :sswitch_1a
        0x3d -> :sswitch_1d
        0x3e -> :sswitch_1f
        0x3f -> :sswitch_21
        0x40 -> :sswitch_26
        0x41 -> :sswitch_1b
        0x42 -> :sswitch_22
        0x43 -> :sswitch_25
        0x45 -> :sswitch_27
        0x46 -> :sswitch_29
        0x47 -> :sswitch_2a
        0x48 -> :sswitch_1e
        0x49 -> :sswitch_2b
        0x4a -> :sswitch_2c
        0x4b -> :sswitch_2d
        0x4c -> :sswitch_2e
        0x4d -> :sswitch_1c
        0x4e -> :sswitch_20
        0x50 -> :sswitch_2f
        0x51 -> :sswitch_e
        0x52 -> :sswitch_d
        0x53 -> :sswitch_30
        0x54 -> :sswitch_31
        0x50000 -> :sswitch_28
    .end sparse-switch
.end method
