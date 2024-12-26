.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
.super Ljava/lang/Object;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DLPServiceConnection"
.end annotation


# instance fields
.field private mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

.field private mUserInfoId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 538
    iput p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    .line 539
    return-void
.end method


# virtual methods
.method public getDLPService()Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 543
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected DLPServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 546
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_1
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 550
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 552
    :cond_2
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected DLPServiceConnection: Service connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLP Interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLP ComponentName className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 559
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected DLPServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 562
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 565
    :cond_1
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: DLPServiceConnection Removing the Entry from MAPs for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_2
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: DLPServiceConnection : Entry is not there for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;->mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
