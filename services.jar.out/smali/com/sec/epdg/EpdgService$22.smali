.class Lcom/sec/epdg/EpdgService$22;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 5150
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5153
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5159
    const/4 v8, 0x0

    .line 5160
    .local v8, "ni":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "action":Ljava/lang/String;
    move-object v4, p1

    .line 5161
    check-cast v4, Landroid/content/Intent;

    .line 5163
    .local v4, "intent":Landroid/content/Intent;
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5164
    const-string v9, "[EPDGService]"

    const-string v10, "No Sim card. Ignore all notifications"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5305
    :cond_0
    :goto_0
    return-void

    .line 5167
    :cond_1
    if-eqz v4, :cond_2

    .line 5168
    const-string v9, "networkInfo"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "ni":Landroid/net/NetworkInfo;
    check-cast v8, Landroid/net/NetworkInfo;

    .line 5170
    .restart local v8    # "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5173
    :cond_2
    if-nez v0, :cond_3

    .line 5174
    const-string v9, "[EPDGService]"

    const-string v10, "Action is null"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5178
    :cond_3
    if-nez v8, :cond_4

    .line 5179
    const-string v9, "[EPDGService]"

    const-string v10, "Cannot get network info from intent"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5182
    :cond_4
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 5183
    .local v7, "networkType":I
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 5187
    .local v6, "networkState":Landroid/net/NetworkInfo$State;
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 5188
    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 5189
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_0

    .line 5190
    const-string v9, "[EPDGService]"

    const-string v10, "Wifi is disconnected"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5191
    const/4 v9, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$8602(Z)Z

    .line 5192
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/sec/epdg/EpdgService;->access$1800(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5193
    invoke-static {}, Lcom/sec/epdg/EpdgService;->resetIsEpdgConnBlocked()V

    .line 5194
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5196
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 5199
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgPeriodicDns;->removePeriodicDnsPendingIntent()V

    .line 5200
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5202
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5203
    sget-object v9, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$11200(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 5204
    sget-object v9, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$7400(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 5206
    :cond_5
    const/4 v9, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 5207
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$11302(Lcom/sec/epdg/EpdgService;I)I

    .line 5208
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$2102(Lcom/sec/epdg/EpdgService;I)I

    goto/16 :goto_0

    .line 5211
    :cond_6
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5212
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    .line 5213
    const-string v9, "[EPDGService]"

    const-string v10, "CONNECTIVITY_ACTION is triggered by non WIFI network"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5215
    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v2

    .line 5220
    .local v2, "apnType":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 5221
    const-string v9, "[EPDGService]"

    const-string v10, "CONNECTIVITY_ACTION is non interested network so ignore"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5225
    :cond_7
    const-string v9, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "networkState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " networkType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isOngoingConnectionOverWifi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v2, v11}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5228
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_8

    .line 5239
    const/16 v9, 0xb

    if-ne v7, v9, :cond_0

    .line 5240
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x0

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v9, v10, v11}, Lcom/sec/epdg/EpdgService;->access$6700(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    .line 5241
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/mapcon/MapconTable;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V

    goto/16 :goto_0

    .line 5244
    :cond_8
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_0

    .line 5245
    if-nez v7, :cond_a

    .line 5248
    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$11400()Landroid/net/ConnectivityManager;

    move-result-object v9

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$11400()Landroid/net/ConnectivityManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    .line 5250
    .local v5, "lp":Landroid/net/LinkProperties;
    if-nez v5, :cond_9

    .line 5251
    const-string v9, "[EPDGService]"

    const-string v10, "MOBILE linkproperty is null."

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5254
    :cond_9
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$11502(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;

    .line 5255
    const-string v9, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internet PDN is connected; with interface Name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->access$11500(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5257
    .end local v5    # "lp":Landroid/net/LinkProperties;
    :cond_a
    const/16 v9, 0xb

    if-ne v7, v9, :cond_0

    .line 5258
    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_b

    .line 5262
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 5263
    :cond_b
    # getter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$5500()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5264
    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 5265
    .local v3, "cid":I
    if-lez v3, :cond_0

    .line 5266
    const/4 v9, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mIsLteAvailableDuringConnecting:Z
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$5502(Z)Z

    .line 5267
    const-string v9, "[EPDGService]"

    const-string v10, "During Connecting LTE was available, retryW2LHandoverIfRequired"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5268
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 5274
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v3    # "cid":I
    :cond_c
    sget-object v9, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_10

    .line 5275
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    const/4 v10, 0x1

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v9, v10}, Lcom/sec/epdg/EpdgService;->access$11302(Lcom/sec/epdg/EpdgService;I)I

    .line 5276
    sget-boolean v9, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v9, :cond_e

    .line 5277
    # invokes: Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$11600()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v9, v10, :cond_d

    .line 5278
    const-string v9, "[EPDGService]"

    const-string v10, "BLACK LIST country. voWIFI is not allowed"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5281
    :cond_d
    const-string v9, "[EPDGService]"

    const-string v10, "check AP is allowed for EPDG service first"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5282
    new-instance v9, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v10, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1900()Landroid/os/Handler;

    move-result-object v11

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5286
    :cond_e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v9

    if-nez v9, :cond_f

    .line 5287
    const-string v9, "[EPDGService]"

    const-string v10, "WifiCallingDisabled so ignore"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5291
    :cond_f
    iget-object v9, p0, Lcom/sec/epdg/EpdgService$22;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$8400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 5292
    :cond_10
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v9, :cond_0

    .line 5294
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1700()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 5295
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v9

    sget-object v10, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v9, v10}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5297
    :cond_11
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOrangeSpainRetryTimer()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5298
    :cond_12
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/epdg/EpdgUtils;->getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5299
    .local v1, "apnName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 5300
    const-string v9, "[EPDGService]"

    const-string v10, "reset throttle state for ATT, OSP"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method