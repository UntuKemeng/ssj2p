.class Lcom/android/server/desktop/DesktopService$3;
.super Ljava/lang/Object;
.source "DesktopService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktop/DesktopService;->startLoadingScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method constructor <init>(Lcom/android/server/desktop/DesktopService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$3;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$3;->this$0:Lcom/android/server/desktop/DesktopService;

    # invokes: Lcom/android/server/desktop/DesktopService;->stopLoadingScreen()V
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$700(Lcom/android/server/desktop/DesktopService;)V

    return-void
.end method
