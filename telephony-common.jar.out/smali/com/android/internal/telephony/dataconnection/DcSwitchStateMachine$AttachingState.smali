.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachingState"
.end annotation


# instance fields
.field private mCurrentAllowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method

.method private doEnter()V
    .locals 14

    .prologue
    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 348
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsInCall:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v8

    if-nez v8, :cond_7

    .line 349
    const/4 v4, 0x1

    .line 350
    .local v4, "needCallDds":Z
    const/4 v0, 0x1

    .line 351
    .local v0, "SimEnable":Z
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v7

    .line 352
    .local v7, "serviceState":I
    const-string v8, "ril.datacross.slotid"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 353
    .local v1, "datacrossSlotId":I
    sget v6, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    .line 355
    .local v6, "prevSubId":I
    sget-boolean v8, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    if-eqz v8, :cond_3

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 358
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AttachingState: DDS swtich Failed, DDS = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 360
    sput-boolean v13, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 361
    if-nez v7, :cond_0

    .line 362
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: DDS swtich Failed and Already Attached, transit to Attached state"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 363
    const/4 v4, 0x0

    .line 364
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 377
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2402(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 379
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v0

    .line 380
    const-string v8, "ro.multisim.simslotcount"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-le v8, v12, :cond_2

    if-ne v4, v12, :cond_2

    if-eq v0, v12, :cond_1

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getActiveSubInfoCount()I

    move-result v8

    if-lt v8, v12, :cond_2

    .line 383
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 384
    .local v5, "pb":Lcom/android/internal/telephony/PhoneBase;
    const-string v8, "ril.dds.progressing"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v10, 0x43001

    iget v11, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    invoke-virtual {v9, v10, v11, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v12, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 390
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 391
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState executeAll due to autoAttach"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 411
    .end local v0    # "SimEnable":Z
    .end local v1    # "datacrossSlotId":I
    .end local v4    # "needCallDds":Z
    .end local v5    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "prevSubId":I
    .end local v7    # "serviceState":I
    :cond_2
    :goto_1
    return-void

    .line 366
    .restart local v0    # "SimEnable":Z
    .restart local v1    # "datacrossSlotId":I
    .restart local v4    # "needCallDds":Z
    .restart local v6    # "prevSubId":I
    .restart local v7    # "serviceState":I
    :cond_3
    if-nez v7, :cond_6

    if-ne v1, v10, :cond_4

    const-string v8, "ril.dds.command_slot"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v9

    if-eq v8, v9, :cond_5

    :cond_4
    const-string v8, "ro.multisim.simslotcount"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_6

    .line 369
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: Already Attached, transit to Attached state"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 370
    const/4 v4, 0x0

    .line 371
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->broadcastDefaultDataSubIdChanged(I)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)V

    .line 372
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 373
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v1, v10, :cond_0

    const-string v8, "0"

    const-string v9, "ril.dds.progressing"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 374
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "AttachingState: not progressing DDS, so skip setDataAllowed"

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 375
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 397
    .end local v0    # "SimEnable":Z
    .end local v1    # "datacrossSlotId":I
    .end local v4    # "needCallDds":Z
    .end local v6    # "prevSubId":I
    .end local v7    # "serviceState":I
    :cond_7
    const-string v8, "ril.dds.progressing"

    invoke-static {v8, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 398
    .local v3, "mIsDDSProcessing":I
    if-ne v3, v12, :cond_8

    .line 399
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IdleState: UE is calling using SIM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and DDS is under processing, send a failed intent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 400
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    const-string v8, "subscription"

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 404
    const-string v8, "ril.dds.progressing"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIsTransitionFromAttached:Z
    invoke-static {v8, v13}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2402(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Z)Z

    .line 407
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v9, "IdleState: Transit to Idle state "

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 408
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v9

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v1, "AttachingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 343
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 417
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 581
    const/4 v13, 0x0

    .line 584
    .local v13, "retVal":Z
    :goto_0
    return v13

    .line 419
    .end local v13    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 420
    .local v4, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    if-eqz v4, :cond_0

    .line 421
    const-string v18, "DcSwitchStateMachine.AttachingState: REQ_CONNECT"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AttachingState: REQ_CONNECT, apnRequest="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 425
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneBase;

    .line 426
    .local v11, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v11, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v18

    if-nez v18, :cond_2

    .line 427
    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->request:Landroid/net/NetworkRequest;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/NetworkRequest;->legacyType:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "processing: REQ_CONNECT for Emergency type"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    .line 439
    :cond_1
    :goto_1
    const/4 v13, 0x1

    .line 440
    .restart local v13    # "retVal":Z
    goto :goto_0

    .line 434
    .end local v13    # "retVal":Z
    :cond_2
    if-eqz v4, :cond_3

    .line 435
    const-string v18, "DcSwitchStateMachine processing due to autoAttach"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 437
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;)V

    goto :goto_1

    .line 443
    .end local v4    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    .end local v11    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 444
    .local v5, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_DATA_ALLOWED ignored arg1="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", seq="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 527
    :cond_4
    :goto_2
    const/4 v13, 0x1

    .line 528
    .restart local v13    # "retVal":Z
    goto/16 :goto_0

    .line 447
    .end local v13    # "retVal":Z
    :cond_5
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 448
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 449
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    .line 450
    .local v8, "e":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 454
    const/4 v13, 0x1

    .line 455
    .restart local v13    # "retVal":Z
    goto/16 :goto_0

    .line 459
    .end local v8    # "e":Lcom/android/internal/telephony/CommandException;
    .end local v13    # "retVal":Z
    :cond_6
    const-string v18, "ro.multisim.simslotcount"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "AttachingState: EVENT_DATA_ALLOWED, Failed"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 465
    sget v18, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 466
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 467
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    sget v19, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 468
    new-instance v9, Landroid/content/Intent;

    const-string v18, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v18, 0x20000000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    const-string v18, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v18

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 473
    const-string v18, "ril.dds.progressing"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v18, "ril.datacross.slotid"

    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v19

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2702(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I

    goto/16 :goto_2

    .line 480
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AttachingState: EVENT_DATA_ALLOWED, Failed, mRetryCountForDDS = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneBase;

    .line 483
    .restart local v11    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v11, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const v19, 0x43001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->mCurrentAllowedSequence:I

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 485
    .local v12, "replyMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 486
    .local v10, "onDelay":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->RETRY_DDS_TIME:[I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v20, v0

    # operator++ for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2708(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v20

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 494
    .end local v10    # "onDelay":Landroid/os/Message;
    .end local v11    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v12    # "replyMsg":Landroid/os/Message;
    :cond_9
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    const-string v18, "ro.multisim.simslotcount"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 496
    .restart local v10    # "onDelay":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v18

    move/from16 v0, v18

    iput v0, v10, Landroid/os/Message;->arg1:I

    .line 498
    const-string v18, "CTC"

    sget-object v19, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x1388

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 504
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AttachingState: EVENT_DATA_ALLOWED, Successed : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v16

    .line 507
    .local v16, "subId":I
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v15

    .line 508
    .local v15, "slotId":I
    const-string v18, "persist.radio.dataprefer.slotId"

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 509
    .local v6, "dataPrefer":I
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v18

    if-eqz v18, :cond_a

    if-eq v15, v6, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AttachingState changed subId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", slotId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", prefer:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 514
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v14

    .line 515
    .local v14, "serviceState":I
    if-nez v14, :cond_b

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v19

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 519
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mRetryCountForDDS:I
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2702(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;I)I

    .line 523
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/SubscriptionController;->switchFailed:Z

    .line 524
    const/16 v18, -0x1

    sput v18, Lcom/android/internal/telephony/SubscriptionController;->sPrevDataSubId:I

    goto/16 :goto_2

    .line 501
    .end local v6    # "dataPrefer":I
    .end local v14    # "serviceState":I
    .end local v15    # "slotId":I
    .end local v16    # "subId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xbb8

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 532
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "onDelay":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "AttachingState going to retry"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->doEnter()V

    .line 534
    const/4 v13, 0x1

    .line 535
    .restart local v13    # "retVal":Z
    goto/16 :goto_0

    .line 540
    .end local v13    # "retVal":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "AttachingState: EVENT_DATA_ATTACHED"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAttachedState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachedState;

    move-result-object v19

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 543
    const/4 v13, 0x1

    .line 544
    .restart local v13    # "retVal":Z
    goto/16 :goto_0

    .line 549
    .end local v13    # "retVal":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "AttachingState: REQ_DISCONNECT_ALL"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/PhoneBase;

    .line 552
    .restart local v11    # "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v11, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getAutoAttachOnCreation()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    const-string v19, "releasingAll due to autoAttach"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 563
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v17

    .line 564
    .local v17, "subIds":[I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v7

    .line 565
    .local v7, "dataSubId":I
    const/16 v18, 0x0

    aget v18, v17, v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_e

    .line 566
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mId:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v19

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 572
    :goto_4
    const/4 v13, 0x1

    .line 573
    .restart local v13    # "retVal":Z
    goto/16 :goto_0

    .line 570
    .end local v13    # "retVal":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$AttachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$3400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    goto :goto_4

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x43001 -> :sswitch_1
        0x44000 -> :sswitch_0
        0x44001 -> :sswitch_2
        0x44002 -> :sswitch_4
        0x44007 -> :sswitch_3
    .end sparse-switch
.end method
