.class Lcom/android/server/display/IpRemoteDisplayController$7;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplayCallback$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadSetConnected()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onHeadSetConnected! we will disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$700(Lcom/android/server/display/IpRemoteDisplayController;)V

    .line 363
    :cond_0
    return-void
.end method

.method public onQoSLevelChanged(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQoSLevelChanged! level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onQosLevelChanged(I)V

    .line 378
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x5

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v0, p1, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;II)V

    .line 380
    :cond_0
    return-void
.end method

.method public onTerminateRequested()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onTerminateRequested! we will disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$700(Lcom/android/server/display/IpRemoteDisplayController;)V

    .line 355
    return-void
.end method

.method public onTransportChanged(I)V
    .locals 3
    .param p1, "nRtpType"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransportChanged! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void
.end method

.method public onWeakNetwork()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$7;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "IpRemoteDisplayController"

    const-string/jumbo v1, "onWeakNetwork!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    return-void
.end method
