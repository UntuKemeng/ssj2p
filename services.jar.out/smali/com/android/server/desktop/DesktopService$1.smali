.class Lcom/android/server/desktop/DesktopService$1;
.super Landroid/os/FileObserver;
.source "DesktopService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktop/DesktopService;->initDesktopDockObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktop/DesktopService;


# direct methods
.method constructor <init>(Lcom/android/server/desktop/DesktopService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    and-int/lit16 v0, p1, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 195
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "hidraw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v0}, Lcom/android/server/desktop/DesktopService;->isDesktopDockConnected()Z

    .line 197
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    iget-object v1, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v1}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v1

    # invokes: Lcom/android/server/desktop/DesktopService;->setDesktopDockState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktop/DesktopService;->access$300(Lcom/android/server/desktop/DesktopService;Z)V

    goto :goto_0

    .line 204
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hidraw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    invoke-virtual {v0}, Lcom/android/server/desktop/DesktopService;->isDesktopDockConnected()Z

    .line 206
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v0}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    iget-object v1, p0, Lcom/android/server/desktop/DesktopService$1;->this$0:Lcom/android/server/desktop/DesktopService;

    # getter for: Lcom/android/server/desktop/DesktopService;->mIsDesktopDockConnected:Z
    invoke-static {v1}, Lcom/android/server/desktop/DesktopService;->access$200(Lcom/android/server/desktop/DesktopService;)Z

    move-result v1

    # invokes: Lcom/android/server/desktop/DesktopService;->setDesktopDockState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/desktop/DesktopService;->access$300(Lcom/android/server/desktop/DesktopService;Z)V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
