.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 2565
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$000(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2573
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState not handled msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RefCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2831
    const/16 v17, 0x0

    .line 2834
    .local v17, "retVal":Z
    :goto_0
    return v17

    .line 2577
    .end local v17    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$5900(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 2578
    const/16 v17, 0x1

    .line 2579
    .restart local v17    # "retVal":Z
    goto :goto_0

    .line 2582
    .end local v17    # "retVal":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2583
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v14, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2585
    .local v14, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    invoke-static {v1, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6000(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v16

    .line 2586
    .local v16, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-object/from16 v0, v16

    if-eq v0, v1, :cond_0

    .line 2587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    if-eq v1, v14, :cond_0

    .line 2588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != cp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2593
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2596
    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_1

    .line 2597
    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetupConnectionCompleted result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2599
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$2;->$SwitchMap$com$android$internal$telephony$dataconnection$DataCallResponse$SetupResult:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2759
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown SetupResult, should not happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2602
    :pswitch_0
    const-string v1, "VD2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VODAFONE_EUR"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ORANGE_EUR"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TELE2_Netherland"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "EE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2608
    :cond_2
    iget-object v11, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2609
    .local v11, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v11, :cond_3

    .line 2610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState : apntype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2611
    const-string v1, "ims"

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2612
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    const-string v2, "persist.ril.ims.eutranParam"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "IMS connected : set eutranParam to 3"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2618
    .end local v11    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2761
    :goto_1
    const/16 v17, 0x1

    .line 2762
    .restart local v17    # "retVal":Z
    goto/16 :goto_0

    .line 2625
    .end local v17    # "retVal":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2630
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v1, v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6400(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2635
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v3, 0x40002

    invoke-virtual {v2, v3, v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 2639
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2, v12}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I

    move-result v15

    .line 2649
    .local v15, "delay":I
    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_5

    const-string v1, "bip"

    iget-object v2, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2650
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "18"

    const-string v2, "ril.simtype"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2653
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError BIP : retry bip connection during domesticOtaStart"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2672
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DcActivatingState: ERR_RilError  delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRetryNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result.isRestartRadioFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result.isPermanentFail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2680
    .local v20, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2681
    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_6

    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2682
    :cond_6
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_9

    iget-object v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2686
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError restart radio"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2655
    .end local v20    # "str":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError BIP : Notify network status and stop retry "

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2656
    new-instance v6, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 2657
    .local v6, "nwInfo":Landroid/net/NetworkInfo;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 2659
    const/16 v1, 0x17

    invoke-virtual {v6, v1}, Landroid/net/NetworkInfo;->setType(I)V

    .line 2660
    new-instance v10, Landroid/net/NetworkMisc;

    invoke-direct {v10}, Landroid/net/NetworkMisc;-><init>()V

    .line 2661
    .local v10, "misc":Landroid/net/NetworkMisc;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    .line 2662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v21, v0

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "DcNetworkAgent"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v8, "bip"

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3000(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, v21

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 2665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 2667
    const/4 v15, -0x1

    goto/16 :goto_2

    .line 2690
    .end local v6    # "nwInfo":Landroid/net/NetworkInfo;
    .end local v10    # "misc":Landroid/net/NetworkMisc;
    .restart local v20    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "TCE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v1, v2, :cond_b

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v1, v2, :cond_b

    .line 2694
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError perm error"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.sec.mobilecare.data.permanentfail"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2701
    :cond_b
    if-ltz v15, :cond_14

    .line 2702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError retry"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2704
    const/16 v1, 0x4e20

    if-ne v15, v1, :cond_c

    .line 2705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.sec.mobilecare.data.retry"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2709
    :cond_c
    const-string v1, "VD2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "VODAFONE_EUR"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ORG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ORANGE_EUR"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "TELE2_Netherland"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "EE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2715
    :cond_d
    iget-object v11, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2716
    .restart local v11    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v11, :cond_e

    .line 2717
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v1, v2, :cond_e

    const-string v1, "ims"

    invoke-virtual {v11}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mDcRetryFailCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2724
    .end local v11    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_e
    const-string v1, "DTR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "TMOBILE_EUR"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->GetRegionForPdpRetry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2726
    :cond_f
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v1, v2, :cond_10

    const-string v1, "ims"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2728
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " TMOBILE_EUR : set mDcRetryFailCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2729
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2732
    :cond_10
    const-string v1, "TCE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2733
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v1, v2, :cond_11

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v1, v2, :cond_12

    .line 2735
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounter:I

    .line 2736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: TCECounter -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2738
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->retryTCECounter:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_13

    .line 2739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: TCECounter is MAX - ERR_RilError no retry and break"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$6900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2745
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v1

    const v2, 0x4000a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v1, v2, v3, v15}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7000(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2749
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: ERR_RilError no retry"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2755
    .end local v15    # "delay":I
    .end local v20    # "str":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != mTag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2765
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v16    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2766
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2767
    .restart local v14    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v1, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v1, v2, :cond_1a

    .line 2768
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    if-eq v1, v14, :cond_15

    .line 2769
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != cp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2773
    :cond_15
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2775
    .local v13, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v1, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_16

    .line 2776
    iget-object v1, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v19, v1, v2

    .line 2777
    .local v19, "rilFailCause":I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v13

    .line 2778
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v13, v1, :cond_16

    .line 2780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE BAD: error was NONE, change to UNKNOWN"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2783
    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2786
    .end local v19    # "rilFailCause":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v1, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2788
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v18

    .line 2790
    .local v18, "retryDelay":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retryDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRetryNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2798
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE restart radio"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2801
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2823
    .end local v13    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v18    # "retryDelay":I
    :goto_3
    const/16 v17, 0x1

    .line 2824
    .restart local v17    # "retVal":Z
    goto/16 :goto_0

    .line 2804
    .end local v17    # "retVal":Z
    .restart local v13    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .restart local v18    # "retryDelay":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE perm er"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 2808
    :cond_18
    if-ltz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE retry"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v1

    const v2, 0x4000a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    move/from16 v0, v18

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2812
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7000(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 2814
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v2, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE no retry"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$7600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2819
    .end local v13    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v18    # "retryDelay":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcActivatingState: stale EVENT_GET_LAST_FAIL_DONE tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != mTag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2573
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x4000b -> :sswitch_0
    .end sparse-switch

    .line 2599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
