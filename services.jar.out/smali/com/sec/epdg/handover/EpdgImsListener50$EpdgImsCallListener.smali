.class Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;
.super Ljava/lang/Object;
.source "EpdgImsListener50.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgImsCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener50;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsListener50$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/handover/EpdgImsListener50;
    .param p2, "x1"    # Lcom/sec/epdg/handover/EpdgImsListener50$1;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;-><init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 305
    if-nez p3, :cond_1

    .line 306
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There is no session id, call type, ignore it:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v7, "sessionid"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 310
    .local v6, "sessionID":I
    const-string v7, "calltype"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 312
    .local v3, "callType":I
    packed-switch p2, :pswitch_data_0

    .line 500
    :cond_2
    :goto_1
    :pswitch_0
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :pswitch_1
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRinging: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_3

    .line 316
    const-string v7, "[EpdgImsListener]"

    const-string v8, "video call is ongoing and second call is coming, might be handover delayed case"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    .line 319
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 322
    :cond_3
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCalling: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_0

    .line 332
    :pswitch_3
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallEstablished: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "callCount":[I
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 335
    if-nez v0, :cond_4

    .line 336
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ESTABLISHED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_0

    .line 340
    :cond_4
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 342
    .local v2, "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 343
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 344
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setIsHandoverDelayedCase(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    .line 345
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setHandoverDelayedSessionId(I)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1000(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 346
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_7

    .line 348
    :cond_5
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Newly established call is video or voice+video"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 350
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_6
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 354
    :cond_7
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v7, v8, :cond_0

    .line 356
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Newly established call is voice, need to inform handover delay"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informHandoverDelayToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1700(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 361
    :cond_8
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 362
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_9
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 371
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_4
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallSwitched: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    .line 373
    .restart local v0    # "callCount":[I
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 374
    if-nez v0, :cond_a

    .line 375
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_SWITCHED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_0

    .line 379
    :cond_a
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 381
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 382
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 386
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_5
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallHeld: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " holdRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "holdrequest"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :pswitch_6
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallResumed: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resumeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "resumerequest"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    :pswitch_7
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCallEnded: sessionID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "reason"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v7, "reason"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "callEndReason":I
    const/16 v7, 0x454

    if-ne v1, v7, :cond_b

    .line 398
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: do not consider this call end, as user is busy on other CS call"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_b
    const/4 v0, 0x0

    .line 402
    .restart local v0    # "callCount":[I
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 403
    if-nez v0, :cond_c

    .line 404
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_0

    .line 408
    :cond_c
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->checkForHandoverDelayedCase(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 409
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 411
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 412
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 413
    const-string v7, "[EpdgImsListener]"

    const-string v8, "This is handover delayed case, wait for 2nd call establish"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_d
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 421
    .end local v0    # "callCount":[I
    .end local v1    # "callEndReason":I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_8
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onChangeRequest: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :pswitch_9
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onEarlyMediaStart: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :pswitch_a
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onError: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "errorcode"

    invoke-virtual {p3, v9}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    .restart local v0    # "callCount":[I
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getCallCount()[I
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1200(Lcom/sec/epdg/handover/EpdgImsListener50;)[I

    move-result-object v0

    .line 432
    if-nez v0, :cond_e

    .line 433
    const-string v7, "[EpdgImsListener]"

    const-string v8, "CALL_ENDED: callCount is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    goto/16 :goto_0

    .line 437
    :cond_e
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->checkForHandoverDelayedCase(I)V
    invoke-static {v7, v6}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1800(Lcom/sec/epdg/handover/EpdgImsListener50;I)V

    .line 438
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getFinalCallStatusFromCallCountList([IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v7, v0, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1300(Lcom/sec/epdg/handover/EpdgImsListener50;[IZ)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v2

    .line 440
    .restart local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setCallStatus(Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V
    invoke-static {v7, v2}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1100(Lcom/sec/epdg/handover/EpdgImsListener50;Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;)V

    .line 441
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->getIsHandoverDelayedCase()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1400(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 442
    const-string v7, "[EpdgImsListener]"

    const-string v8, "This is handover delayed case, wait for 2nd call establish"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_f
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 446
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer is not established"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_10
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_0

    .line 454
    .end local v0    # "callCount":[I
    .end local v2    # "callStatus":Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    :pswitch_b
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConferenceCallParticipantAdded: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :pswitch_c
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConferenceCallParticipantRemoved: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :pswitch_d
    const-string v7, "bearerstate"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 462
    .local v4, "dedicatedBearerState":I
    const-string v7, "bearertype"

    invoke-virtual {p3, v7}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 463
    .local v5, "dedicatedBearerType":I
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDedicatedBearerChanged: sessionId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ImsCallType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    if-nez v4, :cond_11

    .line 466
    packed-switch v5, :pswitch_data_1

    .line 474
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IIMSListener.CALL.DEDICATED_BEARER: Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 468
    :pswitch_e
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVoiceDedicatedBearerState(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto/16 :goto_1

    .line 471
    :pswitch_f
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVideoDedicatedBearerState(Z)V
    invoke-static {v7, v10}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto/16 :goto_1

    .line 479
    :cond_11
    packed-switch v5, :pswitch_data_2

    .line 487
    const-string v7, "[EpdgImsListener]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IIMSListener.CALL.DEDICATED_BEARER: Unhandled action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_2
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v7, v8, :cond_2

    .line 492
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->isCallTypeAndDedicatedBearerTypeMatching()Z
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1500(Lcom/sec/epdg/handover/EpdgImsListener50;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 493
    const-string v7, "[EpdgImsListener]"

    const-string v8, "Appropriate dedicated bearer has not established yet"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :pswitch_10
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVoiceDedicatedBearerState(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1900(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto :goto_2

    .line 484
    :pswitch_11
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->setVideoDedicatedBearerState(Z)V
    invoke-static {v7, v11}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$2000(Lcom/sec/epdg/handover/EpdgImsListener50;Z)V

    goto :goto_2

    .line 496
    :cond_12
    iget-object v7, p0, Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsCallListener;->this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # invokes: Lcom/sec/epdg/handover/EpdgImsListener50;->informCallStatusChangeToHandoverModule()V
    invoke-static {v7}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$1600(Lcom/sec/epdg/handover/EpdgImsListener50;)V

    goto/16 :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 466
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 479
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
