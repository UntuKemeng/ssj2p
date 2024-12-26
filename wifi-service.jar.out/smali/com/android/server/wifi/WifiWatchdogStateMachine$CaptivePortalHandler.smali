.class Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final CAPTIVE_PORTAL_AUTH_WALKTIME:I = 0x1d4c0

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_PERIOD:I = 0x1388

.field private static final CAPTIVE_PORTAL_CHECK_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final NEXT_CHECK_TIME:I = 0x927c0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.CaptivePortalHandler"


# instance fields
.field bDnsCheckOneMore:Z

.field private mAuthCheckStartTime:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mFirstPortalDnsRequest:Z

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mStoppedByScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4582
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 4583
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4573
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 4575
    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 4579
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 4580
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 4703
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4584
    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 4585
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method

.method static synthetic access$23100(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 4561
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .prologue
    .line 4561
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method private checkCaptivePortal(Landroid/os/Handler;)V
    .locals 5
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 4602
    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkCaptivePortal] - callbackHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    if-eqz p1, :cond_1

    .line 4604
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 4605
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isCaptivePortalException()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4606
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xe

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4607
    sput-boolean v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    .line 4608
    if-eq p1, p0, :cond_2

    .line 4609
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4610
    .local v0, "message":Landroid/os/Message;
    const v1, 0x2102a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4611
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 4612
    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4638
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 4618
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "Abnormal request for checking captive portal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4622
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 4623
    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "already checking the captive portal!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    if-ne p1, p0, :cond_0

    .line 4625
    const v1, 0x21028

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4630
    :cond_3
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 4632
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4633
    const v1, 0x2102e

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4637
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0
.end method

.method private connectCaptivePortal()V
    .locals 8

    .prologue
    .line 4641
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4642
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "skip connectCaptivePortal - The AP is ignorable and verified as CAPTIVE_PORTAL_CHECK_NONE_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    :cond_0
    :goto_0
    return-void

    .line 4645
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "[connectCaptivePortal]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 4647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4650
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v0, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4651
    .local v7, "url":Ljava/net/URL;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 4652
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4653
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4654
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4655
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4658
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 4659
    .local v6, "ie":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v1, "couldn\'t resolve a URL : http://connectivitycheck.gstatic.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4660
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4661
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v0

    if-nez v0, :cond_3

    .line 4662
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 4664
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto :goto_0

    .line 4657
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_4
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v1, "[DNS query requested!]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getResult()Z
    .locals 1

    .prologue
    .line 4598
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->isCaptivePortal()Z

    move-result v0

    return v0
.end method

.method private isCaptivePortal()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 4671
    const/4 v5, 0x0

    .line 4673
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v7, "Checking http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v6, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4676
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 4677
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 4678
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4679
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4680
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 4681
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4683
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 4684
    .local v2, "responseCode":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4685
    :cond_1
    const/4 v3, 0x0

    .line 4686
    .local v3, "result":Z
    const/16 v6, 0xcc

    if-ne v2, v6, :cond_4

    .line 4687
    const/4 v3, 0x0

    .line 4696
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 4697
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4698
    const/4 v5, 0x0

    .end local v2    # "responseCode":I
    .end local v3    # "result":Z
    .end local v4    # "url":Ljava/net/URL;
    :cond_3
    :goto_1
    return v3

    .line 4688
    .restart local v2    # "responseCode":I
    .restart local v3    # "result":Z
    .restart local v4    # "url":Ljava/net/URL;
    :cond_4
    const/16 v6, 0xc8

    if-lt v2, v6, :cond_2

    const/16 v6, 0x18f

    if-gt v2, v6, :cond_2

    .line 4689
    const/4 v3, 0x1

    goto :goto_0

    .line 4692
    .end local v2    # "responseCode":I
    .end local v3    # "result":Z
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 4693
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4696
    :cond_5
    if-eqz v5, :cond_3

    .line 4697
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4698
    const/4 v5, 0x0

    goto :goto_1

    .line 4696
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 4697
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 4698
    const/4 v5, 0x0

    :cond_6
    throw v6
.end method

