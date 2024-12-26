.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;
.super Landroid/os/storage/StorageEventListener;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .prologue
    .line 2662
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 2665
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    const-string v1, "ejecting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    .line 2673
    :cond_0
    const-string v1, "checking"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "MoveMount"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2677
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;
    invoke-static {v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$1400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 2678
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 2679
    .local v0, "state":Z
    if-nez v0, :cond_4

    .line 2680
    const-string v1, "RestrictionPolicy"

    const-string v2, "SDCard Remounted with Readonly permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    .end local v0    # "state":Z
    :cond_3
    :goto_0
    const-string v1, "RestrictionPolicy"

    const-string v2, "--onStorageStateChanged"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    return-void

    .line 2682
    .restart local v0    # "state":Z
    :cond_4
    const-string v1, "RestrictionPolicy"

    const-string v2, "SDCard Remounted with ReadWrite permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
