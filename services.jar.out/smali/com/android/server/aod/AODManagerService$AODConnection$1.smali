.class Lcom/android/server/aod/AODManagerService$AODConnection$1;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AOD ServiceConnected!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v1}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IAlwaysOnDisplayService as binder ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], User ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/aod/AODManagerService$4;->$SwitchMap$com$android$server$aod$AODManagerService$AODConnectionCause:[I

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->getType(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected : mService.asBinder().linkToDeath()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/server/aod/AODManagerService;->updateNotificationKeysInternal(ILjava/util/List;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/aod/AODManagerService;->access$1300(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
