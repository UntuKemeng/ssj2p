.class Lcom/android/server/net/NetworkPolicyManagerService$23;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 4041
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4044
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    sparse-switch v29, :sswitch_data_0

    .line 4207
    const/16 v29, 0x0

    :goto_0
    return v29

    .line 4046
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4047
    .local v27, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 4048
    .local v28, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4049
    .local v14, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v14, :cond_1

    .line 4050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4051
    .local v15, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v15, :cond_0

    .line 4053
    :try_start_0
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v15, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4049
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4058
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4059
    const/16 v29, 0x1

    goto :goto_0

    .line 4062
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v27    # "uid":I
    .end local v28    # "uidRules":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [Ljava/lang/String;

    move-object/from16 v20, v29

    check-cast v20, [Ljava/lang/String;

    .line 4063
    .local v20, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4064
    .restart local v14    # "length":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v14, :cond_3

    .line 4065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4066
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v15, :cond_2

    .line 4068
    :try_start_1
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4064
    :cond_2
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 4073
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4074
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4077
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v20    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 4079
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 4082
    :try_start_2
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4084
    .local v12, "imsIface":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;

    move-result-object v29

    const/16 v31, 0xb

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v18

    .line 4085
    .local v18, "lp":Landroid/net/LinkProperties;
    if-eqz v18, :cond_4

    .line 4086
    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 4091
    .end local v18    # "lp":Landroid/net/LinkProperties;
    :cond_4
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v29

    const-string v31, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v29

    if-eqz v29, :cond_6

    .line 4099
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4104
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 4107
    :cond_6
    monitor-exit v30

    .line 4108
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4088
    :catch_0
    move-exception v8

    .line 4089
    .local v8, "e":Landroid/os/RemoteException;
    const-string v29, "NetworkPolicy"

    const-string v31, "Failed to retrive IMS link properties"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 4107
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v12    # "imsIface":Ljava/lang/String;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v29

    .line 4111
    .end local v11    # "iface":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v26, 0x1

    .line 4112
    .local v26, "restrictBackground":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4113
    .restart local v14    # "length":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    if-ge v10, v14, :cond_9

    .line 4114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4115
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v15, :cond_7

    .line 4117
    :try_start_7
    move/from16 v0, v26

    invoke-interface {v15, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 4113
    :cond_7
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 4111
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v26    # "restrictBackground":Z
    :cond_8
    const/16 v26, 0x0

    goto :goto_7

    .line 4122
    .restart local v10    # "i":I
    .restart local v14    # "length":I
    .restart local v26    # "restrictBackground":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4123
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4126
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v26    # "restrictBackground":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 4130
    .local v16, "lowestRule":J
    const-wide/16 v30, 0x3e8

    :try_start_8
    div-long v22, v16, v30

    .line 4131
    .local v22, "persistThreshold":J
    const-string/jumbo v29, "ro.csc.country_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4132
    .local v7, "countryCode":Ljava/lang/String;
    const-string v29, "China"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 4133
    move-wide/from16 v22, v16

    .line 4135
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 4139
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v22    # "persistThreshold":J
    :goto_a
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4143
    .end local v16    # "lowestRule":J
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 4145
    .local v25, "reason":I
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MSG_SCREEN_ON_CHANGED: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    const/16 v29, 0x4

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    const/16 v29, 0x1

    :goto_b
    move-object/from16 v0, v30

    move/from16 v1, v29

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2602(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z
    invoke-static/range {v30 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v30

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn(Z)V
    invoke-static/range {v29 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4149
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4146
    :cond_b
    const/16 v29, 0x0

    goto :goto_b

    .line 4153
    .end local v25    # "reason":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4154
    .restart local v27    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 4155
    .local v24, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v24

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateUidState(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    .line 4156
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4159
    .end local v24    # "procState":I
    .end local v27    # "uid":I
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4160
    .restart local v27    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v27

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeUidState(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4161
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4164
    .end local v27    # "uid":I
    :sswitch_8
    const/16 v19, 0x0

    .line 4165
    .local v19, "mEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x112001a

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 4166
    const-string/jumbo v29, "ro.csc.country_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "China"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    if-nez v19, :cond_c

    .line 4167
    const-string v29, "NetworkPolicy"

    const-string v30, "CHN don\'t use RestrictBackgroundData during PowerSave mode"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4170
    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 4171
    .local v5, "arg":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_d

    const/4 v9, 0x1

    .line 4172
    .local v9, "enabled":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode(Z)V
    invoke-static {v0, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v6

    .line 4175
    .local v6, "bgEnabled":Z
    const-string v29, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "MSG_POWER_SAVE_MODE_CHANGE, mRestrictBgInLowPowerMode: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->changeRestrictInPowerSaveMode(Z)V
    invoke-static {v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4178
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4171
    .end local v6    # "bgEnabled":Z
    .end local v9    # "enabled":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_c

    .line 4182
    .end local v5    # "arg":I
    .end local v19    # "mEnabled":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100()Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v29

    if-nez v29, :cond_e

    const/16 v29, 0x1

    :goto_d
    move-object/from16 v0, v30

    move/from16 v1, v29

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReductionRules(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4183
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4182
    :cond_e
    const/16 v29, 0x0

    goto :goto_d

    .line 4187
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    const/16 v29, 0x1

    :goto_e
    move-object/from16 v0, v30

    move/from16 v1, v29

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->changeRestrictInPowerSaveMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4189
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 4191
    new-instance v13, Landroid/content/Intent;

    const-string v29, "com.samsung.settings.ACTION_RESTRICTDATA_COMPLETED"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4192
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4193
    const-string v29, "NetworkPolicy"

    const-string/jumbo v30, "send com.samsung.settings.ACTION_RESTRICTDATA_COMPLETED"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_f
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4187
    :cond_10
    const/16 v29, 0x0

    goto :goto_e

    .line 4201
    :sswitch_b
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 4202
    .local v4, "appStatus":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 4203
    .local v21, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(ILjava/lang/String;)V
    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    .line 4204
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 4054
    .end local v4    # "appStatus":I
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v14    # "length":I
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v27    # "uid":I
    .restart local v28    # "uidRules":I
    :catch_1
    move-exception v29

    goto/16 :goto_2

    .line 4069
    .end local v27    # "uid":I
    .end local v28    # "uidRules":I
    .restart local v20    # "meteredIfaces":[Ljava/lang/String;
    :catch_2
    move-exception v29

    goto/16 :goto_4

    .line 4118
    .end local v20    # "meteredIfaces":[Ljava/lang/String;
    .restart local v26    # "restrictBackground":Z
    :catch_3
    move-exception v29

    goto/16 :goto_9

    .line 4136
    .end local v10    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v26    # "restrictBackground":Z
    .restart local v16    # "lowestRule":J
    :catch_4
    move-exception v29

    goto/16 :goto_a

    .line 4100
    .end local v16    # "lowestRule":J
    .restart local v11    # "iface":Ljava/lang/String;
    .restart local v12    # "imsIface":Ljava/lang/String;
    :catch_5
    move-exception v29

    goto/16 :goto_6

    .line 4044
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_b
        0xc -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ed -> :sswitch_a
    .end sparse-switch
.end method
