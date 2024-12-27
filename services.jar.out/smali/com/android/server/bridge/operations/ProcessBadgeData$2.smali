.class Lcom/android/server/bridge/operations/ProcessBadgeData$2;
.super Landroid/database/ContentObserver;
.source "ProcessBadgeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/ProcessBadgeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # setter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$202(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v1, v0, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$500(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v2, v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$500(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$2;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v2, v2, Lcom/android/server/bridge/operations/ProcessBadgeData;->mBadgeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
