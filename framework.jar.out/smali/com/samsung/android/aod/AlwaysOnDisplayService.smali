.class public Lcom/samsung/android/aod/AlwaysOnDisplayService;
.super Landroid/app/Service;
.source "AlwaysOnDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AlwaysOnDisplayService$1;,
        Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/aod/AlwaysOnDisplayService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    new-instance v0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;Lcom/samsung/android/aod/AlwaysOnDisplayService$1;)V

    return-object v0
.end method

.method public requestHide()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestHide Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startAOD()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAOD Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAOD()V
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopAOD Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 2
    .param p1, "notiCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/samsung/android/aod/AlwaysOnDisplayService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateNotificationKeys!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
