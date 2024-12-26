.class Lcom/android/server/backup/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .prologue
    .line 10420
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 10420
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10429
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10430
    return-void
.end method

.method public onEndBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10434
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10435
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10436
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10439
    :goto_0
    return-void

    .line 10438
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onEndRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10453
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10454
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreFail:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$2700(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10455
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10458
    :goto_0
    return-void

    .line 10457
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10448
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10449
    return-void
.end method

.method public onStartBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10424
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10425
    return-void
.end method

.method public onStartRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10443
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10444
    return-void
.end method

.method public onTimeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 10462
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10463
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10464
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$3500(Lcom/android/server/backup/BackupManagerService;I)V

    .line 10468
    :goto_0
    return-void

    .line 10466
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$3600(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_0
.end method
