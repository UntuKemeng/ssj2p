.class Lcom/android/server/connectivity/PacManager$3;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3
    .param p1, "port"    # I

    .prologue
    const/4 v2, -0x1

    .line 394
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mLastPort:I
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$1200(Lcom/android/server/connectivity/PacManager;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacManager;->access$1302(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    # setter for: Lcom/android/server/connectivity/PacManager;->mLastPort:I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacManager;->access$1202(Lcom/android/server/connectivity/PacManager;I)I

    .line 399
    if-eq p1, v2, :cond_1

    .line 400
    const-string v0, "PacManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enterprise local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/connectivity/PacManager$3$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3$1;-><init>(Lcom/android/server/connectivity/PacManager$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    const-string v0, "PacManager"

    const-string v1, "Received invalid port from enterprise local proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method