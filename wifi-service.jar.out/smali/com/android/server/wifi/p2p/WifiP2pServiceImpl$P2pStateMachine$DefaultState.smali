.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{ what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message { what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2143
    const/4 v2, 0x0

    .line 2145
    :goto_0
    return v2

    .line 1792
    :sswitch_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "Full connection with WifiStateMachine established"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 2145
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1796
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full connection failure, error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1802
    :sswitch_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "Send failed, client connection lost"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1807
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1805
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client connection lost with reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1811
    :sswitch_3
    new-instance v8, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v8}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 1812
    .local v8, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v8, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_1

    .line 1815
    .end local v8    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_3
    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static {v3, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryPostponed:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 1819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryBlocked:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1821
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/util/StateMachine;

    .line 1822
    .local v18, "m":Lcom/android/internal/util/StateMachine;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1823
    .end local v18    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v13

    .line 1824
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to send BLOCK_DISCOVERY response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1815
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 1829
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 1830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v21, v0

    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "WIFI_P2P"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v7, v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    move-object/from16 v0, v21

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    invoke-static {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;->setScoreFilter(I)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/ConnectivityManager;

    move-result-object v2

    new-instance v3, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkFactory:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pNetworkFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v4, "WIFI_P2P"

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1836
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22002

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1840
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22005

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1844
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2202f

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1848
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22008

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    const-string v4, "Connecting to device using Wi-Fi Direct (P2P) succeeded"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1857
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2200b

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    const-string v4, "Connecting to device using Wi-Fi Direct (P2P) cancelled"

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1866
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2200e

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1870
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22011

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1874
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22091

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1878
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2201d

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1882
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22020

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1886
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22023

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1890
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22026

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1894
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22029

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1899
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2202c

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1904
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22034

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1908
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22036

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1912
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2203c

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1916
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22014

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1920
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22016

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1924
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22018

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    :goto_4
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, v0, v4, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 1928
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x22073

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>(Landroid/net/wifi/p2p/WifiP2pConfigList;)V

    :goto_5
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v3, v0, v4, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 1932
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2203a

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1936
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1937
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 1938
    .local v10, "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "extra_log"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addHistoricalDumpLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1942
    .end local v10    # "args":Landroid/os/Bundle;
    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appPkgName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1944
    .local v9, "appPkgName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialogResetFlag"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1946
    .local v17, "isReset":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move/from16 v0, v17

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setDialogListenerApp(Landroid/os/Messenger;Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v9, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22076

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1949
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22075

    const/4 v4, 0x4

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1954
    .end local v9    # "appPkgName":Ljava/lang/String;
    .end local v17    # "isReset":Z
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2203f

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1960
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsBootCompleteForLogging:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1961
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 1962
    .restart local v10    # "args":Landroid/os/Bundle;
    if-eqz v10, :cond_9

    .line 1963
    const-string v2, "bigdata"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 1964
    .local v16, "isBigDataLog":Z
    if-eqz v16, :cond_8

    .line 1965
    const-string v2, "feature"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1966
    .local v15, "feature":Ljava/lang/String;
    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1967
    .local v11, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    invoke-virtual {v2, v15, v11}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->parseData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    invoke-virtual {v2, v15}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->getJsonFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1969
    .local v14, "extra":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-wide/16 v4, -0x1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v2, v15, v14, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1971
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBigData:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;

    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pBigDataLog;->initialize()V

    goto/16 :goto_1

    .line 1974
    .end local v11    # "data":Ljava/lang/String;
    .end local v14    # "extra":Ljava/lang/String;
    .end local v15    # "feature":Ljava/lang/String;
    :cond_8
    const-string v2, "feature"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1975
    .restart local v15    # "feature":Ljava/lang/String;
    const-string v2, "extra"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1976
    .restart local v14    # "extra":Ljava/lang/String;
    const-string v2, "value"

    const-wide/16 v4, -0x1

    invoke-virtual {v10, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1978
    .local v22, "value":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-wide/from16 v0, v22

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static {v2, v15, v14, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 1981
    .end local v14    # "extra":Ljava/lang/String;
    .end local v15    # "feature":Ljava/lang/String;
    .end local v16    # "isBigDataLog":Z
    .end local v22    # "value":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "CMD_SEC_LOGGING : args null!"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1987
    .end local v10    # "args":Landroid/os/Bundle;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->buildLoggingData(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1988
    .restart local v11    # "data":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1989
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1990
    .restart local v10    # "args":Landroid/os/Bundle;
    const-string v2, "bigdata"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1991
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x24087

    if-ne v2, v3, :cond_b

    .line 1992
    const-string v2, "feature"

    const-string v3, "WDCL"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    :cond_a
    :goto_6
    const-string v2, "data"

    invoke-virtual {v10, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x2301e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1994
    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x24088

    if-ne v2, v3, :cond_a

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnReqInfo:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$WifiP2pConnectReqInfo;->reset()V

    .line 1996
    const-string v2, "feature"

    const-string v3, "WDGF"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2003
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v11    # "data":Ljava/lang/String;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->buildLoggingData(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2007
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 2008
    .local v20, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P2P_INVITATION_RESULT_EVENT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2009
    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-object/from16 v0, v20

    if-ne v0, v2, :cond_0

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    if-nez v2, :cond_c

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)I

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->stopLegacyWifiScan(Z)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 2016
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigList:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigIndex(I)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mConnectedDevAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # operator++ for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3608(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    .line 2020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v4, 0x23033

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSelectP2pConfigIndex:I
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22007

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 2026
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2034
    .end local v20    # "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x2204d

    const/4 v4, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2038
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v3, 0x22051

    const/4 v4, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 2042
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    if-nez v2, :cond_f

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v12

    .local v12, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v12, :cond_e

    .line 2047
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2055
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2057
    .end local v12    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P2P_NO_COMMON_CHANNEL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v4, v4, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2049
    .restart local v12    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_10
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x2

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_7

    .line 2051
    :cond_11
    invoke-virtual {v12}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x1

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto/16 :goto_7

    .line 2099
    .end local v12    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x1

    const-string v4, "Wi-Fi Direct (P2P) enabling succeeded"

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;I)V

    goto/16 :goto_1

    .line 2104
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20085

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x1

    const-string v4, "Wi-Fi Direct (P2P) disabling succeeded"

    const/4 v5, 0x1

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->auditLog(ZLjava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;ZLjava/lang/String;I)V

    goto/16 :goto_1

    .line 2115
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected group creation, remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2125
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pRequestChangedBroadcast(Z)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->userRejected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    goto/16 :goto_1

    .line 2132
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # invokes: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removePersistentNetworks()V
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_1

    .line 2136
    :sswitch_2b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string v19, "1"

    .line 2137
    .local v19, "set":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    const-string v3, "screen_sharing"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiNative;->p2pSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string v3, "Failed to set screen sharing"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2136
    .end local v19    # "set":Ljava/lang/String;
    :cond_12
    const-string v19, "0"

    goto :goto_8

    .line 1790
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_3
        0x11004 -> :sswitch_2
        0x20083 -> :sswitch_26
        0x20084 -> :sswitch_27
        0x20272 -> :sswitch_2a
        0x22001 -> :sswitch_6
        0x22004 -> :sswitch_7
        0x22007 -> :sswitch_9
        0x2200a -> :sswitch_a
        0x2200d -> :sswitch_b
        0x22010 -> :sswitch_c
        0x22013 -> :sswitch_17
        0x22015 -> :sswitch_18
        0x22017 -> :sswitch_19
        0x2201c -> :sswitch_e
        0x2201f -> :sswitch_f
        0x22022 -> :sswitch_10
        0x22025 -> :sswitch_11
        0x22028 -> :sswitch_12
        0x2202b -> :sswitch_13
        0x2202e -> :sswitch_8
        0x22033 -> :sswitch_14
        0x22036 -> :sswitch_15
        0x22039 -> :sswitch_1b
        0x2203b -> :sswitch_16
        0x2203e -> :sswitch_1e
        0x22041 -> :sswitch_1
        0x22044 -> :sswitch_1
        0x22047 -> :sswitch_1
        0x2204b -> :sswitch_23
        0x2204c -> :sswitch_23
        0x2204e -> :sswitch_24
        0x2204f -> :sswitch_24
        0x22072 -> :sswitch_1a
        0x22074 -> :sswitch_1d
        0x22090 -> :sswitch_d
        0x22094 -> :sswitch_1c
        0x2209b -> :sswitch_2b
        0x23001 -> :sswitch_1
        0x23002 -> :sswitch_1
        0x23003 -> :sswitch_1
        0x23004 -> :sswitch_1
        0x23005 -> :sswitch_1
        0x23006 -> :sswitch_1
        0x2300d -> :sswitch_1
        0x2300e -> :sswitch_1
        0x2300f -> :sswitch_4
        0x23010 -> :sswitch_1
        0x2301e -> :sswitch_1f
        0x23037 -> :sswitch_5
        0x24001 -> :sswitch_1
        0x24002 -> :sswitch_1
        0x24003 -> :sswitch_1
        0x24004 -> :sswitch_1
        0x24005 -> :sswitch_1
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_1
        0x24008 -> :sswitch_1
        0x24009 -> :sswitch_1
        0x2400a -> :sswitch_1
        0x2400b -> :sswitch_1
        0x24015 -> :sswitch_1
        0x24016 -> :sswitch_1
        0x2401a -> :sswitch_29
        0x2401c -> :sswitch_1
        0x2401d -> :sswitch_28
        0x2401e -> :sswitch_1
        0x24020 -> :sswitch_22
        0x24025 -> :sswitch_1
        0x24026 -> :sswitch_1
        0x24027 -> :sswitch_1
        0x24079 -> :sswitch_25
        0x24087 -> :sswitch_20
        0x24088 -> :sswitch_20
        0x24089 -> :sswitch_21
        0x30004 -> :sswitch_1
        0x30005 -> :sswitch_1
        0x30006 -> :sswitch_1
    .end sparse-switch
.end method
