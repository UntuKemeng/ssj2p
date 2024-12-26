.class Lcom/android/server/am/MARsPolicyManager$9;
.super Ljava/lang/Thread;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 3306
    :cond_0
    :goto_0
    const-wide/32 v2, 0xea60

    .line 3308
    .local v2, "initIntervalTime":J
    const-wide/32 v8, 0x2bf20

    .line 3309
    .local v8, "updateIntervalTime":J
    const-wide/32 v6, 0x927c0

    .line 3311
    .local v6, "sleepTime":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1200(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3312
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1300(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3315
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1400(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1400(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_2

    .line 3316
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 3317
    const-wide/32 v6, 0xea60

    .line 3324
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_5

    .line 3326
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$900(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 3327
    const-wide/32 v6, 0xea60

    .line 3335
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1700(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3337
    const-wide/32 v10, 0xea60

    cmp-long v1, v6, v10

    if-nez v1, :cond_8

    .line 3338
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3357
    return-void

    .line 3319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V
    invoke-static {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->access$1100(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3320
    const-wide/32 v6, 0x927c0

    goto :goto_1

    .line 3329
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$9;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$1600(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3330
    const-wide/32 v6, 0x927c0

    goto :goto_2

    .line 3342
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3344
    .local v4, "lSleepBegin":J
    :cond_9
    const-wide/32 v10, 0x2bf20

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 3347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long v1, v10, v6

    if-gtz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-gez v1, :cond_9

    goto/16 :goto_0
.end method
