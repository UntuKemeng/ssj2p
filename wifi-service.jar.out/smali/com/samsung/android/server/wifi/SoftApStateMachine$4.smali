.class Lcom/samsung/android/server/wifi/SoftApStateMachine$4;
.super Landroid/content/BroadcastReceiver;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 237
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->isMobileApOn()Z
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v2, "Wifi Connected, Check for Mobile Ap and Wifi Channel and Ip Subnet"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkMobileApWifiIp()Z
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v2, "IP Subnet of MobileAp needs to be modified. So Reset Mobile Ap"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.WIFIAP_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "resetIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    .end local v0    # "resetIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
