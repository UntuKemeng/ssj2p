.class Lcom/android/server/desktop/DesktopService$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktop/DesktopService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktop/DesktopService;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktop/DesktopService;Lcom/android/server/desktop/DesktopService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/desktop/DesktopService;
    .param p2, "x1"    # Lcom/android/server/desktop/DesktopService$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;-><init>(Lcom/android/server/desktop/DesktopService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "data":Ljava/lang/String;
    # getter for: Lcom/android/server/desktop/DesktopService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktop/DesktopService;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageStateReceiver, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    invoke-static {v2}, Lcom/android/server/desktop/DesktopService;->access$500(Lcom/android/server/desktop/DesktopService;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    invoke-static {v2, v5}, Lcom/android/server/desktop/DesktopService;->access$502(Lcom/android/server/desktop/DesktopService;Z)Z

    .line 371
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v2}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    invoke-static {v2}, Lcom/android/server/desktop/DesktopService;->access$500(Lcom/android/server/desktop/DesktopService;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/desktop/DesktopService;->mIsInstalledLauncher:Z
    invoke-static {v2, v3}, Lcom/android/server/desktop/DesktopService;->access$502(Lcom/android/server/desktop/DesktopService;Z)Z

    .line 377
    iget-object v2, p0, Lcom/android/server/desktop/DesktopService$PackageStateReceiver;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->updateKnoxDesktopModeState()V
    invoke-static {v2}, Lcom/android/server/desktop/DesktopService;->access$600(Lcom/android/server/desktop/DesktopService;)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
