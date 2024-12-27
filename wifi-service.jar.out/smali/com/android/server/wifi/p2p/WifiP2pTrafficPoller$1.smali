.class Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$102(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$202(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$100(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$300(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    move-result-object v4

    invoke-static {v4, v7, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$300(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    move-result-object v4

    invoke-static {v4, v7, v6, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "btPowerState":I
    const/16 v4, 0xc

    if-ne v0, v4, :cond_3

    sget v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    or-int/lit8 v4, v4, 0x2

    sput v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$202(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    goto :goto_1

    :cond_3
    if-ne v0, v8, :cond_0

    sget v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v4, v4, -0x3

    sput v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$202(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    goto :goto_1

    .end local v0    # "btPowerState":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "statusName":Ljava/lang/String;
    const-string v4, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, "statusValue":Z
    if-eqz v2, :cond_0

    const-string v4, "FileShare_Enable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_5

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->fileShareTransfer:Z
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$402(Z)Z

    const-string v4, "WifiP2pTrafficPoller"

    const-string v5, "FileShare_Enable : true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->fileShareTransfer:Z
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$402(Z)Z

    const-string v4, "WifiP2pTrafficPoller"

    const-string v5, "FileShare_Enable : false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
