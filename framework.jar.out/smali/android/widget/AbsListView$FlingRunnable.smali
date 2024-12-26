.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 6800
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6773
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 6801
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 6802
    return-void
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .prologue
    .line 6762
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 6869
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 6870
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 6871
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6873
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6874
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6875
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 6876
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 6886
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 6887
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6888
    return-void

    .line 6878
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 6881
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6882
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 6883
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 6900
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6902
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6903
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6905
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6906
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;)V

    .line 6907
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 6909
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6910
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 6911
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3202(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6913
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 6916
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6917
    return-void
.end method

.method public run()V
    .locals 30

    .prologue
    .line 6921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 6923
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 7046
    :cond_0
    :goto_0
    return-void

    .line 6927
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6932
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 6933
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 6936
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6937
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6941
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 6942
    .local v27, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v23

    .line 6943
    .local v23, "more":Z
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v29

    .line 6947
    .local v29, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v20, v2, v29

    .line 6950
    .local v20, "delta":I
    if-lez v20, :cond_6

    .line 6952
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6953
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6954
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6957
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4000(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4100(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 6971
    .end local v21    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 6972
    .local v24, "motionView":Landroid/view/View;
    const/16 v26, 0x0

    .line 6973
    .local v26, "oldTop":I
    if-eqz v24, :cond_4

    .line 6974
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 6978
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 6979
    .local v15, "atEdge":Z
    if-eqz v15, :cond_7

    if-eqz v20, :cond_7

    const/16 v16, 0x1

    .line 6980
    .local v16, "atEnd":Z
    :goto_2
    if-eqz v16, :cond_8

    .line 6981
    if-eqz v24, :cond_5

    .line 6983
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v26

    sub-int v2, v20, v2

    neg-int v4, v2

    .line 6984
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 6987
    .end local v4    # "overshoot":I
    :cond_5
    if-eqz v23, :cond_0

    .line 6988
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 6960
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 6961
    .local v25, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v25

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6963
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 6964
    .local v22, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6967
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_1

    .line 6979
    .end local v22    # "lastView":Landroid/view/View;
    .end local v25    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v24    # "motionView":Landroid/view/View;
    .restart local v26    # "oldTop":I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 6993
    .restart local v16    # "atEnd":Z
    :cond_8
    if-eqz v23, :cond_a

    if-nez v16, :cond_a

    .line 6994
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 6995
    :cond_9
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 6996
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6998
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 7016
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v27    # "scroller":Landroid/widget/OverScroller;
    .end local v29    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 7017
    .restart local v27    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 7018
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$4600(Landroid/widget/AbsListView;)I

    move-result v9

    .line 7019
    .local v9, "scrollY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    .line 7020
    .local v19, "currY":I
    sub-int v7, v19, v9

    .line 7021
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7023
    if-gtz v9, :cond_c

    if-lez v19, :cond_c

    const/16 v17, 0x1

    .line 7024
    .local v17, "crossDown":Z
    :goto_3
    if-ltz v9, :cond_d

    if-gez v19, :cond_d

    const/16 v18, 0x1

    .line 7025
    .local v18, "crossUp":Z
    :goto_4
    if-nez v17, :cond_b

    if-eqz v18, :cond_e

    .line 7026
    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 7027
    .local v28, "velocity":I
    if-eqz v18, :cond_0

    move/from16 v0, v28

    neg-int v2, v0

    goto/16 :goto_0

    .line 7023
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    .end local v28    # "velocity":I
    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    .line 7024
    .restart local v17    # "crossDown":Z
    :cond_d
    const/16 v18, 0x0

    goto :goto_4

    .line 7034
    .restart local v18    # "crossUp":Z
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 7037
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 7038
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7041
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 6921
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 6805
    if-gez p1, :cond_1

    move v2, v6

    .line 6806
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 6807
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6808
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 6810
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6811
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6812
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6821
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6822
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3202(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6824
    :cond_0
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 6805
    goto :goto_0
.end method

.method start(IZ)V
    .locals 10
    .param p1, "initialVelocity"    # I
    .param p2, "accDisabled"    # Z

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 6827
    if-gez p1, :cond_1

    move v2, v6

    .line 6828
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 6829
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6830
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIIIZ)V

    .line 6832
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6833
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6834
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6843
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6844
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$3202(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6846
    :cond_0
    return-void

    .end local v2    # "initialY":I
    :cond_1
    move v2, v1

    .line 6827
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x0

    .line 6860
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6861
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    move-result v2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6863
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6864
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6865
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6866
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6891
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 6892
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 6893
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6894
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 6895
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6896
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6897
    return-void

    .end local v2    # "initialY":I
    :cond_0
    move v2, v1

    .line 6891
    goto :goto_0

    .line 6893
    .restart local v2    # "initialY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 6849
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6850
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6851
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6852
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6857
    :goto_0
    return-void

    .line 6854
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6855
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
