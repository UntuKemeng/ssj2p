.class Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;
.super Ljava/lang/Thread;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SchedPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScpmUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;

.field what:I


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;I)V
    .locals 0
    .param p2, "_what"    # I

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->what:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 484
    iget v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->what:I

    packed-switch v2, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->updateScpm()V
    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->access$300(Lcom/android/server/am/SchedPolicyManager;)V

    .line 487
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # getter for: Lcom/android/server/am/SchedPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->access$400(Lcom/android/server/am/SchedPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 489
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SchedPolicyManager;->applyPolicyToRecord(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 490
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 493
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->needToUpdateScpm()Z
    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->access$500(Lcom/android/server/am/SchedPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->this$0:Lcom/android/server/am/SchedPolicyManager;

    # invokes: Lcom/android/server/am/SchedPolicyManager;->init()V
    invoke-static {v2}, Lcom/android/server/am/SchedPolicyManager;->access$200(Lcom/android/server/am/SchedPolicyManager;)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
