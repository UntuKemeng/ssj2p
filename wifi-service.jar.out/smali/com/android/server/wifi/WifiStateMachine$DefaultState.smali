.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9768
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 9771
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiStateMachineStarted:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9772
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 62
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 9778
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 10486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error! unhandled message"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10489
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 9780
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastForBluetoothReset(Z)V

    goto :goto_0

    .line 9784
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 9785
    const-string v4, "WifiStateMachine"

    const-string v5, "mWakeLock.release after processing reason 77 driver hung"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 9790
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TRUE"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9791
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 9792
    .local v17, "args":Landroid/os/Bundle;
    if-eqz v17, :cond_3

    .line 9793
    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9795
    .local v6, "feature":Ljava/lang/String;
    const/16 v21, 0x0

    .line 9796
    .local v21, "confCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v22

    .line 9797
    .local v22, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v22, :cond_1

    .line 9798
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v21

    .line 9801
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getForegroundPackageName()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v34

    .line 9802
    .local v34, "fgPackageName":Ljava/lang/String;
    if-nez v34, :cond_2

    .line 9803
    const-string v34, "x"

    .line 9806
    :cond_2
    new-instance v52, Ljava/lang/StringBuffer;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuffer;-><init>()V

    .line 9807
    .local v52, "sb":Ljava/lang/StringBuffer;
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9808
    move-object/from16 v0, v52

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9809
    move-object/from16 v0, v52

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v6, v10}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 9813
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 9814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    const-string v5, "ONOF"

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->updateTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9817
    .end local v6    # "feature":Ljava/lang/String;
    .end local v21    # "confCount":I
    .end local v22    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v34    # "fgPackageName":Ljava/lang/String;
    .end local v52    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "CMD_SEC_LOGGING_FOR_ONOF : args is null!"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9823
    .end local v17    # "args":Landroid/os/Bundle;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9824
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 9825
    .restart local v17    # "args":Landroid/os/Bundle;
    if-eqz v17, :cond_9

    .line 9826
    const-string v6, "BEST"

    .line 9827
    .restart local v6    # "feature":Ljava/lang/String;
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 9830
    .local v55, "temp":Ljava/lang/String;
    const-string v4, "\\s+"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 9831
    .local v18, "array":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v4, v0

    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    .line 9832
    const/16 v57, 0x0

    .line 9833
    .local v57, "unwanted_network_selected":I
    const/16 v43, 0x0

    .line 9834
    .local v43, "mIsSameSsid":Z
    const/16 v44, 0x0

    .line 9835
    .local v44, "mIsSelectedNetwork":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    .line 9836
    .local v46, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectAttemptTimestamp:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6300(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v4

    sub-long v32, v46, v4

    .line 9838
    .local v32, "expiredTime":J
    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectedNetworkID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectedNetworkID:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9839
    const/16 v43, 0x1

    .line 9840
    const-wide/32 v4, 0x493e0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_0

    .line 9846
    :cond_4
    const-string v4, "001"

    const/16 v5, 0xa

    aget-object v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9847
    const/16 v44, 0x1

    .line 9850
    :cond_5
    const-string v4, "SINGLE"

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->CSC_BESTAPSELECTION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v44, :cond_6

    if-nez v43, :cond_6

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v32, v4

    if-gez v4, :cond_6

    .line 9852
    const/16 v57, 0x1

    .line 9855
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-wide/from16 v0, v46

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectAttemptTimestamp:J
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$6302(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    aget-object v5, v18, v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mPrevConnectedNetworkID:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6402(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9858
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    .line 9859
    .local v52, "sb":Ljava/lang/StringBuilder;
    const/16 v37, 0x1

    .local v37, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v4, v0

    move/from16 v0, v37

    if-ge v0, v4, :cond_7

    .line 9860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v18, v37

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9859
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 9863
    :cond_7
    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    aput-object v59, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9864
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v6, v10}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .line 9867
    .end local v32    # "expiredTime":J
    .end local v37    # "i":I
    .end local v43    # "mIsSameSsid":Z
    .end local v44    # "mIsSelectedNetwork":Z
    .end local v46    # "now":J
    .end local v52    # "sb":Ljava/lang/StringBuilder;
    .end local v57    # "unwanted_network_selected":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEC_LOGGING_FOR_BAS : args length is nomatch ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    array-length v10, v0

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9870
    .end local v6    # "feature":Ljava/lang/String;
    .end local v18    # "array":[Ljava/lang/String;
    .end local v55    # "temp":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "CMD_SEC_LOGGING_FOR_BAS : args is null"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9876
    .end local v17    # "args":Landroid/os/Bundle;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TRUE"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    if-eqz v4, :cond_0

    .line 9878
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEFAULT STATE : CMD_SEC_LOGGING_FOR_SCAN_COUNT ENTER getData() : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, v10, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    sget-object v10, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mScanCountInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    const-string v10, "SCNC"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v59, v0

    sget-object v59, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mScanCountInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;

    invoke-virtual/range {v59 .. v59}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->getData()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-virtual {v4, v5, v10, v0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    .line 9881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    sget-object v4, Lcom/samsung/android/server/wifi/WifiBigDataLog;->mScanCountInfo:Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiScanCountInfo;->initData()V

    .line 9882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x200d5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->delayCheckScanCountLoggingTimeMilli:J
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v60

    move-wide/from16 v0, v60

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 9888
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "TRUE"

    sget-object v5, Lcom/android/server/wifi/WifiStateMachine;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9889
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 9891
    .restart local v17    # "args":Landroid/os/Bundle;
    if-eqz v17, :cond_b

    .line 9892
    const-string v4, "bigdata"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 9893
    .local v42, "isBigDataLog":Z
    if-eqz v42, :cond_a

    .line 9894
    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9895
    .restart local v6    # "feature":Ljava/lang/String;
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 9896
    .local v25, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .line 9899
    .end local v6    # "feature":Ljava/lang/String;
    .end local v25    # "data":Ljava/lang/String;
    :cond_a
    const-string v4, "feature"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9900
    .restart local v6    # "feature":Ljava/lang/String;
    const-string v4, "extra"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9901
    .local v7, "extra":Ljava/lang/String;
    const-string v4, "value"

    const-wide/16 v60, -0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v60

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 9902
    .local v8, "value":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 9903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mBigData:Lcom/samsung/android/server/wifi/WifiBigDataLog;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->initialize()V

    goto/16 :goto_0

    .line 9906
    .end local v6    # "feature":Ljava/lang/String;
    .end local v7    # "extra":Ljava/lang/String;
    .end local v8    # "value":J
    .end local v42    # "isBigDataLog":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "CMD_SEC_LOGGING : args is null!"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9912
    .end local v17    # "args":Landroid/os/Bundle;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->analyzeKernelWifiWakelocks()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6700(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 9915
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/util/AsyncChannel;

    .line 9916
    .local v16, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_d

    .line 9917
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_c

    .line 9918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x11001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 9920
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiP2pService connection failure, error="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9923
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9928
    .end local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/util/AsyncChannel;

    .line 9929
    .restart local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, v16

    if-ne v0, v4, :cond_0

    .line 9930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9938
    .end local v16    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_2
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6902(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    goto :goto_2

    .line 9947
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9950
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9953
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, v0, v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9956
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, v0, v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 9959
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_f

    const/4 v4, 0x1

    :goto_3
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    goto :goto_3

    .line 9962
    :sswitch_f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 9963
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x2

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 9965
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x2

    const/4 v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 9969
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    .line 9970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 9972
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v24

    .line 9973
    .local v24, "countryCode":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 9974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v54

    .line 9982
    .local v54, "sequenceNum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x20050

    const/4 v10, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v24

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v4, v5, v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7700(Lcom/android/server/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    .line 9985
    .end local v54    # "sequenceNum":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 9986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "WIFI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$7900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v4, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7802(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 9989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 9990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v4

    new-instance v5, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v10, "WIFI"

    invoke-virtual {v4, v5, v10}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 9992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->registerForImsRegistration()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8000(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x200d5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->delayCheckScanCountLoggingTimeMilli:J
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v60

    move-wide/from16 v0, v60

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 9997
    .end local v24    # "countryCode":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_4
    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8100(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x0

    goto :goto_4

    .line 10000
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSetCountryCode:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 10005
    :sswitch_13
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 10006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "HS20_OSU_FETCH_COMPLETE"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10008
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastOsuProviderFetchedCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendHs20ProviderUpdateBroadcast()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10012
    :sswitch_14
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 10013
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_REMEDIATION_REQUEST CRED_ID: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " MethodType: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10016
    :cond_15
    new-instance v50, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_REMEDIATION_REQUEST"

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10017
    .local v50, "remediationIntent":Landroid/content/Intent;
    const-string v4, "cred_id"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10018
    const-string v4, "method_type"

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10019
    const-string v5, "url"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 10023
    .end local v50    # "remediationIntent":Landroid/content/Intent;
    :sswitch_15
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 10025
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_WNM_DEAUTH_IMMINENT URL: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10027
    :cond_16
    new-instance v28, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_WNM_DEAUTH_IMMINENT"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10029
    .local v28, "deauthImminentIntent":Landroid/content/Intent;
    const-string v5, "url"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 10033
    .end local v28    # "deauthImminentIntent":Landroid/content/Intent;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_CONFIGURATION_UPDATE, message.arg1 ="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateHS20AnqpInfoToaddToConfiguredNetwork(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8400(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 10037
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 10038
    .local v49, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HS20_DISABLED_COMPLETE"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->isHs20Enabled:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncClearHs20()V

    .line 10041
    const-string v4, "cred_error"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "HS20_DISABLED_COMPLETE the eason by cred+error"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10043
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10044
    .local v39, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10048
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v49    # "reason":Ljava/lang/String;
    :sswitch_18
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10049
    .restart local v39    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10053
    .end local v39    # "intent":Landroid/content/Intent;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 10054
    .local v26, "dataString":Ljava/lang/String;
    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v56

    .line 10055
    .local v56, "tokens":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v56, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    .line 10056
    .local v35, "friendlyName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 10057
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received HS20_START_OSU_STR: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10059
    :cond_17
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10060
    .restart local v39    # "intent":Landroid/content/Intent;
    const-string v4, "friendly_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10065
    .end local v26    # "dataString":Ljava/lang/String;
    .end local v35    # "friendlyName":Ljava/lang/String;
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v56    # "tokens":[Ljava/lang/String;
    :sswitch_1a
    new-instance v27, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 10067
    .local v27, "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteTheContents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 10068
    :catch_0
    move-exception v30

    .line 10069
    .local v30, "e":Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 10074
    .end local v27    # "dbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    .end local v30    # "e":Ljava/lang/Exception;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 10075
    .restart local v26    # "dataString":Ljava/lang/String;
    const-string v4, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v56

    .line 10076
    .restart local v56    # "tokens":[Ljava/lang/String;
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10077
    .restart local v39    # "intent":Landroid/content/Intent;
    const-string v4, "filetype"

    const/4 v5, 0x1

    aget-object v5, v56, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10078
    const-string v4, "filename"

    const/4 v5, 0x2

    aget-object v5, v56, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10079
    const-string v4, "filepath"

    const/4 v5, 0x3

    aget-object v5, v56, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10080
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10086
    .end local v26    # "dataString":Ljava/lang/String;
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v56    # "tokens":[Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10164
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10167
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 10168
    .local v23, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    const/16 v48, 0x1

    .line 10169
    .local v48, "persist":Z
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 10170
    .local v53, "sequence":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move/from16 v0, v53

    if-eq v0, v4, :cond_19

    .line 10171
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "set country code ignored due to sequnce num"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10168
    .end local v48    # "persist":Z
    .end local v53    # "sequence":I
    :cond_18
    const/16 v48, 0x0

    goto :goto_5

    .line 10175
    .restart local v48    # "persist":Z
    .restart local v53    # "sequence":I
    :cond_19
    if-eqz v48, :cond_0

    .line 10176
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    .line 10177
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set country code "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v23, :cond_1c

    const-string v4, "(null)"

    :goto_6
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10178
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_country_code"

    if-nez v23, :cond_1b

    const-string v23, ""

    .end local v23    # "country":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v23

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .restart local v23    # "country":Ljava/lang/String;
    :cond_1c
    move-object/from16 v4, v23

    .line 10177
    goto :goto_6

    .line 10185
    .end local v23    # "country":Ljava/lang/String;
    .end local v48    # "persist":Z
    .end local v53    # "sequence":I
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8902(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    .line 10188
    :sswitch_20
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 10189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x4

    const/4 v10, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 10192
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x4

    const/4 v10, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 10194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 10195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsInProgress:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->enableAllNetworks()V

    goto/16 :goto_0

    .line 10205
    :sswitch_21
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10206
    const-string v58, "wapi_string"

    .line 10207
    .local v58, "wapiEventName":Ljava/lang/String;
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10209
    .restart local v39    # "intent":Landroid/content/Intent;
    const/16 v4, 0x10

    move-object/from16 v0, v39

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10216
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v58    # "wapiEventName":Ljava/lang/String;
    :sswitch_22
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10217
    const-string v58, "wapi_string"

    .line 10218
    .restart local v58    # "wapiEventName":Ljava/lang/String;
    new-instance v39, Landroid/content/Intent;

    const-string v4, "android.net.wifi.supplicant.WAPI_EVENT"

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10220
    .restart local v39    # "intent":Landroid/content/Intent;
    const/16 v4, 0x11

    move-object/from16 v0, v39

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10225
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v58    # "wapiEventName":Ljava/lang/String;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 10226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/BaseDhcpStateMachine;->doQuit()V

    .line 10228
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverErrorMessage:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$9202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10229
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    .line 10230
    .local v36, "hangReason":Ljava/lang/String;
    if-eqz v36, :cond_1f

    .line 10232
    :try_start_1
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v5, 0x8000

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v36

    .line 10251
    :cond_1f
    :goto_7
    if-eqz v36, :cond_20

    const-string v4, "77"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 10252
    const-string v4, "WifiStateMachine"

    const-string v5, "mWakeLock.acquire by reason 77 driver hung"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 10255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2014a

    const-wide/16 v60, 0x1770

    move-wide/from16 v0, v60

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 10257
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 10258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 10264
    .end local v36    # "hangReason":Ljava/lang/String;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25002

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10268
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkIdsForRemoval:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10270
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25005

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10274
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworksToUpdate:Ljava/util/Queue;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10276
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$9500()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25008

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10281
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2500c

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10285
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2500f

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10289
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25012

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10293
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x25016

    const/4 v10, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10297
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/content/Intent;

    .line 10298
    .restart local v39    # "intent":Landroid/content/Intent;
    if-eqz v39, :cond_0

    .line 10299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachineForCurrentUser(Landroid/content/Intent;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 10304
    .end local v39    # "intent":Landroid/content/Intent;
    :sswitch_2e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiStateMachine"

    const-string v5, "Not in WaitForUserSelectionState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 10307
    :sswitch_2f
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_21

    const/16 v20, 0x1

    .line 10308
    .local v20, "calledFromApi":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v0, v20

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updatePoorNetworkParameters(Z)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    .line 10307
    .end local v20    # "calledFromApi":Z
    :cond_21
    const/16 v20, 0x0

    goto :goto_8

    .line 10311
    :sswitch_30
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v31

    .line 10312
    .local v31, "featureSet":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    move/from16 v1, v31

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, v0, v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7000(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10315
    .end local v31    # "featureSet":I
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10316
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v19, v4

    check-cast v19, [B

    .line 10317
    .local v19, "buffer":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wifi/DummyWifiLogger;->captureAlertData(I[B)V

    goto/16 :goto_0

    .line 10322
    .end local v19    # "buffer":[B
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    new-instance v10, Landroid/net/wifi/WifiLinkLayerStats;

    invoke-direct {v10}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 10325
    :sswitch_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/net/NetworkInfo;

    .line 10326
    .local v38, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 10329
    .end local v38    # "info":Landroid/net/NetworkInfo;
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_22

    const/4 v4, 0x1

    :goto_9
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2300d

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 10329
    :cond_22
    const/4 v4, 0x0

    goto :goto_9

    .line 10334
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$10200(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 10337
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 10342
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10345
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v10

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, v0, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 10348
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 10351
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 10354
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v10, -0x14

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 10359
    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v10, -0x14

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->onPacketKeepaliveEvent(II)V

    goto/16 :goto_0

    .line 10364
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10367
    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10371
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$8800()I

    move-result v5

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$8702(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10374
    :sswitch_40
    const-string v4, "WifiStateMachine"

    const-string v5, "DefaultState::Handling CMD_SEC_API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 10379
    :sswitch_41
    const-string v4, "WifiStateMachine"

    const-string v5, "DefaultState::Handling CMD_SEC_STRING_API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 10385
    :sswitch_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileServer()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startShareProfileServer()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10389
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->sharedChannel:[I
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)[I

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lcom/android/server/wifi/WifiStateMachine;->startPartialScan(I[I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 10390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/16 v59, 0x0

    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-virtual {v4, v5, v10, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 10394
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/16 v10, 0x3e8

    invoke-static {v5, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10397
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateConfiguredNetworkExpiration()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$10900(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10400
    :sswitch_46
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/os/Bundle;

    .line 10401
    .local v45, "msgObj":Landroid/os/Bundle;
    const-string v4, "deviceAddress"

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 10402
    .local v29, "deviceAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getIpAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 10403
    .local v12, "targetIP":Ljava/lang/String;
    const-string v4, "filePath"

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10404
    .local v11, "filePath":Ljava/lang/String;
    const-string v4, "senderName"

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10405
    .local v13, "senderName":Ljava/lang/String;
    const-string v4, "SSIDs"

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 10406
    .local v14, "ssidsToSend":Ljava/lang/String;
    const-string v4, "disconnectOnCompletion"

    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 10407
    .local v15, "disconnectOnCompletion":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    .line 10408
    .local v51, "retryCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientThreadOngoing:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-nez v4, :cond_24

    if-eqz v12, :cond_24

    .line 10409
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 10410
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER, Peer: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "), filePath: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", senderName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", SSIDs: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", disconnectOnCompletion: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10415
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v29

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDeviceAddressToDisconnect:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 10416
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startShareProfileClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/wifi/WifiStateMachine;->access$11300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 10417
    :cond_24
    if-gtz v51, :cond_25

    .line 10418
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER failed. Peer: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "), filePath: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", senderName: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", SSIDs: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", disconnectOnCompletion: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    const v10, 0x2013e

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v59

    const v60, 0x104084e

    invoke-virtual/range {v59 .. v60}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, v59

    invoke-static {v5, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 10425
    if-eqz v15, :cond_0

    .line 10427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v5, 0x2013f

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 10429
    :cond_25
    if-eqz v12, :cond_26

    if-lez v51, :cond_0

    .line 10431
    :cond_26
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 10432
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER, Retry - targetIP: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mClientThreadOngoing: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mClientThreadOngoing:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->access$11100(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", retryCount: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10436
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    const v10, 0x2013c

    add-int/lit8 v51, v51, -0x1

    const/16 v59, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    move/from16 v0, v51

    move/from16 v1, v59

    move-object/from16 v2, v60

    invoke-static {v5, v10, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v60, 0x3e8

    move-wide/from16 v0, v60

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10441
    const/16 v37, 0xa

    .restart local v37    # "i":I
    :goto_a
    const/16 v4, 0x15

    move/from16 v0, v37

    if-ge v0, v4, :cond_29

    .line 10443
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "192.168.49."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 10444
    .local v40, "ip":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v41

    .line 10445
    .local v41, "ipAddress":Ljava/net/InetAddress;
    const/4 v4, 0x5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 10441
    .end local v40    # "ip":Ljava/lang/String;
    .end local v41    # "ipAddress":Ljava/net/InetAddress;
    :cond_28
    :goto_b
    add-int/lit8 v37, v37, 0x1

    goto :goto_a

    .line 10446
    :catch_1
    move-exception v30

    .line 10447
    .local v30, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER isReachable"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 10450
    .end local v30    # "e":Ljava/io/IOException;
    :cond_29
    const/16 v37, 0xc8

    :goto_c
    const/16 v4, 0xd3

    move/from16 v0, v37

    if-ge v0, v4, :cond_0

    .line 10452
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "192.168.49."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 10453
    .restart local v40    # "ip":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v41

    .line 10454
    .restart local v41    # "ipAddress":Ljava/net/InetAddress;
    const/4 v4, 0x5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 10450
    .end local v40    # "ip":Ljava/lang/String;
    .end local v41    # "ipAddress":Ljava/net/InetAddress;
    :cond_2a
    :goto_d
    add-int/lit8 v37, v37, 0x1

    goto :goto_c

    .line 10455
    :catch_2
    move-exception v30

    .line 10456
    .restart local v30    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMD_SEND_WIFI_PROFILES_TO_SELECTED_PEER isReachable"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 10462
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "targetIP":Ljava/lang/String;
    .end local v13    # "senderName":Ljava/lang/String;
    .end local v14    # "ssidsToSend":Ljava/lang/String;
    .end local v15    # "disconnectOnCompletion":Z
    .end local v29    # "deviceAddress":Ljava/lang/String;
    .end local v30    # "e":Ljava/io/IOException;
    .end local v37    # "i":I
    .end local v45    # "msgObj":Landroid/os/Bundle;
    .end local v51    # "retryCount":I
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->closeShareProfileClient()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2600(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10465
    :sswitch_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 10468
    :sswitch_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->finishShareProfileConnection()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 10473
    :sswitch_4a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 10474
    const-string v4, "WifiStateMachine"

    const-string v5, "receive WifiMonitor.HANDOVER_EVENT "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10476
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    goto/16 :goto_0

    .line 10479
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 10480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x20272

    invoke-virtual {v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 10482
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "ignore P2P_FACTORY_RESET"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10233
    .restart local v36    # "hangReason":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_7

    .line 9778
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_7
        0x11004 -> :sswitch_8
        0x2000b -> :sswitch_1d
        0x2000c -> :sswitch_1d
        0x2000d -> :sswitch_1d
        0x2000e -> :sswitch_1d
        0x20011 -> :sswitch_1d
        0x20012 -> :sswitch_1d
        0x20013 -> :sswitch_1d
        0x20015 -> :sswitch_1d
        0x20016 -> :sswitch_1d
        0x20017 -> :sswitch_1d
        0x20018 -> :sswitch_1d
        0x20019 -> :sswitch_1d
        0x2001a -> :sswitch_1d
        0x2001b -> :sswitch_1d
        0x2001c -> :sswitch_1d
        0x2001d -> :sswitch_1d
        0x2001e -> :sswitch_1d
        0x2001f -> :sswitch_9
        0x20033 -> :sswitch_a
        0x20034 -> :sswitch_a
        0x20035 -> :sswitch_a
        0x20036 -> :sswitch_a
        0x20037 -> :sswitch_1d
        0x20038 -> :sswitch_1d
        0x20039 -> :sswitch_1d
        0x2003a -> :sswitch_a
        0x2003b -> :sswitch_c
        0x2003c -> :sswitch_b
        0x2003d -> :sswitch_30
        0x2003e -> :sswitch_d
        0x2003f -> :sswitch_32
        0x20047 -> :sswitch_1c
        0x20048 -> :sswitch_1d
        0x20049 -> :sswitch_1d
        0x2004a -> :sswitch_1d
        0x2004b -> :sswitch_1d
        0x2004c -> :sswitch_38
        0x2004d -> :sswitch_f
        0x20050 -> :sswitch_1e
        0x20051 -> :sswitch_12
        0x20052 -> :sswitch_e
        0x20053 -> :sswitch_1d
        0x20056 -> :sswitch_20
        0x20058 -> :sswitch_1d
        0x20059 -> :sswitch_1d
        0x2005a -> :sswitch_1d
        0x2005d -> :sswitch_1d
        0x2005e -> :sswitch_1d
        0x2005f -> :sswitch_11
        0x20060 -> :sswitch_1d
        0x20061 -> :sswitch_39
        0x20062 -> :sswitch_1d
        0x20063 -> :sswitch_36
        0x20064 -> :sswitch_31
        0x2006d -> :sswitch_1d
        0x2006e -> :sswitch_1d
        0x2007e -> :sswitch_1d
        0x20085 -> :sswitch_1d
        0x20086 -> :sswitch_10
        0x2008a -> :sswitch_37
        0x2008b -> :sswitch_37
        0x2008c -> :sswitch_35
        0x2008d -> :sswitch_1d
        0x2008e -> :sswitch_1d
        0x2008f -> :sswitch_1d
        0x20090 -> :sswitch_1d
        0x20091 -> :sswitch_1d
        0x20092 -> :sswitch_1d
        0x20093 -> :sswitch_1d
        0x20095 -> :sswitch_37
        0x20098 -> :sswitch_3a
        0x2009a -> :sswitch_1d
        0x2009b -> :sswitch_1d
        0x2009e -> :sswitch_1d
        0x2009f -> :sswitch_1d
        0x200a0 -> :sswitch_3b
        0x200a1 -> :sswitch_3c
        0x200a2 -> :sswitch_3d
        0x200a3 -> :sswitch_3e
        0x200ca -> :sswitch_5
        0x200cb -> :sswitch_1d
        0x200cc -> :sswitch_1d
        0x200ce -> :sswitch_25
        0x200cf -> :sswitch_27
        0x200d0 -> :sswitch_1d
        0x200d1 -> :sswitch_1d
        0x200d2 -> :sswitch_6
        0x200d3 -> :sswitch_2
        0x200d4 -> :sswitch_3
        0x200d5 -> :sswitch_4
        0x2012c -> :sswitch_3f
        0x2012d -> :sswitch_40
        0x2012e -> :sswitch_41
        0x20130 -> :sswitch_2d
        0x20134 -> :sswitch_1d
        0x20135 -> :sswitch_1d
        0x20136 -> :sswitch_2e
        0x20137 -> :sswitch_2f
        0x20138 -> :sswitch_42
        0x20139 -> :sswitch_44
        0x2013a -> :sswitch_45
        0x2013b -> :sswitch_43
        0x2013c -> :sswitch_46
        0x2013d -> :sswitch_47
        0x2013e -> :sswitch_48
        0x2013f -> :sswitch_49
        0x20140 -> :sswitch_1d
        0x2014a -> :sswitch_0
        0x2014b -> :sswitch_1
        0x2025e -> :sswitch_1d
        0x20272 -> :sswitch_4b
        0x21013 -> :sswitch_1d
        0x21014 -> :sswitch_1d
        0x21015 -> :sswitch_1d
        0x21016 -> :sswitch_1d
        0x21017 -> :sswitch_1d
        0x21019 -> :sswitch_1d
        0x2300b -> :sswitch_33
        0x2300c -> :sswitch_34
        0x24001 -> :sswitch_1d
        0x24002 -> :sswitch_1d
        0x24003 -> :sswitch_1d
        0x24004 -> :sswitch_1d
        0x24005 -> :sswitch_1d
        0x24006 -> :sswitch_1d
        0x24007 -> :sswitch_1d
        0x2400a -> :sswitch_1d
        0x2400c -> :sswitch_23
        0x2400f -> :sswitch_1d
        0x24010 -> :sswitch_1d
        0x24011 -> :sswitch_1d
        0x2402b -> :sswitch_1d
        0x2404c -> :sswitch_13
        0x2404d -> :sswitch_16
        0x2404e -> :sswitch_17
        0x2404f -> :sswitch_14
        0x24051 -> :sswitch_15
        0x24053 -> :sswitch_1b
        0x24054 -> :sswitch_19
        0x24055 -> :sswitch_18
        0x24056 -> :sswitch_1a
        0x2405a -> :sswitch_21
        0x2405b -> :sswitch_22
        0x2408d -> :sswitch_4a
        0x25001 -> :sswitch_24
        0x25004 -> :sswitch_26
        0x25007 -> :sswitch_28
        0x2500a -> :sswitch_29
        0x2500e -> :sswitch_2a
        0x25011 -> :sswitch_2b
        0x25014 -> :sswitch_2c
        0x30004 -> :sswitch_1d
        0x30005 -> :sswitch_1d
        0x30006 -> :sswitch_1f
    .end sparse-switch
.end method
