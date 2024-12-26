.class Lcom/android/server/aod/AODManagerService$2;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
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
    .line 111
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mBound:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    # getter for: Lcom/android/server/aod/AODManagerService;->mAODConnection:Lcom/android/server/aod/AODManagerService$AODConnection;
    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->access$000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-nez v0, :cond_1

    .line 116
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service is not bounded. Stop connection"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopConnection()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service bounded already."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
