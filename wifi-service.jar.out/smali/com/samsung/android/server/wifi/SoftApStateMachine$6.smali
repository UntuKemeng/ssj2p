.class Lcom/samsung/android/server/wifi/SoftApStateMachine$6;
.super Landroid/telephony/PhoneStateListener;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$6;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 20
    .param p1, "state"    # I
    .param p2, "networktype"    # I

    .prologue
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$800()Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "SoftApStateMachine"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDataConnectionStateChanged state : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", networktype : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1000()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v16

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$902(J)J

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1000()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v16

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1102(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mStartTimeOfMobileData:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1202(J)J

    const/16 v16, 0x1

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->bUseMobileData:Z
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1302(Z)Z

    const/16 v16, 0x1

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1402(Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1400()Z

    move-result v16

    if-eqz v16, :cond_1

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1500()J

    move-result-wide v10

    .local v10, "tempAmountTimeOfMobileData":J
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1600()J

    move-result-wide v12

    .local v12, "tempAmountTx":J
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1700()J

    move-result-wide v8

    .local v8, "tempAmountRx":J
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1000()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v16

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileTxBytes:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$900()J

    move-result-wide v18

    sub-long v6, v16, v18

    .local v6, "mEndTempMobileTxBytes":J
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mIface:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1000()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v16

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mTempMobileRxBytes:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1100()J

    move-result-wide v18

    sub-long v4, v16, v18

    .local v4, "mEndTempMobileRxBytes":J
    add-long v16, v12, v6

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileTxBytes:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1602(J)J

    add-long v16, v8, v4

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountMobileRxBytes:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1702(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "endTimeOfMobileData":J
    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mStartTimeOfMobileData:J
    invoke-static {}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1200()J

    move-result-wide v16

    sub-long v16, v2, v16

    const-wide/32 v18, 0xea60

    div-long v14, v16, v18

    .local v14, "usedTimeOfMobileData":J
    add-long v16, v10, v14

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mAmountTimeOfMobileData:J
    invoke-static/range {v16 .. v17}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1502(J)J

    const/16 v16, 0x0

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->bUseMobileData:Z
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1302(Z)Z

    const/16 v16, 0x0

    # setter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->bIsFirstCall:Z
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$1402(Z)Z

    goto :goto_0
.end method
