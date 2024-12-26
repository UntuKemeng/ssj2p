.class Lcom/android/server/net/NetworkPolicyManagerService$21;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2524
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2527
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v0

    .line 2528
    .local v0, "enabled":Z
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictBgInLowPowerObserver, enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ed

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2531
    .local v1, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2532
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 2533
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2535
    return-void

    :cond_0
    move v2, v3

    .line 2531
    goto :goto_0
.end method
