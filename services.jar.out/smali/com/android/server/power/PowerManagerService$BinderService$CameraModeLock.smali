.class Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraModeLock"
.end annotation


# instance fields
.field public final binder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6789
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 6790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6791
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->binder:Landroid/os/IBinder;

    .line 6793
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6797
    :goto_0
    return-void

    .line 6794
    :catch_0
    move-exception v0

    .line 6795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 6799
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mCameraLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$13200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6800
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "CameraModeLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService$BinderService;->mCameraModeLock:Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->access$13402(Lcom/android/server/power/PowerManagerService$BinderService;Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;)Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;

    .line 6802
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$CameraModeLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$13300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->setCameraRearMode(Z)V

    .line 6803
    monitor-exit v1

    .line 6804
    return-void

    .line 6803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
