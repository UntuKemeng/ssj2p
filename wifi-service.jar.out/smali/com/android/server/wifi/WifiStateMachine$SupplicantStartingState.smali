.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10772
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    .prologue
    .line 10775
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10776
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10777
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10779
    :cond_0
    const-string v1, "ro.product.manufacturer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10780
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10781
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set manufacturer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10783
    :cond_1
    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10784
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10785
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10787
    :cond_2
    const-string v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10788
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10789
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10791
    :cond_3
    const-string v1, "ro.serialno"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10792
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10793
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10796
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_WFA_CONFIG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$15900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10797
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string v2, "physical_display virtual_push_button keypad"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10798
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Failed to set WPS config methods virtual_push_button keypad"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10805
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 10806
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set primary device type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$16000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10808
    :cond_6
    return-void

    .line 10801
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    const-string v2, "physical_display virtual_push_button"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10802
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Failed to set WPS config methods"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 10812
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0xd

    const/4 v12, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 10815
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    invoke-static {v9, p1, p0}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 10817
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 10974
    :goto_0
    return v8

    .line 10819
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "Supplicant connection established"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10820
    :cond_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10821
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10822
    const-string v9, "ATT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16200()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 10823
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_auto_connecct"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_b

    move v0, v7

    .line 10825
    .local v0, "autoConnect":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v7, v0}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 10828
    .end local v0    # "autoConnect":Z
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionTypeCsc:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16300()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10829
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_cmcc_manual"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    move v6, v7

    .line 10831
    .local v6, "wifiConnectionType":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10, v6}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 10834
    .end local v6    # "wifiConnectionType":Z
    :cond_2
    const-string v9, "KTT"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableAutoConnectHotspot:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16200()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10835
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_skip_auto_conn"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_d

    move v5, v7

    .line 10837
    .local v5, "skipAutoConn":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[KTWiFiCM] skipAutoConn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$16400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10839
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10, v5}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 10843
    .end local v5    # "skipAutoConn":Z
    :cond_3
    const-string v9, "ENABLE"

    const-string v10, "ENABLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 10845
    const-string v9, "DEFAULT_ON"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 10846
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFmcNetwork:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_e

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_ON:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16600()I

    move-result v3

    .line 10851
    .local v3, "handoverMode":I
    :goto_4
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_PREFERRED_BAND:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "5G"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_ON:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16600()I

    move-result v9

    if-ne v3, v9, :cond_4

    .line 10852
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_ONLY:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16900()I

    move-result v3

    .line 10854
    :cond_4
    const-string v9, "ENABLE"

    const-string v10, "ENABLE_SAME_SSID_ONLY"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 10855
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_SAME_SSID_ONLY:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$17000()I

    move-result v3

    .line 10857
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    const/16 v10, 0xd2

    invoke-virtual {v9, v10, v3}, Lcom/android/server/wifi/WifiNative;->callSECApiInt(II)I

    .line 10862
    .end local v3    # "handoverMode":I
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v9

    const v10, 0x2006f

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 10864
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 10865
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$17302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10866
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v9, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$17402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10868
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 10870
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10871
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiNative;->enableSaveConfig()V

    .line 10872
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 10873
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-lez v9, :cond_7

    .line 10874
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 10877
    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->isBasForAllNetwork()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 10878
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigStore;->setAllNetworkPriorityDefault()V

    .line 10882
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLTECoexState()I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17600(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 10884
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    .line 10885
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v9, v9, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-eqz v9, :cond_11

    .line 10886
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v10, "SkipScanAssoc WiFi enabled for P2P function. In this case, Skip scan and assoc for p2p connection"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10887
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v13, v8}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 10893
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 10894
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 10895
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_13

    .line 10896
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 10897
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v9, "VerizonWiFi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v9, "\"VerizonWiFi\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 10898
    :cond_a
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 10899
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Success to forget VerizonWiFi network"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_6

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    move v0, v8

    .line 10823
    goto/16 :goto_1

    :cond_c
    move v6, v8

    .line 10829
    goto/16 :goto_2

    :cond_d
    move v5, v8

    .line 10835
    goto/16 :goto_3

    .line 10846
    :cond_e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_OFF:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16700()I

    move-result v3

    goto/16 :goto_4

    .line 10848
    :cond_f
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsFmcNetwork:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    if-nez v9, :cond_10

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_ON:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16600()I

    move-result v3

    .restart local v3    # "handoverMode":I
    :goto_7
    goto/16 :goto_4

    .end local v3    # "handoverMode":I
    :cond_10
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->WIFI_2GHZ_5GHZ_HANDOVER_OFF:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$16700()I

    move-result v3

    goto :goto_7

    .line 10889
    :cond_11
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v13, v7}, Lcom/android/server/wifi/WifiNative;->callSECApiBoolean(IZ)I

    .line 10890
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_5

    .line 10901
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_12
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Failed to forget VerizonWiFi network"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 10908
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_13
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$14100(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10916
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :cond_14
    :goto_8
    :sswitch_1
    move v8, v7

    .line 10974
    goto/16 :goto_0

    .line 10919
    :sswitch_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16104(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_15

    .line 10920
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Failed to setup control channel, restart supplicant"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10921
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$12200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 10922
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$13200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10923
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v9, 0x2000b

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_8

    .line 10925
    :cond_15
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$16100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times to start supplicant, unload driver"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10927
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$16102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10928
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10929
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v9, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$9202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10930
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$13200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 10931
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v9, 0xa

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendErrorBroadcast(I)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$12800(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_8

    .line 10951
    :sswitch_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$15102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10952
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$15100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    if-ne v9, v7, :cond_14

    .line 10953
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->skipWifiStateBroadcast(Z)V
    invoke-static {v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_8

    .line 10967
    :sswitch_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deffering msg in Supplicant Starting State"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10968
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$18400()I

    move-result v9

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10969
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v8, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 10817
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_4
        0x2000c -> :sswitch_4
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_4
        0x20015 -> :sswitch_4
        0x20018 -> :sswitch_4
        0x20048 -> :sswitch_3
        0x20050 -> :sswitch_4
        0x20054 -> :sswitch_4
        0x20055 -> :sswitch_4
        0x2005a -> :sswitch_4
        0x20258 -> :sswitch_1
        0x2025a -> :sswitch_4
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_2
    .end sparse-switch
.end method
