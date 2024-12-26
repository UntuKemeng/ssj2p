.class Lcom/android/server/connectivity/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 792
    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const-string v0, "NetworkMonitor"

    const-string/jumbo v1, "mCaptivePortalReceiver - Launch Captive portal activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200b

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const-string v0, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 797
    const-string v0, "NetworkMonitor"

    const-string/jumbo v1, "mCaptivePortalReceiver - CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    goto :goto_0

    .line 800
    :cond_2
    const-string v0, "android.net.netmon.dismissHunNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    const-string v0, "NetworkMonitor"

    const-string/jumbo v1, "mCaptivePortalReceiver - DISMISS Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82011

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    goto :goto_0

    .line 803
    :cond_3
    const-string v0, "android.net.netmon.signinHunNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    const-string v0, "NetworkMonitor"

    const-string/jumbo v1, "mCaptivePortalReceiver - SIGNIN Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->startLoginActivity(Landroid/net/Network;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4800(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/Network;)V

    goto :goto_0
.end method
