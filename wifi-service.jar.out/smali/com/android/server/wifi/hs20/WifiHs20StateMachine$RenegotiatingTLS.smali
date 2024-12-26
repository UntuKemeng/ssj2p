.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenegotiatingTLS"
.end annotation


# instance fields
.field private requestReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 1

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->requestReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1484
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1485
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    const/4 v2, -0x1

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->executeCommand(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    .line 1487
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1540
    :goto_0
    return v0

    .line 1494
    :sswitch_0
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1496
    const/4 v0, 0x1

    .line 1497
    goto :goto_0

    .line 1499
    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1501
    const/4 v0, 0x1

    .line 1502
    goto :goto_0

    .line 1511
    :sswitch_2
    const/4 v0, 0x1

    .line 1512
    goto :goto_0

    .line 1514
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    .line 1515
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_EXECUTE_COMMAND  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1518
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1519
    const/4 v0, 0x1

    .line 1520
    goto :goto_0

    .line 1526
    :sswitch_4
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1529
    :sswitch_5
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_HOTSPOT20_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v2, 0x1b65

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1531
    const/4 v0, 0x1

    .line 1532
    goto :goto_0

    .line 1534
    :sswitch_6
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1536
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1492
    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_2
        0x1b5f -> :sswitch_3
        0x1b65 -> :sswitch_6
        0x1b6e -> :sswitch_4
        0x1b72 -> :sswitch_5
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch

    .line 1516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
