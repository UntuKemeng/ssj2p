.class Lcom/android/server/wifi/WifiServiceImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 861
    .local v1, "wifiPolicyChanged":Z
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v2, "isWifiChanged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 863
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    :cond_0
    const-string v2, "WifiService"

    const-string v3, "Receive IP Policy Intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    if-eqz v1, :cond_1

    .line 867
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->handleSecurityPolicy()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$6;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->handleSecurityPolicyMHS()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 870
    :cond_2
    return-void
.end method
