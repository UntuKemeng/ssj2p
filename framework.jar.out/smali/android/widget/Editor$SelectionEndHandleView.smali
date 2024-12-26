.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
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
    .locals 3
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 5057
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 5058
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5046
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 5050
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 5055
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    .line 5059
    iput v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHandleType:I

    .line 5060
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5062
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    .line 5063
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 5186
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5187
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_0

    .line 5189
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5190
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x1

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4800(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 5195
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 5196
    :goto_0
    return-void

    .line 5192
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

    .line 5251
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 5253
    .local v2, "locationInWindow":[I
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 5254
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 5256
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    aget v8, v2, v3

    sub-int v0, v7, v8

    .line 5260
    .local v0, "gap":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v7}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5261
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v1, v7, v8

    .line 5262
    .local v1, "leftEdge":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 5264
    .local v5, "rightEdge":I
    int-to-float v7, v0

    add-float/2addr v7, p1

    int-to-float v8, v5

    iget v9, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    int-to-float v7, v0

    add-float/2addr v7, p1

    int-to-float v8, v1

    iget v9, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :cond_0
    move v3, v6

    .local v3, "nearEdge":Z
    :cond_1
    move v4, v3

    .line 5278
    .end local v1    # "leftEdge":I
    .end local v3    # "nearEdge":Z
    .end local v5    # "rightEdge":I
    .local v4, "nearEdge":I
    :goto_0
    return v4

    .line 5270
    .end local v4    # "nearEdge":I
    :cond_2
    if-eqz p2, :cond_4

    .line 5271
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int v1, v7, v8

    .line 5272
    .restart local v1    # "leftEdge":I
    int-to-float v7, v1

    iget v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v7, v8

    cmpg-float v7, p1, v7

    if-gez v7, :cond_3

    move v3, v6

    .end local v1    # "leftEdge":I
    .restart local v3    # "nearEdge":Z
    :cond_3
    :goto_1
    move v4, v3

    .line 5278
    .restart local v4    # "nearEdge":I
    goto :goto_0

    .line 5274
    .end local v3    # "nearEdge":Z
    .end local v4    # "nearEdge":I
    :cond_4
    iget-object v7, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 5276
    .restart local v5    # "rightEdge":I
    int-to-float v7, v5

    iget v8, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v7, v8

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

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

    .line 5217
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5219
    .local v0, "bSwitchCursor":Z
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5221
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5222
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5225
    :cond_0
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v6, :cond_2

    .line 5226
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5227
    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 5229
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 5230
    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5232
    .local v1, "compensation":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    sub-float/2addr v5, v1

    iget v6, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5233
    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5236
    .end local v1    # "compensation":F
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :goto_1
    return v4

    .line 5230
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    :cond_1
    const/high16 v1, -0x41000000    # -0.5f

    goto :goto_0

    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_2
    move v4, v5

    .line 5236
    goto :goto_1
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5081
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5076
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5067
    if-eqz p2, :cond_0

    .line 5068
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 5070
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected isHandleViewScreenOut()Z
    .locals 6

    .prologue
    .line 5283
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5284
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v4}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v3

    .line 5285
    .local v3, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 5287
    .local v2, "iconSize":I
    const/4 v1, 0x0

    .line 5288
    .local v1, "horizontalOffset":I
    iget-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    invoke-virtual {p0, v4}, Landroid/widget/Editor$SelectionEndHandleView;->getHorizontalGravity(Z)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 5297
    :goto_0
    :pswitch_0
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v3}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 5290
    :pswitch_1
    const/4 v1, 0x0

    .line 5291
    goto :goto_0

    .line 5293
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getPreferredWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int v1, v4, v5

    goto :goto_0

    .line 5297
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 5288
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5241
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5242
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 5245
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 5247
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5204
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5205
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v0}, Landroid/widget/Editor;->access$4900(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 5206
    return-void

    .line 5205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 5209
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5210
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5211
    const/4 v0, 0x1

    .line 5213
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
    .line 5096
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 5097
    .local v7, "layout":Landroid/text/Layout;
    if-nez v7, :cond_0

    .line 5100
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5183
    :goto_0
    return-void

    .line 5104
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 5105
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 5108
    :cond_1
    const/4 v10, 0x0

    .line 5109
    .local v10, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v13

    .line 5110
    .local v13, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v15, v7, v0, v1}, Landroid/widget/Editor;->access$4700(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v3

    .line 5111
    .local v3, "currLine":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v3, v0}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v4

    .line 5113
    .local v4, "initialOffset":I
    move v9, v4

    .line 5115
    .local v9, "offset":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    .line 5116
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 5119
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    .line 5120
    .local v11, "selectionEnd":I
    invoke-virtual {v7, v11}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    .line 5121
    .local v12, "selectionEndRtl":Z
    invoke-virtual {v7, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v2

    .line 5122
    .local v2, "atRtl":Z
    invoke-virtual {v7, v9}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v6

    .line 5128
    .local v6, "isLvlBoundary":Z
    if-nez v6, :cond_4

    if-eqz v12, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-nez v12, :cond_5

    if-eqz v2, :cond_5

    .line 5131
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 5132
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 5134
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    if-eqz v15, :cond_6

    if-nez v6, :cond_6

    .line 5137
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5138
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    goto/16 :goto_0

    .line 5141
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    sub-float v14, p1, v15

    .line 5142
    .local v14, "xDiff":F
    if-eqz v2, :cond_c

    .line 5143
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    if-ge v3, v15, :cond_b

    :cond_7
    const/4 v5, 0x1

    .line 5149
    .local v5, "isExpanding":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 5150
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SelectionEndHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v15

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v15}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    if-eqz v2, :cond_f

    const/4 v15, -0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v15

    if-eqz v15, :cond_17

    if-eqz v5, :cond_8

    if-gt v9, v11, :cond_9

    :cond_8
    if-nez v5, :cond_17

    .line 5156
    :cond_9
    const/4 v8, 0x0

    .line 5157
    .local v8, "nextOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v15}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 5158
    if-ge v9, v11, :cond_12

    .line 5159
    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    .line 5161
    :goto_3
    if-ne v8, v13, :cond_a

    .line 5162
    if-eqz v2, :cond_11

    invoke-virtual {v7, v13}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    .line 5175
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 5143
    .end local v5    # "isExpanding":Z
    .end local v8    # "nextOffset":I
    :cond_b
    const/4 v5, 0x0

    goto :goto_1

    .line 5145
    :cond_c
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-gtz v15, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    if-le v3, v15, :cond_e

    :cond_d
    const/4 v5, 0x1

    .restart local v5    # "isExpanding":Z
    :goto_5
    goto :goto_1

    .end local v5    # "isExpanding":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    .line 5150
    .restart local v5    # "isExpanding":Z
    :cond_f
    const/4 v15, 0x1

    goto :goto_2

    .line 5159
    .restart local v8    # "nextOffset":I
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    goto :goto_3

    .line 5162
    :cond_11
    invoke-virtual {v7, v13}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    goto :goto_4

    .line 5165
    :cond_12
    if-le v9, v11, :cond_14

    .line 5166
    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    :goto_6
    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    goto :goto_6

    .line 5169
    :cond_14
    move v8, v9

    goto :goto_4

    .line 5172
    :cond_15
    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v8

    :goto_7
    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    invoke-virtual {v7, v15}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v8

    goto :goto_7

    .line 5180
    .end local v8    # "nextOffset":I
    :cond_17
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 5181
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 5182
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    goto/16 :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 5086
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5088
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 5089
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5091
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5092
    return-void
.end method
