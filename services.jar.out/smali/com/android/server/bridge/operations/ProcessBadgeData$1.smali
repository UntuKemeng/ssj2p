.class Lcom/android/server/bridge/operations/ProcessBadgeData$1;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/server/bridge/operations/ProcessBadgeData;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mBadgeRunnable user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I
    invoke-static {v3}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mDelegateUserId:I
    invoke-static {v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->getPersonaIds()[I
    invoke-static {v1}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$100(Lcom/android/server/bridge/operations/ProcessBadgeData;)[I

    move-result-object v0

    .local v0, "ids":[I
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverOwner(Landroid/net/Uri;[I)V
    invoke-static {v1, v2, v0}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$300(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;[I)V

    .end local v0    # "ids":[I
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    iget-object v2, p0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;->this$0:Lcom/android/server/bridge/operations/ProcessBadgeData;

    # getter for: Lcom/android/server/bridge/operations/ProcessBadgeData;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;)Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/android/server/bridge/operations/ProcessBadgeData;->handleObserverPersona(Landroid/net/Uri;)V
    invoke-static {v1, v2}, Lcom/android/server/bridge/operations/ProcessBadgeData;->access$400(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)V

    goto :goto_0
.end method
