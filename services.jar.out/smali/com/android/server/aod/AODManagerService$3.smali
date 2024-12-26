.class Lcom/android/server/aod/AODManagerService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/aod/AODManagerService;->mUserSwitched:Z
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->access$202(Lcom/android/server/aod/AODManagerService;Z)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # setter for: Lcom/android/server/aod/AODManagerService;->mNewUserId:I
    invoke-static {v0, p1}, Lcom/android/server/aod/AODManagerService;->access$302(Lcom/android/server/aod/AODManagerService;I)I

    .line 151
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mNewUserId:I
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->access$300(Lcom/android/server/aod/AODManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService;->getEffectiveUserId(I)I

    move-result v1

    # setter for: Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->access$402(Lcom/android/server/aod/AODManagerService;I)I

    .line 153
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mEffectiveUserId:I
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->access$400(Lcom/android/server/aod/AODManagerService;)I

    move-result v1

    # setter for: Lcom/android/server/aod/AODManagerService;->mCurrentUser:I
    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->access$502(Lcom/android/server/aod/AODManagerService;I)I

    .line 154
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopConnection()V

    .line 155
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method
