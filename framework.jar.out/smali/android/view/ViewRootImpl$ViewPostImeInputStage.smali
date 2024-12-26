.class final Landroid/view/ViewRootImpl$ViewPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 5345
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5346
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 5347
    return-void
.end method

.method private processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5543
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5546
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5547
    const/4 v1, 0x1

    .line 5549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 9
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 5381
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 5383
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 5386
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    .line 5396
    :cond_0
    const-string v6, "ViewRootImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewPostImeInputStage processKey "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 5495
    :cond_1
    :goto_0
    return v4

    .line 5403
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5408
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5412
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 5413
    goto :goto_0

    .line 5415
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5421
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v6, v1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .line 5422
    goto :goto_0

    .line 5424
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5429
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_b

    .line 5430
    const/4 v0, 0x0

    .line 5431
    .local v0, "direction":I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 5460
    :cond_6
    :goto_1
    if-eqz v0, :cond_b

    .line 5461
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 5462
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_a

    .line 5463
    invoke-virtual {v2, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 5464
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_9

    .line 5468
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5469
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 5470
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5472
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5475
    :cond_7
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5476
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    move v4, v5

    .line 5478
    goto/16 :goto_0

    .line 5433
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5434
    const/16 v0, 0x11

    goto :goto_1

    .line 5438
    :sswitch_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5439
    const/16 v0, 0x42

    goto :goto_1

    .line 5443
    :sswitch_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5444
    const/16 v0, 0x21

    goto :goto_1

    .line 5448
    :sswitch_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5449
    const/16 v0, 0x82

    goto :goto_1

    .line 5453
    :sswitch_4
    invoke-virtual {v1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5454
    const/4 v0, 0x2

    goto :goto_1

    .line 5455
    :cond_8
    invoke-virtual {v1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5456
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 5483
    .restart local v2    # "focused":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 5484
    goto/16 :goto_0

    .line 5488
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 5489
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_b

    invoke-virtual {v3, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 5490
    goto/16 :goto_0

    .line 5495
    .end local v0    # "direction":I
    .end local v2    # "focused":Landroid/view/View;
    .end local v3    # "v":Landroid/view/View;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5431
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 8
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5499
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    .line 5500
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5503
    .local v0, "action":I
    sget-boolean v5, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v5, :cond_2

    .line 5504
    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    if-nez v5, :cond_0

    .line 5505
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 5507
    :cond_0
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    if-eqz v5, :cond_2

    .line 5508
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v1, v0}, Landroid/view/ViewRootImpl;->twProcessTwToolBox(Landroid/view/MotionEvent;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5530
    :cond_1
    :goto_0
    return v3

    .line 5515
    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    const-string v5, "ViewRootImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ViewPostImeInputStage processPointer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5518
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;
    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2100(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 5519
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;
    invoke-static {v5}, Landroid/view/ViewRootImpl;->access$2100(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v5

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl$MotionEventMonitor;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 5522
    :cond_5
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    .line 5523
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 5524
    .local v2, "handled":Z
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mUnbufferedDispatchRequested:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v5, :cond_6

    .line 5525
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v3, v5, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 5526
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v5, :cond_6

    .line 5527
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInputImmediately()V

    .line 5530
    :cond_6
    if-nez v2, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method private processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5534
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 5536
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5537
    const/4 v1, 0x1

    .line 5539
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processWritingBuddyKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_3

    :cond_0
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5557
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v0

    .line 5558
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5559
    invoke-virtual {v0, v2}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getImageModePenDrawing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5560
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 5561
    invoke-virtual {v0, v2}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showPopup()V

    .line 5571
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    .line 5564
    .restart local v0    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 5565
    invoke-virtual {v0, v2}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0

    .end local v0    # "v":Landroid/view/View;
    :cond_3
    move v1, v2

    .line 5571
    goto :goto_0
.end method


# virtual methods
.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5370
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5374
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    .line 5375
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 5377
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 5378
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5351
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    .line 5352
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    .line 5363
    :goto_0
    return v1

    .line 5356
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    .line 5357
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    .line 5358
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 5359
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 5360
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 5361
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processTrackballEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0

    .line 5363
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;->processGenericMotionEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    goto :goto_0
.end method
