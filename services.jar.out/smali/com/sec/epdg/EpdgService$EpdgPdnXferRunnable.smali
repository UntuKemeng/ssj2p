.class Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgPdnXferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p2, "networkType"    # I

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    .line 1376
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 1377
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1381
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->getNetworkType()I

    move-result v0

    .line 1382
    .local v0, "ratType":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger Move for PDN\'s from WIFI networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1385
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1386
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1387
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    .line 1390
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1391
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$400(Lcom/sec/epdg/EpdgService;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1393
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:mPdnXferReceiver:RAT=LTE,EPDG=AVAILABLE so send keep alive packet and start the keep alive timer"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)V

    .line 1396
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/EpdgService;->access$800(Lcom/sec/epdg/EpdgService;J)V

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1399
    :cond_2
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1400
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1401
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1402
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1404
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0

    .line 1405
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTHL()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is2gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$1000(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1406
    :cond_6
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_7

    .line 1407
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1408
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1410
    :cond_7
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0

    .line 1411
    :cond_8
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTelstra()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDT()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVod()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVdf()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorHts()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    if-eqz v1, :cond_c

    # getter for: Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1100()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$900(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->is2gNetwork(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$1000(Lcom/sec/epdg/EpdgService;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1415
    :cond_a
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_b

    .line 1416
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1417
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1419
    :cond_b
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 1420
    :cond_c
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCpThresholdConditionForHandover()Z

    move-result v1

    if-ne v1, v4, :cond_d

    .line 1422
    const-string v1, "[EPDGService]"

    const-string v2, "CS Preferred mode but all cs was not available. So, need to handover to WIFI."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1424
    :cond_d
    if-nez v0, :cond_e

    .line 1425
    const-string v1, "[EPDGService]"

    const-string v2, "IMS on ePDG and no LTE available allowing IMS to continue"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1428
    :cond_e
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher priority RAT handling done. No action taken for current N/w Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method