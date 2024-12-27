.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DiscoveringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, "bRetVal":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_SELECT_OSU"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v6, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_START_REMEDIATION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :sswitch_2
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_HOTSPOT20_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_START_POLICY_REMEDIATION"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v7, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v7, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, p1, Landroid/os/Message;->arg2:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v1

    .local v1, "cred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    :goto_2
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_START_POLICY_REMEDIATION - credential ID , Method Type, Credential Type , Server URI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_START_POLICY_REMEDIATION uri null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_START_POLICY_REMEDIATION policyupdateobj null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "cred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .end local v3    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :sswitch_4
    const-string v4, "HS20StateMachine"

    const-string v5, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v6, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v7, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v5

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const-string v5, "http://127.0.0.1:12345"

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMD_START_SUBSCRIPTION_REMEDIATION - credential ID , Method Type, Credential Type , Server URI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    iput v5, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v6, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b5a -> :sswitch_1
        0x1b5e -> :sswitch_5
        0x1b6b -> :sswitch_0
        0x1b72 -> :sswitch_2
        0x1b75 -> :sswitch_3
        0x1b76 -> :sswitch_4
    .end sparse-switch
.end method
