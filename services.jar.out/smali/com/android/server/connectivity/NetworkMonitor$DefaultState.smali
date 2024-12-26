.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const v7, 0x8200a

    const v10, 0x82002

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 374
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 375
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 377
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v5, "Lingering"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 378
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingeringState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v5, "Connected"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 385
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v5, "registerReceiver Captive portal receiver"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 386
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 391
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v5, "Disconnected - quitting"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_3

    .line 395
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v5, "unregisterReceiver Captive portal receiver"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 397
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalHunNotified:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$1302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 410
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->quit()V
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;)V

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 404
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 405
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "unregisterReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v4, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$1402(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    goto :goto_2

    .line 413
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v5, "Forcing reevaluation - captive portal"

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_4

    .line 416
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 421
    :cond_4
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forcing reevaluation for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 422
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1702(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 423
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 426
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CaptivePortal App responded with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 427
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    .line 464
    :goto_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$2402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto/16 :goto_0

    .line 430
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$1902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 431
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 434
    :pswitch_8
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$2202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 435
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$1902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 438
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 441
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$2202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 443
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_5

    .line 446
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$2402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 447
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$1602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 448
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    invoke-virtual {v5, v10, v8, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$2602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_3

    .line 454
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$2602(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 455
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    invoke-virtual {v5, v10, v8, v9, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 459
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$1702(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 460
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 467
    :pswitch_a
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v7, v9, v5, v11}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 472
    .local v1, "messageDismiss":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 475
    const-string v4, "NetworkMonitor"

    const-string v5, "SHOW normal notification"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v3, "pendingIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 481
    .local v2, "messageShow":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x82001
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 427
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
