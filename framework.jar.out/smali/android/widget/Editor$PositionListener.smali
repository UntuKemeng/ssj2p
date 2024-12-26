.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field protected mDelayHandler:Landroid/os/Handler;

.field private mDelayTime:I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionXScreen:I

.field private mPositionY:I

.field private mPositionYScreen:I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final mTempCoordsScreen:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x7

    .line 2705
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2709
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 2710
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 2712
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 2713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2719
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    .line 2720
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoordsScreen:[I

    .line 2721
    iput-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    .line 2722
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    .line 2723
    iput-object v3, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2705
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/Editor$PositionListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;

    .prologue
    .line 2705
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/Editor$PositionListener;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;

    .prologue
    .line 2705
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/Editor$PositionListener;Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;
    .param p1, "x1"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 2705
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor$PositionListener;->updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V

    return-void
.end method

.method private checkContentsSizeChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2859
    const/4 v2, 0x0

    .line 2860
    .local v2, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "newWidth":I
    const/4 v0, 0x0

    .line 2862
    .local v0, "newHeight":I
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 2864
    if-nez v2, :cond_0

    .line 2880
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    if-eqz v3, :cond_3

    .line 2869
    iget-boolean v3, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v3, :cond_2

    .line 2870
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v3, v3, v5

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aget v3, v3, v4

    if-eq v3, v0, :cond_2

    .line 2871
    :cond_1
    iput-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2878
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v1, v3, v5

    .line 2879
    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    aput v0, v3, v4

    goto :goto_0

    .line 2875
    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempContentsViewCoords:[I

    goto :goto_1
.end method

.method private prepareHander()V
    .locals 1

    .prologue
    .line 2779
    new-instance v0, Landroid/widget/Editor$PositionListener$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$PositionListener$1;-><init>(Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    .line 2785
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2846
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2847
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoordsScreen:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2849
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2851
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 2852
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 2853
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoordsScreen:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXScreen:I

    .line 2854
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoordsScreen:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYScreen:I

    .line 2855
    return-void

    :cond_1
    move v0, v1

    .line 2849
    goto :goto_0
.end method

.method private updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .locals 0
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "positonChanged"    # Z
    .param p5, "scrollChanged"    # Z

    .prologue
    .line 2842
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 2843
    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 2726
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 2727
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2728
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 2729
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2732
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 2733
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_3

    .line 2734
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 2735
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 2745
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :goto_1
    return-void

    .line 2737
    .restart local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 2738
    move v0, v1

    .line 2733
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2742
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 2743
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 2744
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    goto :goto_1
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 2763
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionXScreen()I
    .locals 1

    .prologue
    .line 2771
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionXScreen:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 2767
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public getPositionYScreen()I
    .locals 1

    .prologue
    .line 2775
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionYScreen:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2789
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2790
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->checkContentsSizeChanged()V

    .line 2792
    const/4 v3, 0x0

    .line 2795
    .local v3, "isNeedToDelay":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x7

    if-ge v2, v6, :cond_7

    .line 2796
    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_5

    .line 2797
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v5, v6, v2

    .line 2798
    .local v5, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v5, :cond_5

    .line 2799
    const/4 v3, 0x0

    .line 2800
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-eqz v6, :cond_2

    instance-of v6, v5, Landroid/widget/Editor$HandleView;

    if-eqz v6, :cond_2

    move-object v0, v5

    .line 2801
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 2802
    .local v0, "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->isDragging()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2803
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 2804
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    iget-boolean v6, v6, Landroid/widget/Editor;->mSelectionActionMode:Z

    if-nez v6, :cond_1

    instance-of v6, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v6, :cond_1

    .line 2805
    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->addHiderCallback()V

    .line 2807
    :cond_1
    const/4 v3, 0x1

    .line 2810
    :cond_2
    if-eqz v3, :cond_6

    .line 2811
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 2812
    .local v4, "msg":Landroid/os/Message;
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2813
    iput v10, v4, Landroid/os/Message;->what:I

    .line 2814
    instance-of v6, v5, Landroid/widget/Editor$HandleView;

    if-eqz v6, :cond_3

    move-object v0, v5

    .line 2815
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 2816
    .restart local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    iget v6, v0, Landroid/widget/Editor$HandleView;->mHandleType:I

    iput v6, v4, Landroid/os/Message;->what:I

    .line 2819
    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    if-nez v6, :cond_4

    .line 2820
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->prepareHander()V

    .line 2823
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    iget v7, v4, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2824
    iget-object v6, p0, Landroid/widget/Editor$PositionListener;->mDelayHandler:Landroid/os/Handler;

    iget v7, p0, Landroid/widget/Editor$PositionListener;->mDelayTime:I

    int-to-long v8, v7

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2795
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2827
    .restart local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_6
    :try_start_0
    iget v6, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v7, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v8, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v9, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2828
    :catch_0
    move-exception v1

    .line 2829
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v6, "Editor"

    const-string v7, "Occurred BadTokenException by position update timing."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_1

    .line 2837
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_7
    iput-boolean v10, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2838
    const/4 v6, 0x1

    return v6
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 2884
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2885
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .prologue
    .line 2748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 2749
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 2750
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2751
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 2756
    :cond_0
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 2757
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2758
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2760
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 2748
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
