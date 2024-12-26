.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModifyingMO"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1689
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1690
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1703
    const/4 v0, 0x0

    .line 1704
    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1759
    :goto_0
    :sswitch_0
    return v0

    .line 1706
    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1708
    const/4 v0, 0x1

    .line 1709
    goto :goto_0

    .line 1711
    :sswitch_2
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1713
    const/4 v0, 0x1

    .line 1714
    goto :goto_0

    .line 1716
    :sswitch_3
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v4, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1718
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1719
    const/4 v0, 0x1

    .line 1720
    goto :goto_0

    .line 1722
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1723
    const/4 v0, 0x1

    .line 1724
    goto :goto_0

    .line 1726
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1727
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1728
    const/4 v0, 0x1

    .line 1729
    goto :goto_0

    .line 1731
    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1732
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 1733
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v3, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    goto :goto_0

    .line 1734
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_1

    .line 1735
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v4, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    goto :goto_0

    .line 1737
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v3, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    goto :goto_0

    .line 1745
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v2, 0x1b65

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1746
    const/4 v0, 0x1

    .line 1747
    goto :goto_0

    .line 1704
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_6
        0x1b62 -> :sswitch_4
        0x1b65 -> :sswitch_3
        0x1b66 -> :sswitch_5
        0x1b6e -> :sswitch_0
        0x1b72 -> :sswitch_7
        0x1b75 -> :sswitch_1
        0x1b76 -> :sswitch_2
    .end sparse-switch
.end method
