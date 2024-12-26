.class Lcom/android/server/aod/AODManagerService$AODConnection$2;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    # getter for: Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AOD onServiceDisconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection$2;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopConnection()V

    .line 634
    return-void
.end method
