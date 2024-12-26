.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method

.method private getWifiConnectedChannel(I)I
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    .line 1176
    const/4 v1, -0x1

    .line 1177
    .local v1, "channel":I
    const/16 v0, 0x96c

    .line 1178
    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .line 1179
    .local v2, "freqDiff":I
    if-nez v2, :cond_1

    .line 1180
    const/4 v1, 0x1

    .line 1190
    :cond_0
    :goto_0
    return v1

    .line 1182
    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    .line 1183
    const/16 v3, 0xb

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    .line 1184
    const/4 v1, 0x0

    .line 1186
    :cond_2
    if-le v1, v4, :cond_0

    .line 1187
    const/16 v1, 0x95

    goto :goto_0
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 862
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 849
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$502(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 858
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 36
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 867
    const-string v4, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 868
    .local v19, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1172
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 877
    :sswitch_0
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Iface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 878
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 880
    :cond_1
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 883
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Added Wi-Fi hotspot "

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v4, 0x1

    goto :goto_1

    .line 888
    :cond_2
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 891
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Removed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v4, 0x1

    goto :goto_1

    .line 896
    :cond_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 899
    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "NetworkManagementService"

    const-string v9, "Changed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 904
    :cond_4
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "linkstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 911
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 913
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 920
    :sswitch_1
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_6

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "limit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 921
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 923
    :cond_7
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 927
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 934
    :sswitch_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceMessage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 935
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 937
    :cond_a
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v4, 0x4

    aget-object v4, p3, v4

    if-eqz v4, :cond_b

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 943
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 941
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    goto :goto_2

    .line 950
    :sswitch_3
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_c

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 951
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 953
    :cond_d
    const-wide/16 v8, 0x0

    .line 954
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 956
    const/4 v4, 0x4

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v8

    .line 961
    :goto_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "active"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 962
    .local v26, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v26, :cond_f

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_4
    const/4 v10, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 965
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 959
    .end local v26    # "isActive":Z
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_3

    .line 962
    .restart local v26    # "isActive":Z
    :cond_f
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_4

    .line 973
    .end local v8    # "timestampNanos":J
    .end local v26    # "isActive":Z
    :sswitch_4
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x7

    if-lt v4, v5, :cond_10

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 974
    :cond_10
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 977
    :cond_11
    const/4 v4, 0x4

    aget-object v24, p3, v4

    .line 980
    .local v24, "iface":Ljava/lang/String;
    const/4 v4, 0x5

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 981
    .local v21, "flags":I
    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 982
    .local v31, "scope":I
    new-instance v16, Landroid/net/LinkAddress;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 989
    .local v16, "address":Landroid/net/LinkAddress;
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 994
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 983
    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v31    # "scope":I
    :catch_0
    move-exception v18

    .line 984
    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 985
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 986
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 992
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "address":Landroid/net/LinkAddress;
    .restart local v21    # "flags":I
    .restart local v31    # "scope":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_5

    .line 1003
    .end local v16    # "address":Landroid/net/LinkAddress;
    .end local v21    # "flags":I
    .end local v24    # "iface":Ljava/lang/String;
    .end local v31    # "scope":I
    :sswitch_5
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "DnsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "servers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1007
    const/4 v4, 0x4

    :try_start_2
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v28

    .line 1011
    .local v28, "lifetime":J
    const/4 v4, 0x5

    aget-object v4, p3, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1012
    .local v32, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-wide/from16 v0, v28

    move-object/from16 v2, v32

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 1014
    .end local v28    # "lifetime":J
    .end local v32    # "servers":[Ljava/lang/String;
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1008
    :catch_2
    move-exception v18

    .line 1009
    .local v18, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1021
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :sswitch_6
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Route"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_15

    .line 1022
    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1025
    :cond_15
    const/16 v35, 0x0

    .line 1026
    .local v35, "via":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1027
    .local v17, "dev":Ljava/lang/String;
    const/16 v34, 0x1

    .line 1028
    .local v34, "valid":Z
    const/16 v23, 0x4

    .local v23, "i":I
    :goto_6
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v4, v5, :cond_1a

    if-eqz v34, :cond_1a

    .line 1029
    aget-object v4, p3, v23

    const-string v5, "dev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1030
    if-nez v17, :cond_16

    .line 1031
    add-int/lit8 v4, v23, 0x1

    aget-object v17, p3, v4

    .line 1028
    :goto_7
    add-int/lit8 v23, v23, 0x2

    goto :goto_6

    .line 1033
    :cond_16
    const/16 v34, 0x0

    goto :goto_7

    .line 1035
    :cond_17
    aget-object v4, p3, v23

    const-string/jumbo v5, "via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1036
    if-nez v35, :cond_18

    .line 1037
    add-int/lit8 v4, v23, 0x1

    aget-object v35, p3, v4

    goto :goto_7

    .line 1039
    :cond_18
    const/16 v34, 0x0

    goto :goto_7

    .line 1042
    :cond_19
    const/16 v34, 0x0

    goto :goto_7

    .line 1045
    :cond_1a
    if-eqz v34, :cond_1c

    .line 1048
    const/16 v22, 0x0

    .line 1049
    .local v22, "gateway":Ljava/net/InetAddress;
    if-eqz v35, :cond_1b

    :try_start_3
    invoke-static/range {v35 .. v35}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v22

    .line 1050
    :cond_1b
    new-instance v27, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1051
    .local v27, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v4, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1052
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1053
    .end local v27    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v4

    .line 1055
    .end local v22    # "gateway":Ljava/net/InetAddress;
    :cond_1c
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1058
    .end local v17    # "dev":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v34    # "valid":Z
    .end local v35    # "via":Ljava/lang/String;
    :sswitch_7
    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 1059
    .local v33, "uid":I
    const/4 v4, 0x2

    aget-object v4, p3, v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 1061
    .local v20, "firstPacket":[B
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    move/from16 v0, v33

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1062
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 1067
    .end local v20    # "firstPacket":[B
    .end local v33    # "uid":I
    :sswitch_8
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 1068
    .local v30, "sb":Ljava/lang/StringBuffer;
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_8
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_1e

    .line 1070
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v4, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-nez v4, :cond_1d

    aget-object v4, p3, v23

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1d

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v23

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v23

    const/16 v6, 0xc

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    :goto_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1073
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 1076
    :cond_1e
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApCust;->addMHSClientHistoryLog(Ljava/lang/String;)V

    .line 1077
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1079
    :cond_1f
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1080
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_20
    :goto_a
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v25, "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_21

    .line 1093
    const-string v4, "NUM"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_21
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_22

    .line 1097
    const-string v4, "MAC"

    const/4 v5, 0x4

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1100
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1083
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_23
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1084
    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "NetworkManagementService"

    const-string v15, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1102
    :cond_24
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_assoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1103
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_25

    .line 1107
    const-string v4, "MAC"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1110
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1112
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_26
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_overlap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_pin_needed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1113
    :cond_27
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wps State Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    new-instance v25, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .restart local v25    # "intent":Landroid/content/Intent;
    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1117
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1120
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_28
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "driver_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string v5, "HANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1121
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    .restart local v25    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1123
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1126
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_29
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "channel_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1147
    :cond_2a
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "channel_changed_5to2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1167
    :cond_2b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 957
    .end local v23    # "i":I
    .end local v30    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "timestampNanos":J
    :catch_5
    move-exception v4

    goto/16 :goto_3

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_3
        0x266 -> :sswitch_4
        0x267 -> :sswitch_5
        0x268 -> :sswitch_6
        0x269 -> :sswitch_7
        0x26a -> :sswitch_2
        0x28b -> :sswitch_8
    .end sparse-switch
.end method
