.class Lcom/android/server/wifi/WifiStateMachine$17;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 2432
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20086

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootCompleteForLogging:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 2435
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mIsBootComplete:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3302(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 2438
    const-string v0, "WifiStateMachine"

    const-string v1, "BOOT_COMPLETE intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsCaptivePortalNotLogin:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastForCaptivePortalNotLoginIcon(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 2443
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reloadTlsNetworksAndReconnect()V

    .line 2444
    return-void
.end method