.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    const-string v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRemoteLockState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public checkRemoteLockPassword(Ljava/lang/String;)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v1, -0x1

    .line 674
    .local v1, "failureCount":I
    const-string v2, "RlcManager"

    const-string v3, "checkRemoteLockPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v1

    .line 679
    if-nez v1, :cond_0

    .line 680
    # getter for: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 681
    # getter for: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mRemoteLockControlListener:Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$000()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;->onUnlockedByPasscode()V

    .line 695
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    const-string v2, "RlcManager"

    const-string v3, "RemoteLockControlListener is null, can\'t call onUnlockedByPasscode()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 691
    # getter for: Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->mCompleteUnlockingDone:Z
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->access$100()Z

    move-result v2

    if-nez v2, :cond_0

    .line 692
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error in RLC Manager internally"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