.method private notifyDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4588
    const v0, 0x21028

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 4589
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 4590
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4591
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 4592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4593
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 4594
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 4595
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4706
    const/16 v17, -0x1

    .line 4707
    .local v17, "result":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 4708
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 4709
    const/4 v8, 0x0

    .line 4711
    .local v8, "bTimeoutByDns":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 5132
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore msg id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    :cond_0
    :goto_0
    return-void

    .line 4713
    :sswitch_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[RESUME_CAPTIVE_PORTAL_CHECK]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    :cond_1
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 4715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 4716
    const/4 v8, 0x0

    .line 4717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4718
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0

    .line 4723
    :sswitch_1
    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 4724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 4725
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[CAPTIVE_PORTAL_CHECK_STATE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4726
    :cond_2
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 4728
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 4730
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4731
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Do not check CP during LCD off."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 4734
    :cond_4
    const v2, 0x21028

    const-wide/16 v4, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4737
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 4741
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4742
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v9

    .line 4743
    .local v9, "dnsResult":I
    const/4 v2, 0x2

    if-ne v9, v2, :cond_7

    .line 4744
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4748
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 4750
    const/4 v15, 0x0

    .line 4751
    .local v15, "resolvedIP":Ljava/net/InetAddress;
    const/4 v2, 0x4

    if-ne v9, v2, :cond_13

    .line 4752
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_8

    .line 4753
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4756
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_11

    .line 4757
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v3, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mPreviousPrivateIP] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " [msg.obj] : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4760
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4762
    const/16 v17, 0x2

    .line 4824
    :cond_b
    :goto_1
    const/4 v2, 0x1

    if-ne v9, v2, :cond_1b

    .line 4825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v2

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mDnsAvailable:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$19102(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;Z)Z

    .line 4826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v2, :cond_c

    .line 4827
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Change resolvedIP DNS result to Previous Private IP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4829
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4831
    :cond_c
    if-nez v15, :cond_d

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v15, Ljava/net/InetAddress;

    .line 4832
    .restart local v15    # "resolvedIP":Ljava/net/InetAddress;
    :cond_d
    instance-of v2, v15, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1a

    .line 4833
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DNS Response SELECTED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4834
    :cond_e
    if-eqz v15, :cond_0

    .line 4835
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "start check captive portal "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v2

    const v3, 0x2102b

    const/4 v4, 0x0

    check-cast v15, Ljava/net/Inet4Address;

    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static {v15}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v5

    const-string v6, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4844
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 4764
    .restart local v15    # "resolvedIP":Ljava/net/InetAddress;
    :cond_f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    :cond_10
    const/4 v9, 0x1

    .line 4766
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto/16 :goto_1

    .line 4769
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    .line 4772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4774
    const/16 v17, 0x2

    goto/16 :goto_1

    .line 4776
    :cond_12
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[second DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4780
    :cond_13
    const/4 v2, 0x3

    if-ne v9, v2, :cond_15

    .line 4781
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_14

    .line 4782
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4785
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4787
    const/16 v17, 0x2

    goto/16 :goto_1

    .line 4788
    :cond_15
    if-nez v9, :cond_b

    .line 4789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 4790
    const/16 v17, 0x3

    .line 4791
    const/4 v8, 0x1

    .line 4792
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-nez v2, :cond_16

    .line 4793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 4795
    :try_start_1
    new-instance v19, Ljava/net/URL;

    const-string v2, "http://connectivitycheck.gstatic.com/generate_204"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4796
    .local v19, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    .line 4798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4799
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4808
    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v11

    .line 4809
    .local v11, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://connectivitycheck.gstatic.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 4812
    const/4 v8, 0x0

    .line 4813
    const/16 v17, 0x2

    .line 4817
    .end local v11    # "ie":Ljava/io/IOException;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_17

    .line 4818
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4821
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    goto/16 :goto_1

    .line 4801
    .restart local v19    # "url":Ljava/net/URL;
    :cond_18
    :try_start_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    :cond_19
    const/4 v8, 0x0

    .line 4803
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_0

    .line 4804
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 4849
    .end local v19    # "url":Ljava/net/URL;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "The resolved IP is not IPv4"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4851
    const/16 v17, 0x3

    .line 4857
    .end local v9    # "dnsResult":I
    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1b
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_1c

    .line 4858
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[mStoppedByScan] ignore TIMEOUT_CAPTIVE_PORTAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4861
    :cond_1c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2102d

    if-ne v2, v3, :cond_1f

    .line 4862
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    :cond_1d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 4865
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 4868
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 4869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 4870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_20

    .line 4871
    const/16 v17, 0x0

    .line 4872
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4880
    :cond_1f
    :goto_3
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_21

    .line 4881
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[mStoppedByScan] ignore STATUS_CODE_CAPTIVE_PORTAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4874
    :cond_20
    const/16 v17, 0x3

    goto :goto_3

    .line 4884
    :cond_21
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2102c

    if-ne v2, v3, :cond_27

    .line 4885
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4887
    :cond_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 4888
    .local v16, "responseCode":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/16 v18, 0x1

    .line 4889
    .local v18, "sameLocation":Z
    :goto_4
    const/16 v17, 0x1

    .line 4891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_24

    .line 4892
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4888
    .end local v18    # "sameLocation":Z
    :cond_23
    const/16 v18, 0x0

    goto :goto_4

    .line 4896
    .restart local v18    # "sameLocation":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4897
    const/16 v2, 0xcc

    move/from16 v0, v16

    if-eq v0, v2, :cond_26

    const/16 v2, 0xc8

    move/from16 v0, v16

    if-lt v0, v2, :cond_25

    const/16 v2, 0x18f

    move/from16 v0, v16

    if-le v0, v2, :cond_27

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_26

    const/16 v2, 0x194

    move/from16 v0, v16

    if-eq v0, v2, :cond_27

    .line 4899
    :cond_26
    const/16 v17, 0x0

    .line 4913
    .end local v16    # "responseCode":I
    .end local v18    # "sameLocation":Z
    :cond_27
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 4914
    const/16 v17, 0x0

    .line 4926
    :cond_28
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCaptivePortalCheckMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCouldNotIdentifyCaptivePortalState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCaptivePortalDetected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move/from16 v0, v17

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCaptivePortalCheckResult(I)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 4931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 4932
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDetectedCPBefore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ne v0, v2, :cond_29

    if-nez v8, :cond_29

    .line 4936
    :try_start_4
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "One more check with http://connectivitycheck.gstatic.com/generate_204"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    new-instance v19, Ljava/net/URL;

    const-string v2, "http://connectivitycheck.gstatic.com/generate_204"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4938
    .restart local v19    # "url":Ljava/net/URL;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 4939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 4940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_32

    .line 4941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4942
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4947
    .end local v19    # "url":Ljava/net/URL;
    :catch_2
    move-exception v11

    .line 4948
    .restart local v11    # "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://connectivitycheck.gstatic.com/generate_204"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4953
    .end local v11    # "ie":Ljava/io/IOException;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_46

    .line 4954
    packed-switch v17, :pswitch_data_0

    .line 5061
    :cond_2a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 5063
    const/16 v14, 0x2710

    .line 5064
    .local v14, "period":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2b

    .line 5065
    const/16 v14, 0x1388

    .line 5067
    :cond_2b
    const v2, 0x21028

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5071
    .end local v14    # "period":I
    :cond_2c
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 4901
    .restart local v16    # "responseCode":I
    .restart local v18    # "sameLocation":Z
    :cond_2d
    const/16 v2, 0xcc

    move/from16 v0, v16

    if-eq v0, v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-nez v18, :cond_30

    :cond_2e
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x18f

    move/from16 v0, v16

    if-le v0, v2, :cond_27

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_30

    const/16 v2, 0x194

    move/from16 v0, v16

    if-eq v0, v2, :cond_27

    .line 4904
    :cond_30
    const/16 v17, 0x0

    .line 4905
    const/16 v2, 0x197

    move/from16 v0, v16

    if-ne v0, v2, :cond_27

    .line 4906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->m407ResponseReceived:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_5

    .line 4916
    .end local v16    # "responseCode":I
    .end local v18    # "sameLocation":Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4917
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "ignore CP result, restart CP check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4919
    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 4920
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 4921
    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4944
    .restart local v19    # "url":Ljava/net/URL;
    :cond_32
    :try_start_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[2nd DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 4956
    .end local v19    # "url":Ljava/net/URL;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4959
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_39

    .line 4960
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_34

    .line 4961
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    .line 4963
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4964
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_36

    .line 4966
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4969
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4971
    const-wide/16 v2, 0x12c

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4975
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101c

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4981
    :cond_37
    :goto_9
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 4982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_6

    .line 4972
    :catch_3
    move-exception v10

    .line 4973
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep exception on CaptivePortalHandler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_8

    .line 4977
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 4978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_9

    .line 4985
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2a

    .line 4986
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Now, the current AP has been automatically authenticated!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 4988
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 4990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 4991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_6

    .line 4997
    :pswitch_1
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_RESULT_DETECTED enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 5000
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mDetectedCPBefore is true."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    if-eqz v2, :cond_3b

    .line 5002
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CP is detected at 2nd check. Init bDnsCheckOneMore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->bDnsCheckOneMore:Z

    .line 5006
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2a

    .line 5007
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 5009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 5010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 5013
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 5014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalDetected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 5016
    :cond_3d
    sget-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    if-eqz v2, :cond_3f

    .line 5017
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    .line 5018
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101a

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_6

    .line 5021
    :cond_3f
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    sub-long v2, v12, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 5025
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21019

    const v4, 0x2101b

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_6

    .line 5033
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 5034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_41

    .line 5035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 5037
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 5039
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_43

    .line 5040
    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "mWIfiInfo = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5043
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 5044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v3, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2502(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_6

    .line 5049
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 5050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_44

    .line 5051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v2

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    .line 5053
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 5055
    :cond_45
    const/4 v8, 0x0

    .line 5056
    goto/16 :goto_6

    .line 5068
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2c

    .line 5069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v3, 0x2102a

    const/4 v4, -0x1

    move/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 5075
    :sswitch_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_NETWORK_PROPERTIES_CHANGED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    :cond_47
    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103d

    if-ne v2, v3, :cond_48

    .line 5079
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_STARTED]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    :cond_48
    :sswitch_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_4a

    .line 5084
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 5089
    :cond_4a
    :sswitch_8
    const v2, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 5090
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-ne v2, v3, :cond_4b

    .line 5091
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5093
    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x21014

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 5096
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    .line 5097
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 5100
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 5101
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 5102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 5103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 5104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_53

    .line 5105
    const v2, 0x2102d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 5106
    const v2, 0x21028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 5107
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 5108
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_4d

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_4f

    .line 5109
    :cond_4d
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan completed, but there is ongoing captive portal check"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    :cond_4e
    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 5111
    :cond_4f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21043

    if-ne v2, v3, :cond_51

    .line 5112
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "LP updated and resume captive portal check"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5113
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIgnoreCPResult:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 5114
    const v2, 0x2102e

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 5116
    :cond_51
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 5117
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan started, the current captive portal check need to be canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    :cond_52
    const v2, 0x2102e

    const-wide/16 v4, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 5120
    :cond_53
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x2103e

    if-eq v2, v3, :cond_54

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const v3, 0x21046

    if-ne v2, v3, :cond_56

    .line 5121
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v2, :cond_0

    .line 5122
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_55

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan completed, check again the captive portal state at once!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5123
    :cond_55
    const v2, 0x2102e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5126
    :cond_56
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "Scan started or LP updated, but there\'s no ongoing captive portal check."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5098
    :catch_4
    move-exception v2

    goto/16 :goto_a

    .line 4866
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 4711
    :sswitch_data_0
    .sparse-switch
        0x21028 -> :sswitch_1
        0x2102c -> :sswitch_4
        0x2102d -> :sswitch_3
        0x2102e -> :sswitch_0
        0x2103d -> :sswitch_6
        0x2103e -> :sswitch_8
        0x21043 -> :sswitch_5
        0x21046 -> :sswitch_7
        0x50005 -> :sswitch_2
    .end sparse-switch

    .line 4954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
