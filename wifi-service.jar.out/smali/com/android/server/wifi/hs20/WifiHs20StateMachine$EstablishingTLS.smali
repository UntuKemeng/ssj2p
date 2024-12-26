.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EstablishingTLS"
.end annotation


# instance fields
.field private requestReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 1

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1347
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1348
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription_flag credential_type method_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    if-nez v0, :cond_4

    .line 1352
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v0, :cond_1

    .line 1354
    const-string v0, "HS2.0SubscriptionCreation"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    .line 1379
    :cond_0
    :goto_0
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestReason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return-void

    .line 1356
    :cond_1
    const-string v0, "Subscription provisioning"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v0, :cond_3

    .line 1359
    const-string v0, "HS2.0SubscriptionCreation"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    .line 1362
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getServerUri()Ljava/net/URI;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    goto :goto_0

    .line 1361
    :cond_3
    const-string v0, "Subscription registration"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto :goto_1

    .line 1365
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1366
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policyUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    if-eqz v0, :cond_6

    .line 1368
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v0, :cond_5

    .line 1369
    const-string v0, "HS2.0PolicyUpdate"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto :goto_0

    .line 1371
    :cond_5
    const-string v0, "Policy update"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto :goto_0

    .line 1373
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v0, :cond_7

    .line 1374
    const-string v0, "HS2.0SubscriptionRemediation"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_0

    .line 1376
    :cond_7
    const-string v0, "Subscription remediation"

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->requestReason:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1399
    const/4 v0, 0x0

    .line 1400
    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1475
    :goto_0
    return v0

    .line 1402
    :sswitch_0
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1404
    const/4 v0, 0x1

    .line 1405
    goto :goto_0

    .line 1407
    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1409
    const/4 v0, 0x1

    .line 1410
    goto :goto_0

    .line 1412
    :sswitch_2
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_PROTOCOL_ERROR method_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-nez v1, :cond_0

    .line 1414
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v4, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 1417
    :goto_1
    const/4 v0, 0x1

    .line 1418
    goto :goto_0

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    goto :goto_1

    .line 1420
    :sswitch_3
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v4, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1422
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1423
    const/4 v0, 0x1

    .line 1424
    goto :goto_0

    .line 1429
    :sswitch_4
    const/4 v0, 0x1

    .line 1430
    goto :goto_0

    .line 1432
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    .line 1433
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_EXECUTE_COMMAND  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1436
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1437
    const/4 v0, 0x1

    .line 1438
    goto/16 :goto_0

    .line 1440
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1441
    const/4 v0, 0x1

    .line 1442
    goto/16 :goto_0

    .line 1444
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1445
    const/4 v0, 0x1

    .line 1446
    goto/16 :goto_0

    .line 1448
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1449
    const/4 v0, 0x1

    .line 1450
    goto/16 :goto_0

    .line 1455
    :pswitch_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1460
    :sswitch_6
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_UPDATE_MO  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1462
    const/4 v0, 0x1

    .line 1463
    goto/16 :goto_0

    .line 1465
    :sswitch_7
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_HOTSPOT20_DISABLE  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v2, 0x1b65

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1467
    const/4 v0, 0x1

    .line 1468
    goto/16 :goto_0

    .line 1470
    :sswitch_8
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1471
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1472
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1400
    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_4
        0x1b5f -> :sswitch_5
        0x1b61 -> :sswitch_6
        0x1b65 -> :sswitch_3
        0x1b66 -> :sswitch_8
        0x1b72 -> :sswitch_7
        0x1b74 -> :sswitch_2
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch

    .line 1434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
