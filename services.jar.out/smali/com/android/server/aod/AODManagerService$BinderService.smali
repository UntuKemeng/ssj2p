.class final Lcom/android/server/aod/AODManagerService$BinderService;
.super Lcom/samsung/android/aod/IAODManager$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAODManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "x1"    # Lcom/android/server/aod/AODManagerService$1;

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 532
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$800(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump AODManagerService from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 541
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/aod/AODManagerService;->access$1400(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAODState()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 480
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestNotificationKeys()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)V

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->requestNotificationKeysInternal()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$1200(Lcom/android/server/aod/AODManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    return-void

    .line 515
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAODTspRect(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)V

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 502
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIII)V
    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->access$1100(Lcom/android/server/aod/AODManagerService;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    return-void

    .line 504
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 3
    .param p1, "notiCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)V

    .line 522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 524
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V
    invoke-static {v2, p1, p2}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    return-void

    .line 526
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;
    .param p5, "arg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    # invokes: Lcom/android/server/aod/AODManagerService;->checkCallerIsSystemOrSystemUI()V
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$900(Lcom/android/server/aod/AODManagerService;)V

    .line 489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 491
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$BinderService;->this$0:Lcom/android/server/aod/AODManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/aod/AODManagerService;->access$1000(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
