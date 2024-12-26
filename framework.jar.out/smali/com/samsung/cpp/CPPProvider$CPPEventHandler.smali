.class Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
.super Landroid/os/Handler;
.source "CPPProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPPEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/cpp/CPPProvider;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 507
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 511
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 514
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPProvider;->initialiseCPLocationProvider()V

    goto :goto_0

    .line 517
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPProvider;->deInitialiseCPLocationProvider()V

    goto :goto_0

    .line 521
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    .line 522
    .local v48, "ttAct":I
    const/4 v2, 0x1

    move/from16 v0, v48

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v46

    .line 524
    .local v46, "sendMsg":Landroid/os/Message;
    const/4 v2, 0x3

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    .line 525
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 526
    const/4 v2, 0x0

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    const-wide/16 v10, 0x3e8

    move-object/from16 v0, v46

    invoke-virtual {v2, v0, v10, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 536
    .end local v46    # "sendMsg":Landroid/os/Message;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v2, :cond_0

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getTTJSONObject()Lorg/json/JSONObject;

    move-result-object v42

    .line 538
    .local v42, "receivedPolicy":Lorg/json/JSONObject;
    if-eqz v42, :cond_3

    invoke-virtual/range {v42 .. v42}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    .line 540
    .local v26, "currentPolicy":Ljava/lang/String;
    :goto_2
    if-eqz v26, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x3

    # invokes: Lcom/samsung/cpp/CPPProvider;->sendBytesToCp([BII)Z
    invoke-static {v2, v3, v4, v10}, Lcom/samsung/cpp/CPPProvider;->access$1500(Lcom/samsung/cpp/CPPProvider;[BII)Z

    .line 542
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policy to CP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    .end local v26    # "currentPolicy":Ljava/lang/String;
    .end local v42    # "receivedPolicy":Lorg/json/JSONObject;
    :cond_2
    if-nez v48, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$100(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v46

    .line 531
    .restart local v46    # "sendMsg":Landroid/os/Message;
    const/4 v2, 0x4

    move-object/from16 v0, v46

    iput v2, v0, Landroid/os/Message;->what:I

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 538
    .end local v46    # "sendMsg":Landroid/os/Message;
    .restart local v42    # "receivedPolicy":Lorg/json/JSONObject;
    :cond_3
    const/16 v26, 0x0

    goto :goto_2

    .line 545
    .restart local v26    # "currentPolicy":Ljava/lang/String;
    :cond_4
    const-string v2, "CPProvider"

    const-string v3, "policy to CP does not have TT info."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 550
    .end local v26    # "currentPolicy":Ljava/lang/String;
    .end local v42    # "receivedPolicy":Lorg/json/JSONObject;
    .end local v48    # "ttAct":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/cpp/CPPProvider;->startReportLocation(II)Z
    invoke-static {v2, v3, v4}, Lcom/samsung/cpp/CPPProvider;->access$1600(Lcom/samsung/cpp/CPPProvider;II)Z

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$102(Lcom/samsung/cpp/CPPProvider;Z)Z

    goto/16 :goto_0

    .line 554
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # invokes: Lcom/samsung/cpp/CPPProvider;->stopReportLocation()Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1700(Lcom/samsung/cpp/CPPProvider;)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->flagEnableCLM:Z
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$102(Lcom/samsung/cpp/CPPProvider;Z)Z

    goto/16 :goto_0

    .line 558
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/location/Location;

    .line 561
    .local v39, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1800(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 563
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mCpLocListener:Lcom/samsung/cpp/ICPPLocationListener;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1800(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/ICPPLocationListener;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-interface {v2, v0}, Lcom/samsung/cpp/ICPPLocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 564
    :catch_0
    move-exception v31

    .line 565
    .local v31, "ex":Landroid/os/RemoteException;
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_REPORT_CP_LOCATION -onLocationChanged: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 568
    .end local v31    # "ex":Landroid/os/RemoteException;
    :cond_5
    const-string v2, "CPProvider"

    const-string v3, "MSG_REPORT_CP_LOCATION-No Location listener registered. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    .end local v39    # "location":Landroid/location/Location;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    .line 575
    .local v36, "input":Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;
    move-object/from16 v0, v36

    iget-wide v2, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    # getter for: Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$1900()D

    move-result-wide v10

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v38

    .line 576
    .local v38, "lat":Ljava/lang/Double;
    move-object/from16 v0, v36

    iget-wide v2, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    # getter for: Lcom/samsung/cpp/CPPProvider;->DEGREE_RESOLUTION:D
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$1900()D

    move-result-wide v10

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    .line 578
    .local v40, "lon":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Double;->intValue()I

    move-result v4

    move-object/from16 v0, v36

    iget v5, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mGeoMode:I

    move-object/from16 v0, v36

    iget v6, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mRadius:I

    move-object/from16 v0, v36

    iget v7, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mPeriod:I

    move-object/from16 v0, v36

    iget v8, v0, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;->mKey:I

    # invokes: Lcom/samsung/cpp/CPPProvider;->registerGeoFence(IIIIII)I
    invoke-static/range {v2 .. v8}, Lcom/samsung/cpp/CPPProvider;->access$2000(Lcom/samsung/cpp/CPPProvider;IIIIII)I

    move-result v30

    .line 579
    .local v30, "err":I
    if-eqz v30, :cond_6

    .line 581
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_REGISTER_CP_GEO_FENCE failed to send to RIL, err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 583
    :cond_6
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_REGISTER_CP_GEO_FENCE success to send to RIL, err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 587
    .end local v30    # "err":I
    .end local v36    # "input":Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;
    .end local v38    # "lat":Ljava/lang/Double;
    .end local v40    # "lon":Ljava/lang/Double;
    :pswitch_7
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_DEREGISTER_CP_GEO_FENCE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Lcom/samsung/cpp/CPPDbAdapter;->getGeoLat(J)Ljava/lang/Double;

    move-result-object v38

    .line 591
    .restart local v38    # "lat":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Lcom/samsung/cpp/CPPDbAdapter;->getGeoLon(J)Ljava/lang/Double;

    move-result-object v40

    .line 593
    .restart local v40    # "lon":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Double;->intValue()I

    move-result v10

    # invokes: Lcom/samsung/cpp/CPPProvider;->deRegisterGeoFence(III)Z
    invoke-static {v2, v3, v4, v10}, Lcom/samsung/cpp/CPPProvider;->access$2100(Lcom/samsung/cpp/CPPProvider;III)Z

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/samsung/cpp/CPPDbAdapter;->deleteGeoById(I)V

    goto/16 :goto_0

    .line 597
    .end local v38    # "lat":Ljava/lang/Double;
    .end local v40    # "lon":Ljava/lang/Double;
    :pswitch_8
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received from Server, type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rat :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/ConnectivityManager;

    .line 599
    .local v25, "connectivityManager":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 600
    .local v9, "_type":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 601
    .local v8, "_rat":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    .line 603
    .local v24, "bundle":Landroid/os/Bundle;
    if-eqz v24, :cond_0

    .line 604
    const-string v2, "http_response_code"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 605
    .local v34, "httpResponseCode":I
    const-string v2, "http_response_msg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 606
    .local v35, "httpResponseMsg":Ljava/lang/String;
    const-string v2, "result_code"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 608
    .local v45, "resultCode":I
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Response Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HTTP Response Message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ResultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v2, 0x4e20

    if-ne v9, v2, :cond_b

    .line 611
    const-string v2, "size"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 612
    .local v12, "resultSize":I
    const-string v2, "req_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 613
    .local v6, "requestedId":J
    const-string v2, "result_msg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 617
    .local v5, "resultMsg":[B
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestedId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ResultMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/16 v2, 0xc8

    move/from16 v0, v34

    if-ne v0, v2, :cond_8

    const/4 v2, 0x4

    move/from16 v0, v45

    if-ne v0, v2, :cond_8

    .line 620
    const-string v2, "CPProvider"

    const-string v3, "COMM_TYPE_POST_REQ_CELLDB - HTTP_OK - POLICYID_UPDATE_REQUIRED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v7, v3}, Lcom/samsung/cpp/CPPDbAdapter;->updateSending(JZ)V

    .line 624
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v43

    .line 625
    .local v43, "requestPolicyUpdateMsg":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v43

    iput v2, v0, Landroid/os/Message;->what:I

    .line 626
    move-object/from16 v0, v43

    iput v8, v0, Landroid/os/Message;->arg1:I

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    const-string v2, "CPProvider"

    const-string v3, "sendMessage(MSG_UPDATE_POLICY)/POLICYID_UPDATE_REQUIRED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v43    # "requestPolicyUpdateMsg":Landroid/os/Message;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/samsung/cpp/CPPDbAdapter;->deleteReqById(J)V

    goto/16 :goto_0

    .line 630
    :cond_8
    const/16 v2, 0xc8

    move/from16 v0, v34

    if-ne v0, v2, :cond_a

    .line 631
    const-string v2, "CPProvider"

    const-string v3, "COMM_TYPE_POST_REQ_CELLDB - HTTP_OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cellular : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/cpp/CPPProvider;->cellular:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$2200()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/samsung/cpp/CPPDbAdapter;->isLargeReq(J)Z

    move-result v2

    if-nez v2, :cond_9

    .line 635
    const-string v2, "CPProvider"

    const-string v3, "!isLargeReq"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler$1;-><init>(Lcom/samsung/cpp/CPPProvider$CPPEventHandler;[BJI)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 643
    :cond_9
    if-nez v45, :cond_7

    .line 644
    const-string v2, "CPProvider"

    const-string v3, "COMM_TYPE_POST_REQ_CELLDB - HTTP_OK - SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mDbAdapter:Lcom/samsung/cpp/CPPDbAdapter;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$700(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPDbAdapter;

    move-result-object v10

    move-object v11, v5

    move v13, v8

    move-wide v14, v6

    invoke-virtual/range {v10 .. v15}, Lcom/samsung/cpp/CPPDbAdapter;->insertResp([BIIJ)V

    goto :goto_3

    .line 648
    :cond_a
    const-string v2, "CPProvider"

    const-string v3, "CPPEventHandler.handleMessage() -- FAIL from SERVER / not HTTP_OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 653
    .end local v5    # "resultMsg":[B
    .end local v6    # "requestedId":J
    .end local v12    # "resultSize":I
    :cond_b
    const v2, 0x15f90

    if-ne v9, v2, :cond_10

    .line 654
    const-string v2, "result_msg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 655
    .local v5, "resultMsg":Ljava/lang/String;
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : result message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/16 v2, 0xc8

    move/from16 v0, v34

    if-ne v0, v2, :cond_d

    if-nez v45, :cond_d

    .line 661
    const-string v2, "CPProvider"

    const-string v3, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v2, "body"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 665
    .local v23, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v5, v0}, Lcom/samsung/cpp/CPPPolicyHandler;->updatePolicy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 682
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : SUCCESS --> mNeedUpdatePolicy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reset to 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v3}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v3

    and-int/lit8 v3, v3, 0xe

    # setter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$202(Lcom/samsung/cpp/CPPProvider;I)I

    .line 687
    :cond_c
    const-string v2, "CPProvider"

    const-string v3, "For Periodic Update Purpose : send MSG_UPDATE_POLICY one more time -> handler:MSG_UPDATE_POLICY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v44

    .line 689
    .local v44, "respMsg":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v44

    iput v2, v0, Landroid/os/Message;->what:I

    .line 690
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    .end local v23    # "body":Ljava/lang/String;
    .end local v44    # "respMsg":Landroid/os/Message;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    const-string v2, "CPProvider"

    const-string v3, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : flag_MSG_UPDATE_POLICY reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$2402(Lcom/samsung/cpp/CPPProvider;Z)Z

    goto/16 :goto_0

    .line 696
    :cond_d
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : FAIL, mMobilePolicyRetryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$2300(Lcom/samsung/cpp/CPPProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2300(Lcom/samsung/cpp/CPPProvider;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_e

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # operator++ for: Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2308(Lcom/samsung/cpp/CPPProvider;)I

    .line 700
    new-instance v41, Ljava/util/Random;

    invoke-direct/range {v41 .. v41}, Ljava/util/Random;-><init>()V

    .line 702
    .local v41, "random":Ljava/util/Random;
    const/4 v2, 0x4

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v47, v2, 0x1

    .line 703
    .local v47, "time":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v44

    .line 704
    .restart local v44    # "respMsg":Landroid/os/Message;
    const/4 v2, 0x7

    move-object/from16 v0, v44

    iput v2, v0, Landroid/os/Message;->what:I

    .line 705
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    move/from16 v0, v47

    int-to-long v10, v0

    const-wide/32 v16, 0xea60

    mul-long v10, v10, v16

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v10, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 707
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : FAIL, retry after ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "min)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 712
    .end local v41    # "random":Ljava/util/Random;
    .end local v44    # "respMsg":Landroid/os/Message;
    .end local v47    # "time":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2300(Lcom/samsung/cpp/CPPProvider;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_f

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    .line 715
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/cpp/CPPProvider;->mMobilePolicyRetryCount:I
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$2302(Lcom/samsung/cpp/CPPProvider;I)I

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/AlarmManager;

    .line 718
    .local v21, "am":Landroid/app/AlarmManager;
    new-instance v27, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyRetryPeriod()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v2, v10

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 719
    .local v27, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyExpirationDate(Ljava/util/Date;Z)V

    .line 721
    new-instance v37, Landroid/content/Intent;

    const-string v2, "sec.intent.action.UPDATE_POLICY"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v37, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v37

    invoke-static {v3, v4, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    .line 723
    const/4 v2, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v3, v3, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10, v11, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 725
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RESPONSE_FROM_SERVER (COMM_TYPE_GET_POLICY) : FAIL, register ALARM at ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 732
    .end local v5    # "resultMsg":Ljava/lang/String;
    .end local v21    # "am":Landroid/app/AlarmManager;
    .end local v27    # "date":Ljava/util/Date;
    .end local v37    # "intent":Landroid/content/Intent;
    :cond_10
    const/16 v2, 0x7530

    if-ne v9, v2, :cond_0

    .line 733
    const-string v2, "CPProvider"

    const-string v3, "MSG_RESPONSE_FROM_SERVER - COMM_TYPE_POST_REQ_WIFI_LOC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v2, "req_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 735
    .restart local v6    # "requestedId":J
    const-string v2, "result_msg"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 736
    .local v5, "resultMsg":[B
    const-string v2, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    .line 738
    .local v33, "geoMode":I
    if-eqz v5, :cond_0

    .line 739
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COMM_TYPE_POST_REQ_WIFI_LOC id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", geoMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move/from16 v0, v33

    # invokes: Lcom/samsung/cpp/CPPProvider;->parseGeoLoc(JI[B)V
    invoke-static {v2, v6, v7, v0, v5}, Lcom/samsung/cpp/CPPProvider;->access$2500(Lcom/samsung/cpp/CPPProvider;JI[B)V

    goto/16 :goto_0

    .line 747
    .end local v5    # "resultMsg":[B
    .end local v6    # "requestedId":J
    .end local v8    # "_rat":I
    .end local v9    # "_type":I
    .end local v24    # "bundle":Landroid/os/Bundle;
    .end local v25    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v33    # "geoMode":I
    .end local v34    # "httpResponseCode":I
    .end local v35    # "httpResponseMsg":Ljava/lang/String;
    .end local v45    # "resultCode":I
    :pswitch_9
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY. msg.arg1(RAT) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/AlarmManager;

    .line 750
    .restart local v21    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    sget-boolean v2, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z

    if-eqz v2, :cond_13

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getPLMN()Ljava/lang/String;

    move-result-object v15

    .line 755
    .local v15, "cellinfo":Ljava/lang/String;
    if-nez v15, :cond_11

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getCurrentMccMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 758
    :cond_11
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cellinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-nez v2, :cond_12

    if-eqz v15, :cond_12

    .line 760
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY : [invalidPolicyID] flag_MSG_UPDATE_POLICY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), cellinfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") --> sendToSrv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$2402(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2600(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPSrvCommunicator;

    move-result-object v13

    const v14, 0x15f90

    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/samsung/cpp/CPPSrvCommunicator;->sendToSrv(ILjava/lang/String;JIII)V

    goto/16 :goto_0

    .line 765
    :cond_12
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY : [invalidPolicyID] flag_MSG_UPDATE_POLICY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), cellinfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") --> NOT sendToSrv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 770
    .end local v15    # "cellinfo":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyExpiration()Z

    move-result v22

    .line 773
    .local v22, "bIsPolicyExpiration":Z
    if-eqz v22, :cond_19

    .line 774
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy expired) : (bIsPolicyExpiration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), expired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy expired) : connection = { mMobileConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWifiConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v2, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_14

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v2, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 779
    const-string v2, "CPProvider"

    const-string v3, "MSG_UPDATE_POLICY(policy expired) : Previous Alarm is canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    .line 784
    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$000()Z

    move-result v2

    if-nez v2, :cond_15

    # getter for: Lcom/samsung/cpp/CPPProvider;->mMobileConnected:Z
    invoke-static {}, Lcom/samsung/cpp/CPPProvider;->access$500()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 785
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getPLMN()Ljava/lang/String;

    move-result-object v15

    .line 786
    .restart local v15    # "cellinfo":Ljava/lang/String;
    if-nez v15, :cond_16

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getCurrentMccMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 789
    :cond_16
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cellinfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v15, :cond_17

    .line 791
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY : [networkConnected] flag_MSG_UPDATE_POLICY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), cellinfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") --> sendToSrv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$2402(Lcom/samsung/cpp/CPPProvider;Z)Z

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mSrvComm:Lcom/samsung/cpp/CPPSrvCommunicator;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$2600(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPSrvCommunicator;

    move-result-object v13

    const v14, 0x15f90

    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lcom/samsung/cpp/CPPSrvCommunicator;->sendToSrv(ILjava/lang/String;JIII)V

    goto/16 :goto_0

    .line 796
    :cond_17
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY : [networkConnected] flag_MSG_UPDATE_POLICY("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->flag_MSG_UPDATE_POLICY:Z
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$2400(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), cellinfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") --> NOT sendToSrv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    .end local v15    # "cellinfo":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v3}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    # setter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v2, v3}, Lcom/samsung/cpp/CPPProvider;->access$202(Lcom/samsung/cpp/CPPProvider;I)I

    .line 802
    const-string v2, "CPProvider"

    const-string v3, "MSG_UPDATE_POLICY(policy expired) : network not connected --> register alarm with PendingIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy expired) : network not connected --> set mNeedUpdatePolicy ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mNeedUpdatePolicy:I
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$200(Lcom/samsung/cpp/CPPProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), if CONNECTIVITY is changed -> try again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v27, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v4}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyRetryPeriod()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v2, v10

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 806
    .restart local v27    # "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyExpirationDate(Ljava/util/Date;Z)V

    .line 808
    new-instance v37, Landroid/content/Intent;

    const-string v2, "sec.intent.action.UPDATE_POLICY"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .restart local v37    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v37

    invoke-static {v3, v4, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    .line 810
    const/4 v2, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v3, v3, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10, v11, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 812
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy expired) : network not connected --> register ALARM at ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    .end local v27    # "date":Ljava/util/Date;
    .end local v37    # "intent":Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v2, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 817
    const-string v2, "CPProvider"

    const-string v3, "MSG_UPDATE_POLICY(policy is not expired) : --> Send intent for next alarm period"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v28, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 823
    .local v28, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mPolicyHandler:Lcom/samsung/cpp/CPPPolicyHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$300(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPPolicyHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyExpirationDate()Ljava/lang/String;

    move-result-object v32

    .line 824
    .local v32, "expireDate":Ljava/lang/String;
    if-eqz v32, :cond_0

    .line 825
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v27

    .line 826
    .restart local v27    # "date":Ljava/util/Date;
    new-instance v37, Landroid/content/Intent;

    const-string v2, "sec.intent.action.UPDATE_POLICY"

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v37    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/cpp/CPPProvider;->access$1400(Lcom/samsung/cpp/CPPProvider;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v37

    invoke-static {v3, v4, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    .line 828
    const/4 v2, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    iget-object v3, v3, Lcom/samsung/cpp/CPPProvider;->mMobileAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v10, v11, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 829
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy is not expired) : register alarm for retryPeriod = { current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", registeredTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 832
    .end local v27    # "date":Ljava/util/Date;
    .end local v32    # "expireDate":Ljava/lang/String;
    .end local v37    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v29

    .line 833
    .local v29, "e":Ljava/lang/NullPointerException;
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy is not expired) : NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 835
    .end local v29    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v29

    .line 836
    .local v29, "e":Ljava/text/ParseException;
    const-string v2, "CPProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_POLICY(policy is not expired) : ParseException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 842
    .end local v21    # "am":Landroid/app/AlarmManager;
    .end local v22    # "bIsPolicyExpiration":Z
    .end local v28    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v29    # "e":Ljava/text/ParseException;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v24

    .line 843
    .restart local v24    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mWifiScanning:Z
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$800(Lcom/samsung/cpp/CPPProvider;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->wifiResults:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$900(Lcom/samsung/cpp/CPPProvider;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 845
    if-eqz v24, :cond_0

    .line 846
    const-string v2, "geo_cb"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 847
    .restart local v5    # "resultMsg":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/cpp/CPPProvider;->makeJsonForGeo(Z[B)V
    invoke-static {v2, v3, v5}, Lcom/samsung/cpp/CPPProvider;->access$2700(Lcom/samsung/cpp/CPPProvider;Z[B)V

    goto/16 :goto_0

    .line 850
    .end local v5    # "resultMsg":[B
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    const-wide/16 v10, 0xfa0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 853
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->this$0:Lcom/samsung/cpp/CPPProvider;

    # getter for: Lcom/samsung/cpp/CPPProvider;->mHandler:Lcom/samsung/cpp/CPPProvider$CPPEventHandler;
    invoke-static {v2}, Lcom/samsung/cpp/CPPProvider;->access$400(Lcom/samsung/cpp/CPPProvider;)Lcom/samsung/cpp/CPPProvider$CPPEventHandler;

    move-result-object v2

    const-wide/16 v10, 0xfa0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10, v11}, Lcom/samsung/cpp/CPPProvider$CPPEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
