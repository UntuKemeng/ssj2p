.class Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iccCardProxyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IccCardProxy$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.samsung.intent.action.START_ICC_NETWORK_DEPERSO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : NETWORK"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$300(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : SUBSET"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkSubsetLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$400(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "Receive START_ICC_NETWORK_DEPERSO, lockType : SP"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mSPLockedRegistrants:Landroid/os/RegistrantList;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$500(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/os/RegistrantList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    :cond_2
    const-string v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$602(Z)Z

    const-string v2, "REASON"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "simreason":Z
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "Receive QCOMHOTSWAP false intent so sIsStartSimManagement setted false for initial"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$702(Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
