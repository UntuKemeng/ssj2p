.class Lcom/android/server/am/SchedPolicyManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SchedPolicyManager;->registerBarTenderReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 522
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v11, "PID"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 525
    .local v8, "pidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 528
    const-string/jumbo v11, "kill"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 530
    .local v6, "killProcess":Z
    const-string v11, "cached"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 531
    .local v2, "cached":Z
    const-string v11, "abnormal"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 533
    .local v0, "abnormal":Z
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 534
    const-string v11, "SchedPolicyManager"

    const-string v12, "Value is not set. ACTION_BARTENDER_SLOW_DOWN intent needs at least 1 target group."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_2
    const-string/jumbo v11, "stay"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 540
    .local v10, "stay":Z
    const-string/jumbo v11, "release"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 541
    .local v9, "release":Z
    iget-object v11, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    monitor-enter v12

    .line 542
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 543
    iget-object v11, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 544
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 545
    .local v7, "pid":Ljava/lang/Integer;
    iget v11, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v11, v13, :cond_3

    .line 546
    if-eqz v6, :cond_6

    .line 547
    iget-object v11, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z
    invoke-static {v11, v1, v2, v0}, Lcom/android/server/am/SchedPolicyManager;->access$700(Lcom/android/server/am/SchedPolicyManager;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 548
    const-string v11, "excessive cpu kill"

    const/4 v13, 0x1

    invoke-virtual {v1, v11, v13}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 566
    :cond_4
    :goto_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    .end local v7    # "pid":Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 550
    .restart local v7    # "pid":Ljava/lang/Integer;
    :cond_6
    if-eqz v9, :cond_8

    .line 551
    if-eqz v2, :cond_7

    .line 552
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 553
    :cond_7
    if-eqz v0, :cond_4

    .line 554
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_2

    .line 572
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 556
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pid":Ljava/lang/Integer;
    :cond_8
    if-eqz v2, :cond_9

    .line 557
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 558
    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    .line 560
    :cond_9
    if-eqz v0, :cond_4

    .line 561
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    .line 562
    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    goto :goto_2

    .line 571
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pid":Ljava/lang/Integer;
    :cond_a
    iget-object v11, p0, Lcom/android/server/am/SchedPolicyManager$4;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 572
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
