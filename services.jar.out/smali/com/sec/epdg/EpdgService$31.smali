.class Lcom/sec/epdg/EpdgService$31;
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
    .line 5803
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5806
    const-string v0, "[EPDGService]"

    const-string v1, "Cdma available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5807
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5808
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5809
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5810
    const-string v0, "[EPDGService]"

    const-string v1, "LTE not available and CDMA is good, if IMS is up, trigger L2W handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5812
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    .line 5815
    :cond_0
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsCsAvailable(Z)V

    .line 5816
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2800()Lcom/sec/epdg/EpdgTimers;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5829
    :goto_0
    return-void

    .line 5820
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$7100(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5822
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;Z)V

    goto :goto_0

    .line 5827
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V
    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->access$9400(Lcom/sec/epdg/EpdgService;Z)V

    .line 5828
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$5600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto :goto_0
.end method
