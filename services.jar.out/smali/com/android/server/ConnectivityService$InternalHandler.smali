.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3774
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3775
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3776
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3780
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 3907
    :cond_0
    :goto_0
    return-void

    .line 3783
    :sswitch_0
    const/4 v2, 0x0

    .line 3784
    .local v2, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v13

    .line 3785
    :try_start_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)I

    move-result v14

    if-ne v12, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3787
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v2

    .line 3792
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3793
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/16 v13, 0x18

    if-ne v12, v13, :cond_2

    .line 3794
    const-string v12, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .line 3790
    :cond_1
    :try_start_1
    monitor-exit v13

    goto :goto_0

    .line 3792
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 3796
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetTransition Wakelock ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v2, :cond_3

    const-string/jumbo v2, "unknown"

    .end local v2    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cleared because we found a replacement network"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    goto :goto_0

    .line 3802
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 3806
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 3807
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v12, v5}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3812
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 3813
    .local v7, "networkType":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v3, 0x1

    .line 3814
    .local v3, "enabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v12, v7, v3}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3813
    .end local v3    # "enabled":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 3819
    .end local v7    # "networkType":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    .line 3824
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 3825
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v12, "newProxy"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/ProxyInfo;

    .line 3826
    .local v8, "newProxy":Landroid/net/ProxyInfo;
    const-string/jumbo v12, "oldProxy"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/ProxyInfo;

    .line 3829
    .local v9, "oldProxy":Landroid/net/ProxyInfo;
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    invoke-static {v12, v8}, Lcom/android/server/ConnectivityService;->access$4502(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 3831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    invoke-static {v12, v13}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 3835
    :cond_5
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    invoke-static {v12, v8}, Lcom/android/server/ConnectivityService;->access$4702(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    .line 3838
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyInfo;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v12

    if-nez v12, :cond_0

    .line 3839
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyInfo;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyInfo;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyInfo;)V
    invoke-static {v12, v13}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    .line 3846
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v8    # "newProxy":Landroid/net/ProxyInfo;
    .end local v9    # "oldProxy":Landroid/net/ProxyInfo;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    .line 3850
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 3854
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 3859
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_0

    .line 3864
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    invoke-static {v12, v0}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3868
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    invoke-static {v13, v12, v14}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    .line 3872
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkRequest;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v13, v12, v14}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    .line 3876
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_3
    # invokes: Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    invoke-static {v15, v12, v13, v14}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 3880
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 3884
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleMobileDataAlwaysOn()V
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3889
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3894
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/Network;

    # invokes: Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v13, v12}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    .line 3895
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 3896
    .local v11, "slot":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 3897
    .local v10, "reason":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v12

    invoke-virtual {v12, v6, v11, v10}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_0

    .line 3901
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v10    # "reason":I
    .end local v11    # "slot":I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3902
    .restart local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v12, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_4

    .line 3780
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_6
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_c
        0x17 -> :sswitch_7
        0x18 -> :sswitch_0
        0x19 -> :sswitch_12
        0x1a -> :sswitch_a
        0x1b -> :sswitch_b
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1e -> :sswitch_f
        0x1f -> :sswitch_a
        0x64 -> :sswitch_5
        0x8100b -> :sswitch_10
        0x8100c -> :sswitch_11
    .end sparse-switch
.end method
