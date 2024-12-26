.class Lcom/android/server/pm/PackageManagerService$3;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .prologue
    .line 3963
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3967
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/overlays/style"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanOverlayThemePackages(Ljava/io/File;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3971
    :goto_0
    return-void

    .line 3968
    :catch_0
    move-exception v0

    .line 3969
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
