.class Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 931
    const-string v1, "SoftApStateMachine"

    const-string v2, "inside Initial state enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z

    .line 933
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2802(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 935
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    .line 937
    .local v0, "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 938
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2800(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 941
    .end local v0    # "wifiApConfigStore":Lcom/android/server/wifi/WifiApConfigStore;
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 944
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SoftApStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    move v2, v3

    .line 998
    :goto_0
    return v2

    .line 947
    :sswitch_0
    const-string v2, "SoftApStateMachine"

    const-string v5, "InitialState processMessage"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2, v7, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    .line 949
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2902(Lcom/samsung/android/server/wifi/SoftApStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 950
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3000(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 951
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 952
    .local v1, "wifiState":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    if-ne v2, v8, :cond_2

    .line 953
    const-string v2, "SoftApStateMachine"

    const-string v3, "Setting mode START_WIFI_FUNCTIONALITY_WITH_MHS_ON_MODE to enable Wifi and Mobileap"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v4, v8}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(ZI)V

    .end local v1    # "wifiState":I
    :cond_1
    :goto_1
    move v2, v4

    .line 998
    goto :goto_0

    .line 956
    .restart local v1    # "wifiState":I
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 957
    const-string v2, "SoftApStateMachine"

    const-string v3, "Wifi state disabling or disabled. Sending CMD_START_WIFI_FROM_MHS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    const v3, 0x2025a

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 960
    :cond_3
    const-string v2, "SoftApStateMachine"

    const-string v3, "Wifi state is enabling or enabled. Sending CMD_DISABLE_P2P"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    const v3, 0x20258

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 964
    .end local v1    # "wifiState":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApReset:Z
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3002(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z

    .line 965
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 966
    const-string v2, "SoftApStateMachine"

    const-string v3, "handling softapreset "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 970
    :sswitch_1
    const-string v2, "SoftApStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recevied WIFI_STARTED_FROM_MHS.. mPending_StopApCmd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2700(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 972
    const-string v2, "SoftApStateMachine"

    const-string v5, "handle the pending CMD_STOP_AP we set AP state disabled.."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z

    .line 974
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->restoreWifiStateFromSoftAp()V

    .line 975
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    goto/16 :goto_1

    .line 976
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 977
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3100(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApIface(Z)V

    .line 979
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$3400(Lcom/samsung/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 984
    const-string v2, "SoftApStateMachine"

    const-string v3, "send cmd_start_msg"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 988
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->syncGetWifiApState()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 989
    const-string v2, "SoftApStateMachine"

    const-string v3, "MHS is in enabling state and waiting for CMD_WIFI_STARTED_FROM_MHS mPending_StopApCmd True"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mPending_StopApCmd:Z
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$2702(Lcom/samsung/android/server/wifi/SoftApStateMachine;Z)Z

    goto/16 :goto_1

    .line 945
    :sswitch_data_0
    .sparse-switch
        0x20015 -> :sswitch_0
        0x20018 -> :sswitch_2
        0x20135 -> :sswitch_1
    .end sparse-switch
.end method
