.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private sCfmsService:Landroid/os/ICustomFrequencyManager;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 761
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 762
    return-void
.end method

.method private sendHoveringEvent(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 768
    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    .line 769
    const-string v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 770
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 771
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 774
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    .line 775
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 776
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "HOVERING_EVENT"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_1
    :goto_0
    return-void

    .line 777
    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    .line 778
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "HOVERING_EVENT"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 779
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez p1, :cond_1

    .line 780
    :try_start_1
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v3, "HOVERING_EVENT"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 790
    const/4 v3, 0x0

    .line 792
    .local v3, "handled":Z
    :try_start_0
    instance-of v9, p1, Landroid/view/MotionEvent;

    if-eqz v9, :cond_10

    .line 793
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    .line 794
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 795
    .local v2, "action":I
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->EVENT_STATE_PEN_BUTTON_PRESSED:I
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2900()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    .line 797
    .local v4, "isSideButtonPressed":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    .line 799
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->processMotionEventForAirCMD(Landroid/view/MotionEvent;IZ)V
    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 801
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverStayDetectEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 802
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->checkHoverStay(Landroid/view/MotionEvent;IZ)V
    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    .line 805
    :cond_0
    if-nez v4, :cond_1

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mShouldTransferEventToAirButton:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const/4 v9, 0x7

    if-eq v2, v9, :cond_2

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2

    .line 808
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInputEvent 4 : Action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sideButtonPressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", coverOpened="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_2
    const/4 v8, 0x0

    .line 814
    .local v8, "needsToProcessEvent":Z
    if-eqz v4, :cond_3

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 815
    const/4 v8, 0x1

    .line 820
    :cond_3
    const/16 v9, 0x9

    if-ne v2, v9, :cond_8

    .line 821
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v10, 0x0

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastHoverEvent(IZ)V
    invoke-static {v9, v2, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;IZ)V

    .line 822
    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendHoveringEvent(I)V

    .line 872
    :cond_4
    :goto_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 875
    packed-switch v2, :pswitch_data_0

    .line 898
    :pswitch_0
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onInputEvent : default"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    .end local v8    # "needsToProcessEvent":Z
    :cond_5
    :goto_2
    :pswitch_1
    const/4 v3, 0x1

    .line 913
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 915
    return-void

    .line 795
    .restart local v2    # "action":I
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 823
    .restart local v4    # "isSideButtonPressed":Z
    .restart local v8    # "needsToProcessEvent":Z
    :cond_8
    const/4 v9, 0x7

    if-ne v2, v9, :cond_9

    .line 824
    :try_start_1
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 825
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 913
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v8    # "needsToProcessEvent":Z
    :catchall_0
    move-exception v9

    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    .line 827
    .restart local v2    # "action":I
    .restart local v4    # "isSideButtonPressed":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v8    # "needsToProcessEvent":Z
    :cond_9
    const/16 v9, 0xa

    if-ne v2, v9, :cond_e

    .line 828
    :try_start_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mTrackingHoverPathEnabled:Z
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 829
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 830
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3602(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 831
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3702(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 833
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 834
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v10, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v10

    const/4 v11, 0x0

    sub-float/2addr v10, v11

    float-to-double v10, v10

    iget-object v12, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v12}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v12

    const/4 v13, 0x0

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3802(Lcom/android/server/smartclip/SpenGestureManagerService;F)F

    .line 837
    const-string v9, "HOVER_TEST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Velocity X = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , Y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , Angle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x28

    if-lt v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAngle:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5f

    if-le v9, v10, :cond_c

    .line 840
    :cond_a
    const-string v9, "HOVER_TEST"

    const-string v10, "[HOVER] Angle is not heading to Backkey, try to send Hover exit broadcast..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 842
    .local v7, "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 843
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 844
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 860
    .end local v7    # "msg":Landroid/os/Message;
    :cond_b
    :goto_4
    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendHoveringEvent(I)V

    goto/16 :goto_1

    .line 846
    :cond_c
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mXVelocity:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5dc

    if-ge v9, v10, :cond_d

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mYVelocity:F
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700(Lcom/android/server/smartclip/SpenGestureManagerService;)F

    move-result v9

    float-to-int v9, v9

    const/16 v10, 0x5dc

    if-ge v9, v10, :cond_d

    .line 847
    const-string v9, "HOVER_TEST"

    const-string v10, "[HOVER] Velocity is low, try to send Hover exit broadcast..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 849
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 850
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 851
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 853
    .end local v7    # "msg":Landroid/os/Message;
    :cond_d
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 854
    .restart local v7    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v7, Landroid/os/Message;->what:I

    .line 855
    const/4 v9, 0x1

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 856
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 861
    .end local v7    # "msg":Landroid/os/Message;
    :cond_e
    if-nez v2, :cond_4

    .line 862
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 863
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v10, "[HOVER] sending hover br is canceled by touch event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 867
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendHoveringEvent(I)V

    goto/16 :goto_1

    .line 879
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    .line 880
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 892
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_5

    .line 893
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 904
    .end local v2    # "action":I
    .end local v4    # "isSideButtonPressed":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v8    # "needsToProcessEvent":Z
    :cond_10
    instance-of v9, p1, Landroid/view/KeyEvent;

    if-eqz v9, :cond_6

    .line 905
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v5, v0

    .line 906
    .local v5, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 907
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->broastcastBackPressedEvent()V
    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$4000(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 908
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
