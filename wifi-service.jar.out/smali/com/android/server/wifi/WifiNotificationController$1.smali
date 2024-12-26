.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 221
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 225
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetEapAkaNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiNotificationController;->access$402(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 232
    sget-object v13, Lcom/android/server/wifi/WifiNotificationController$7;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 235
    const-string v13, "VZW"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 237
    .local v11, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    const-string v14, "VerizonWiFi"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\"VerizonWiFi\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 244
    .end local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :cond_3
    :goto_1
    const-string v13, "ATT"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$900(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V

    goto/16 :goto_0

    .line 240
    .restart local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    const v15, 0x1080806

    const/16 v16, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/server/wifi/WifiNotificationController;->access$700(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V

    goto :goto_1

    .line 253
    .end local v11    # "wifiInf":Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const-string v13, "ATT"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 258
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    .line 263
    :pswitch_2
    const-string v13, "ATT"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V

    .line 266
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 268
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    .line 273
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v15}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->access$1200(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto/16 :goto_0

    .line 277
    :cond_b
    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->updateResources()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1300(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    .line 279
    :cond_c
    const-string v13, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 280
    const-string v13, "nid"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 281
    .local v5, "nid":I
    const v13, 0x2df96b

    if-ne v5, v13, :cond_1

    .line 282
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$800()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1102(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 285
    :cond_d
    const-string v13, "VZW"

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1402(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 289
    .end local v5    # "nid":I
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACTION_AGGREGATION_DELAY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 291
    const-string v13, "WifiNotificationController"

    const-string v14, "recieved ACTION_AGGREGATION_DELAY"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x1

    const v15, 0x1080806

    const/16 v16, 0x0

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/server/wifi/WifiNotificationController;->access$700(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V

    goto/16 :goto_0

    .line 294
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 296
    const-string v13, "WifiNotificationController"

    const-string v14, "recieved ACTION_SEC_VZW_NOTIFICATION_CANCEL"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mIsShowingVzwNotification:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1502(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 298
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 300
    const-string v13, "WifiNotificationController"

    const-string v14, " recieved STATUS bar event click"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    new-instance v14, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v14}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->access$1602(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    const-string v14, "VerizonWiFi"

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/BitSet;->set(I)V

    .line 304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 305
    .local v2, "msg":Landroid/os/Message;
    const v13, 0x25001

    iput v13, v2, Landroid/os/Message;->what:I

    .line 306
    const/4 v13, -0x1

    iput v13, v2, Landroid/os/Message;->arg1:I

    .line 307
    const/4 v13, -0x1

    iput v13, v2, Landroid/os/Message;->arg2:I

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iput-object v13, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v13

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 310
    .end local v2    # "msg":Landroid/os/Message;
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 312
    const-string v13, "WifiNotificationController"

    const-string v14, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->connectToVzwEapAkaNetwork()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1700(Lcom/android/server/wifi/WifiNotificationController;)V

    goto/16 :goto_0

    .line 314
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 315
    const-string v13, "visible"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 316
    .local v10, "visible":Z
    const-string v13, "info_type"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 317
    .local v3, "msgId":I
    const-string v13, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiInfo;

    .line 318
    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v13, "targetSSID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "ssid":Ljava/lang/String;
    const-string v13, "netId"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 320
    .local v4, "netId":I
    const-string v13, "titleType"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 322
    .local v9, "titleType":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 323
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v10, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-nez v13, :cond_13

    const/16 v13, 0xf

    if-eq v3, v13, :cond_13

    const/16 v13, 0x12

    if-eq v3, v13, :cond_13

    .line 328
    const-string v13, "WifiNotificationController"

    const-string v14, "Change visible to FALSE. Because wifi is not enabled"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v10, 0x0

    .line 332
    :cond_13
    const-string v14, "WifiNotificationController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_NOTI_MESSAGE : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", visible : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", ssid : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v13

    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", targetSSID : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", netId : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", titleType : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v13, 0x9

    if-ne v3, v13, :cond_15

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWifiPoorConnectionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$1900(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z

    goto/16 :goto_0

    .line 332
    :cond_14
    const-string v13, "null"

    goto :goto_2

    .line 341
    :cond_15
    const/16 v13, 0xb

    if-ne v3, v13, :cond_16

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showSnsExceptionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2000(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z

    goto/16 :goto_0

    .line 343
    :cond_16
    const/16 v13, 0x13

    if-ne v3, v13, :cond_17

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showSnsDisabledConnectionWarning(Landroid/net/wifi/WifiInfo;Z)Z
    invoke-static {v13, v12, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2100(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z

    goto/16 :goto_0

    .line 345
    :cond_17
    const/16 v13, 0xc

    if-ne v3, v13, :cond_18

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalSignInNotification(Ljava/lang/String;ZI)V
    invoke-static {v13, v8, v10, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$2200(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 347
    :cond_18
    const/16 v13, 0xd

    if-ne v3, v13, :cond_19

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalDisabledStatus(Ljava/lang/String;IZ)V
    invoke-static {v13, v8, v9, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2300(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 349
    :cond_19
    const/16 v13, 0xe

    if-ne v3, v13, :cond_1a

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileReceptionNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2400(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_1a
    const/16 v13, 0xf

    if-ne v3, v13, :cond_1b

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileNetworkExpirationNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2500(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_1b
    const/16 v13, 0x10

    if-ne v3, v13, :cond_1c

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showShareProfileTransmissionNotification(Ljava/lang/String;)V
    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiNotificationController;->access$2600(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_1c
    const/16 v13, 0x11

    if-ne v3, v13, :cond_1d

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showMaliciousHotspotDetectionNotification(Ljava/lang/String;Z)V
    invoke-static {v13, v8, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2700(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 357
    :cond_1d
    const/16 v13, 0x12

    if-ne v3, v13, :cond_1e

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->showWwsmPatcherNotification(IZ)Z
    invoke-static {v13, v9, v10}, Lcom/android/server/wifi/WifiNotificationController;->access$2800(Lcom/android/server/wifi/WifiNotificationController;IZ)Z

    goto/16 :goto_0

    .line 360
    :cond_1e
    const-string v13, "WifiNotificationController"

    const-string v14, "Ignore SHOW_NOTI_MESSAGE. Received unhandled message"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    .end local v1    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v3    # "msgId":I
    .end local v4    # "netId":I
    .end local v8    # "ssid":Ljava/lang/String;
    .end local v9    # "titleType":I
    .end local v10    # "visible":Z
    .end local v12    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 363
    const-string v13, "reason"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 364
    .local v7, "reason":I
    const/4 v13, 0x2

    if-eq v7, v13, :cond_20

    const/4 v13, 0x3

    if-ne v7, v13, :cond_1

    .line 365
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/wifi/WifiNotificationController;->access$1800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "notification"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 366
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v6}, Landroid/app/NotificationManager;->cancelAll()V

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
