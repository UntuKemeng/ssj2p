.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10978
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 10982
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 10983
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 10985
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 10988
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_supplicant_scan_interval_ms"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 10992
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mFirmwareType:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$12000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 10993
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 10995
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    .line 10998
    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    .line 11001
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11002
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11003
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static {v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->access$18902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11004
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->initializeCountryCode()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11006
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 11008
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    .line 11011
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUnstableAps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 11015
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, ""

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectedNetworkID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11016
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectAttemptTimestamp:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$6302(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11017
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 11309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 11310
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 11311
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 11023
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 11302
    const/16 v17, 0x0

    .line 11304
    :goto_0
    return v17

    .line 11048
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 11049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11304
    :cond_0
    :goto_1
    :sswitch_1
    const/16 v17, 0x1

    goto :goto_0

    .line 11051
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 11056
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const-string v18, "Connection lost, restart supplicant"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$17100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v17

    const v18, 0x2006f

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 11060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 11061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11065
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const v18, 0x2000b

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 11063
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$13200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 11069
    :sswitch_3
    const/16 v16, 0x0

    .line 11070
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 11071
    .local v6, "isVoLteCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 11072
    .restart local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 11073
    .local v10, "powerManager":Landroid/os/PowerManager;
    const-string v17, "volte"

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v6

    .line 11074
    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mVolteTimer:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$19908()I

    .line 11075
    invoke-virtual {v10}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v17

    if-lez v17, :cond_3

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVolteTimer:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$19900()I

    move-result v17

    rem-int/lit8 v17, v17, 0x3

    if-nez v17, :cond_3

    .line 11078
    const/16 v17, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mVolteTimer:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$19902(I)I

    .line 11079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11081
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 11082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11086
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const v18, 0x24005

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    .line 11087
    .local v11, "scanSucceeded":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    .line 11089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$20302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$20402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$20502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 11093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 11096
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->checkAndEnableUnstableAps()V

    goto/16 :goto_1

    .line 11086
    .end local v11    # "scanSucceeded":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 11101
    .end local v6    # "isVoLteCall":Z
    .end local v10    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11105
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiNative;->ping()Z

    move-result v8

    .line 11106
    .local v8, "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    if-eqz v8, :cond_6

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_6
    const/16 v17, -0x1

    goto :goto_4

    .line 11109
    .end local v8    # "ok":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v5

    .line 11110
    .local v5, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11114
    .end local v5    # "freqs":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const-string v18, "Failed to start soft AP with a running supplicant"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    goto/16 :goto_1

    .line 11118
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$15102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v17

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 11122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastManualConnectedNetId:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$20802(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 11125
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNetworkLists:Lcom/android/server/wifi/WifiNetworkLists;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNetworkLists;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiNetworkLists;->removeNetworkMap(I)V

    .line 11126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 11130
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 11131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21002(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 11136
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiConfigStore;->enableDisabledPoorNetwork()V

    goto/16 :goto_1

    .line 11139
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0x1b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    .line 11142
    :sswitch_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 11143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    .line 11144
    .local v13, "ssid":Ljava/lang/String;
    :goto_5
    if-eqz v13, :cond_a

    .line 11145
    const-string v17, "\"VerizonWiFiAccess\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 11146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->showVzwEapAkaSimRemovedDialog()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0xc8

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    .line 11155
    .end local v13    # "ssid":Ljava/lang/String;
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0x1c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    .line 11143
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 11149
    .restart local v13    # "ssid":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0xc9

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    goto :goto_6

    .line 11152
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0xc8

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiNative;->callSECApiVoid(I)I

    goto :goto_6

    .line 11158
    .end local v13    # "ssid":Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v14

    .line 11159
    .local v14, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v14, :cond_b

    .line 11161
    new-instance v14, Landroid/net/wifi/WifiLinkLayerStats;

    .end local v14    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v14}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .line 11163
    .restart local v14    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 11166
    .end local v14    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 11167
    .local v4, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v9, 0x1

    .line 11168
    .local v9, "persist":Z
    :goto_7
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 11169
    .local v12, "sequence":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move/from16 v0, v17

    if-eq v12, v0, :cond_d

    .line 11170
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const-string v18, "set country code ignored due to sequnce num"

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11167
    .end local v9    # "persist":Z
    .end local v12    # "sequence":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_7

    .line 11174
    .restart local v9    # "persist":Z
    .restart local v12    # "sequence":I
    :cond_d
    sget-object v17, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 11176
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "set country code "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-nez v4, :cond_10

    const-string v17, "(null)"

    :goto_8
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11178
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 11179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 11180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 11181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNeedToUpdateChannelList:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$18902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11189
    :goto_9
    if-eqz v9, :cond_f

    .line 11190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_country_code"

    if-nez v4, :cond_13

    const-string v17, ""

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11194
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v17

    const v18, 0x23010

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v17, v4

    .line 11176
    goto/16 :goto_8

    .line 11183
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to set country code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 11186
    :cond_12
    const-string v17, "WifiStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ignore set country code : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_13
    move-object/from16 v17, v4

    .line 11190
    goto :goto_a

    .line 11205
    .end local v4    # "country":Ljava/lang/String;
    .end local v9    # "persist":Z
    .end local v12    # "sequence":I
    :sswitch_10
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 11217
    :sswitch_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 11229
    :sswitch_12
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 11240
    :sswitch_13
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 11258
    :sswitch_14
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 11270
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFccChannelNative(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->access$21200(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 11274
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->clearHandoverBlacklistNative()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 11278
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const/16 v18, 0xd2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    goto/16 :goto_1

    .line 11282
    :sswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 11283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    goto/16 :goto_1

    .line 11287
    :sswitch_19
    const-string v17, "WifiStateMachine"

    const-string v18, "WifiWatchdogStateMachine.SET_NEXT_TARGET_RSSI"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 11291
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 11292
    .local v7, "networkId":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 11293
    .local v15, "targetRssi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    const-string v18, "sns_next_target_rssi"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 11297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 11298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v15}, Lcom/android/server/wifi/WifiConfigStore;->updateNextTargetRssi(II)V

    goto/16 :goto_1

    .line 11023
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_7
        0x20033 -> :sswitch_5
        0x20035 -> :sswitch_9
        0x2003c -> :sswitch_6
        0x2003f -> :sswitch_e
        0x20048 -> :sswitch_8
        0x20050 -> :sswitch_f
        0x20085 -> :sswitch_11
        0x2008d -> :sswitch_a
        0x200cb -> :sswitch_15
        0x200cc -> :sswitch_16
        0x200d0 -> :sswitch_17
        0x200d1 -> :sswitch_18
        0x20135 -> :sswitch_c
        0x20140 -> :sswitch_d
        0x20258 -> :sswitch_10
        0x20259 -> :sswitch_14
        0x2025a -> :sswitch_1
        0x2025d -> :sswitch_13
        0x2025e -> :sswitch_12
        0x21017 -> :sswitch_b
        0x2101e -> :sswitch_19
        0x24002 -> :sswitch_2
        0x24005 -> :sswitch_3
        0x24011 -> :sswitch_3
        0x24065 -> :sswitch_4
    .end sparse-switch
.end method
