.class Lcom/android/server/FMRadioService$17;
.super Landroid/database/ContentObserver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "bike mode onChange"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    # invokes: Lcom/android/server/FMRadioService;->handleBikeMode()V
    invoke-static {v0}, Lcom/android/server/FMRadioService;->access$4700(Lcom/android/server/FMRadioService;)V

    return-void
.end method
