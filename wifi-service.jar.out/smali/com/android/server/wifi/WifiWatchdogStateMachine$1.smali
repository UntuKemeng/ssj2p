.class Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x21043

    const v7, 0x21006

    const v8, 0x2103e

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1352
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.samsung.android.net.wifi.RSSI_CHANGED_ACTION_TO_WATCHDOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1355
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21003

    const-string v8, "newRssi"

    const/16 v9, -0xc8

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1357
    const-string v6, "monitorNetworkPropertiesUpdate"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1358
    .local v5, "reason":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1361
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1362
    const-string v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 1363
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_2

    .line 1364
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1365
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateDnsLinkProperty()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1367
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    invoke-static {v6, v12, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1369
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v6

    invoke-static {v6, v12, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1372
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_3
    const-string v6, "DhcpSession"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1373
    .local v2, "mDhcpSessionState":Ljava/lang/String;
    if-eqz v2, :cond_4

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1374
    const-string v6, "start"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1375
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1376
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    const v7, 0x21044

    invoke-static {v6, v7, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1461
    .end local v2    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_4
    :goto_0
    return-void

    .line 1378
    .restart local v2    # "mDhcpSessionState":Ljava/lang/String;
    .restart local v5    # "reason":I
    :cond_5
    const-string v6, "complete"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1379
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1380
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    const v7, 0x21045

    invoke-static {v6, v7, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1383
    .end local v2    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_6
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1384
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21004

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1385
    :cond_7
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1386
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21002

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1387
    :cond_8
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1388
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21008

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1389
    :cond_9
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1390
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21009

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1391
    :cond_a
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1392
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21005

    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 1394
    :cond_b
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1395
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1396
    :cond_c
    const-string v6, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1397
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1400
    :cond_d
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1401
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1402
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 1403
    .local v4, "previousState":Z
    if-eqz v3, :cond_4

    .line 1404
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_10

    .line 1405
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE_HIPRI received. isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1407
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 1408
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1409
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eq v4, v6, :cond_4

    .line 1410
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "EVENT_MOBILE_HIPRI_CONNECTED"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1411
    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21040

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1414
    :cond_f
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_0

    .line 1416
    :cond_10
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_4

    .line 1417
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE received. isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1419
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 1420
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1421
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eq v4, v6, :cond_4

    .line 1422
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "EVENT_MOBILE_CONNECTED"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1423
    :cond_11
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x2103f

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1426
    :cond_12
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_0

    .line 1431
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "previousState":Z
    :cond_13
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400()Z

    move-result v6

    if-nez v6, :cond_16

    .line 1432
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1433
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v7

    if-ne v6, v7, :cond_14

    .line 1434
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1436
    :cond_14
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_15

    .line 1437
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1439
    :cond_15
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1442
    :cond_16
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1444
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v7, "Network country change is detected."

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1445
    :cond_17
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCountryIsoCode()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1446
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1447
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    goto/16 :goto_0

    .line 1449
    :cond_18
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1450
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "OWNER is background"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1452
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 1453
    :cond_19
    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1454
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "OWNER is foreground"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1456
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 1457
    :cond_1a
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1458
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "ACTION_BOOT_COMPLETED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForImsRegistration()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0
.end method
