.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4810
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4811
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4799
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4803
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4808
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    .line 4812
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHandleType:I

    .line 4813
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4815
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    .line 4816
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 4939
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4940
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_0

    .line 4942
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4943
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4948
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4949
    :goto_0
    return-void

    .line 4945
    :cond_1
    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 5004
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 5006
    .local v2, "locationInWindow":[I
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5007
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 5009
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    aget v8, v2, v3

    sub-int v0, v7, v8

    .line 5014
    .local v0, "gap":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5015
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v1, v7, v8

    .line 5016
    .local v1, "leftEdge":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 5018
    .local v5, "rightEdge":I
    int-to-float v7, v0

    add-float/2addr v7, p1

    int-to-float v8, v5

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    int-to-float v7, v0

    add-float/2addr v7, p1

    int-to-float v8, v1

    iget v9, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :cond_0
    move v3, v6

    .local v3, "nearEdge":Z
    :cond_1
    move v4, v3

    .line 5032
    .end local v1    # "leftEdge":I
    .end local v3    # "nearEdge":Z
    .end local v5    # "rightEdge":I
    .local v4, "nearEdge":I
    :goto_0
    return v4

    .line 5024
    .end local v4    # "nearEdge":I
    :cond_2
    if-eqz p2, :cond_4

    .line 5025
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 5027
    .restart local v5    # "rightEdge":I
    int-to-float v7, v5

    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v7, v8

    cmpl-float v7, p1, v7

    if-lez v7, :cond_3

    move v3, v6

    .end local v5    # "rightEdge":I
    .restart local v3    # "nearEdge":Z
    :cond_3
    :goto_1
    move v4, v3

    .line 5032
    .restart local v4    # "nearEdge":I
    goto :goto_0

    .line 5029
    .end local v3    # "nearEdge":Z
    .end local v4    # "nearEdge":I
    :cond_4
    iget-object v7, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v1, v7, v8

    .line 5030
    .restart local v1    # "leftEdge":I
    int-to-float v7, v1

    iget v8, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v7, v8

    cmpg-float v7, p1, v7

    if-gez v7, :cond_5

    move v3, v6

    .restart local v3    # "nearEdge":Z
    :cond_5
    goto :goto_1
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4970
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4972
    .local v0, "bSwitchCursor":Z
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4974
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4975
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 4978
    :cond_0
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v6, :cond_2

    .line 4979
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4980
    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4981
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 4982
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4984
    .local v1, "compensation":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float/2addr v5, v1

    iget v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 4985
    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    .line 4989
    .end local v1    # "compensation":F
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :goto_1
    return v4

    .line 4982
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    :cond_1
    const/high16 v1, -0x41000000    # -0.5f

    goto :goto_0

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_2
    move v4, v5

    .line 4989
    goto :goto_1
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4834
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4829
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4820
    if-eqz p2, :cond_0

    .line 4821
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4823
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected isHandleViewScreenOut()Z
    .locals 4

    .prologue
    .line 5037
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    .line 5038
    .local v1, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5040
    .local v0, "iconSize":I
    iget v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4994
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4995
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4998
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 5000
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4957
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4958
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v0}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4959
    return-void

    .line 4958
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4962
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4963
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 4964
    const/4 v0, 0x1

    .line 4966
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4849
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 4850
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    .line 4853
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4936
    :goto_0
    return-void

    .line 4857
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 4858
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4861
    :cond_1
    const/4 v10, 0x0

    .line 4862
    .local v10, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    .line 4863
    .local v11, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v15, v7, v0, v1}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v3

    .line 4864
    .local v3, "currLine":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v3, v0}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v4

    .line 4866
    .local v4, "initialOffset":I
    move v9, v4

    .line 4868
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    .line 4869
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4872
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 4873
    .local v12, "selectionStart":I
    invoke-virtual {v7, v12}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v13

    .line 4874
    .local v13, "selectionStartRtl":Z
    invoke-virtual {v7, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    .line 4875
    .local v2, "atRtl":Z
    invoke-virtual {v7, v9}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v6

    .line 4881
    .local v6, "isLvlBoundary":Z
    if-nez v6, :cond_4

    if-eqz v13, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-nez v13, :cond_5

    if-eqz v2, :cond_5

    .line 4884
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4885
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4887
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    if-eqz v15, :cond_6

    if-nez v6, :cond_6

    .line 4890
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4891
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    goto/16 :goto_0

    .line 4894
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    sub-float v14, p1, v15

    .line 4895
    .local v14, "xDiff":F
    if-eqz v2, :cond_c

    .line 4896
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-gtz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    if-le v3, v15, :cond_b

    :cond_7
    const/4 v5, 0x1

    .line 4902
    .local v5, "isExpanding":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 4903
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    if-eqz v15, :cond_16

    if-eqz v5, :cond_8

    if-lt v9, v12, :cond_9

    :cond_8
    if-nez v5, :cond_16

    .line 4909
    :cond_9
    const/4 v8, 0x0

    .line 4910
    .local v8, "nextOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v15}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 4911
    if-le v9, v12, :cond_11

    .line 4912
    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    .line 4914
    :goto_2
    if-ne v9, v11, :cond_a

    .line 4915
    if-eqz v2, :cond_10

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    .line 4928
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4896
    .end local v5    # "isExpanding":Z
    .end local v8    # "nextOffset":I
    :cond_b
    const/4 v5, 0x0

    goto :goto_1

    .line 4898
    :cond_c
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-ltz v15, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    if-ge v3, v15, :cond_e

    :cond_d
    const/4 v5, 0x1

    .restart local v5    # "isExpanding":Z
    :goto_4
    goto :goto_1

    .end local v5    # "isExpanding":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    .line 4912
    .restart local v5    # "isExpanding":Z
    .restart local v8    # "nextOffset":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    goto :goto_2

    .line 4915
    :cond_10
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    goto :goto_3

    .line 4918
    :cond_11
    if-ge v9, v12, :cond_13

    .line 4919
    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    :goto_5
    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    goto :goto_5

    .line 4922
    :cond_13
    move v8, v9

    goto :goto_3

    .line 4925
    :cond_14
    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    :goto_6
    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    goto :goto_6

    .line 4933
    .end local v8    # "nextOffset":I
    :cond_16
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4934
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4935
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    goto/16 :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4839
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4841
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4842
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4843
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4845
    :cond_0
    return-void
.end method