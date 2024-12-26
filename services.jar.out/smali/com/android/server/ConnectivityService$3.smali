.class Lcom/android/server/ConnectivityService$3;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2582
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "caindicator"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/ConnectivityService;->mLteCaEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$1202(Lcom/android/server/ConnectivityService;Z)Z

    .line 2584
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2585
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2586
    .local v0, "thisNet":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 2588
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2589
    iget-object v1, p0, Lcom/android/server/ConnectivityService$3;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateTcpDelayedAckSettings(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2592
    .end local v0    # "thisNet":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    return-void
.end method
