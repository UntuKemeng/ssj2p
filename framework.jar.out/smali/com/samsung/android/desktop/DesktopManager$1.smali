.class Lcom/samsung/android/desktop/DesktopManager$1;
.super Lcom/samsung/android/desktop/IDesktopStateCallback$Stub;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/desktop/DesktopManager;->registerListener(Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktop/DesktopManager;

.field final synthetic val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$1;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    iput-object p2, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-direct {p0}, Lcom/samsung/android/desktop/IDesktopStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockState(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopDockState() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEventListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeDesktopDockState(Z)V

    :cond_0
    return-void
.end method

.method public onDesktopModeState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeState() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEventListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/desktop/DesktopManager$1;->val$listener:Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktop/DesktopManager$DesktopEventListener;->onChangeDesktopModeState(Z)V

    :cond_0
    return-void
.end method
