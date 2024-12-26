.class Lcom/sec/epdg/EpdgService$27;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 5625
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$27;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5628
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v1, :cond_1

    .line 5629
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isL2WHandoverProfilingRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5630
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi on is called and L2W handover profiling is running, stop it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5632
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    .line 5634
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_1

    .line 5636
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2000()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    .line 5641
    :cond_1
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$27;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$11800(Lcom/sec/epdg/EpdgService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5643
    # getter for: Lcom/sec/epdg/EpdgService;->mIsAfterAirplaneModeOn:Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5644
    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mIsAfterAirplaneModeOn:Z
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$2702(Z)Z

    .line 5645
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi connected and after airplane mode on off state"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5647
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5652
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$27;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$11900(Lcom/sec/epdg/EpdgService;)V

    .line 5654
    :cond_3
    return-void

    .line 5648
    :catch_0
    move-exception v0

    .line 5649
    .local v0, "er":Ljava/lang/InterruptedException;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
