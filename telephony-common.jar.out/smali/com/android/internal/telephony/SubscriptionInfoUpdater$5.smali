.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 441
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v7, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 445
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$602(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    goto :goto_0

    .line 459
    :cond_2
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 461
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 462
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsSystemShutdown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_4
    const-string v6, "phone"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 469
    .local v5, "slotId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 470
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 472
    :cond_5
    if-eq v5, v9, :cond_0

    .line 477
    :cond_6
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "simStatus":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 480
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 481
    const-string v6, "READY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 482
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$700()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    if-eqz v6, :cond_7

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$700()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hot plug in"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 484
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$700()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v7, v6, v5

    .line 485
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z
    invoke-static {v6, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$802(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    .line 487
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V
    invoke-static {v6, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 528
    :cond_8
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v7, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_9
    const-string v6, "ABSENT"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 489
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 490
    :cond_a
    const-string v6, "UNKNOWN"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 491
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v8, 0x7

    invoke-virtual {v7, v8, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 492
    :cond_b
    const-string v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 494
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v8, 0x6

    invoke-virtual {v7, v8, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 497
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring simStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_d
    const-string v6, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 501
    const-string v6, "refresh_result"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 502
    .local v2, "refreshResult":I
    const-string v6, "SLOT_ID"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 503
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " refreshResult: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 504
    if-eq v5, v9, :cond_0

    .line 507
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    .line 508
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000()[Z

    move-result-object v6

    aput-boolean v10, v6, v5

    goto/16 :goto_1

    .line 511
    .end local v2    # "refreshResult":I
    :cond_e
    const-string v6, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 512
    const-string v6, "LOCKED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 513
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "reason":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v5, v9, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 516
    .end local v1    # "reason":Ljava/lang/String;
    :cond_f
    const-string v6, "LOADED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 517
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v5, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 519
    :cond_10
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring simStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :cond_11
    const-string v6, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 522
    const-string v6, "REASON"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 523
    .local v4, "simreason":Z
    if-nez v4, :cond_8

    .line 524
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v7, "Receive QCOMHOTSWAP false intent so sIsStartSimManagement setted false for initial"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 525
    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z
    invoke-static {v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1102(Z)Z

    goto/16 :goto_1
.end method
