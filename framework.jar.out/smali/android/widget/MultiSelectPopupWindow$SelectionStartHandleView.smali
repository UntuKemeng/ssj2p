.class Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1533
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1534
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1535
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHandleType:I

    .line 1536
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 4

    .prologue
    .line 1648
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    .line 1649
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 1651
    .local v0, "iconSize":I
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1604
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1606
    .local v0, "bSwitchCursor":Z
    iput-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1607
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1608
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1611
    :cond_0
    iget-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eq v0, v4, :cond_1

    .line 1612
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->updateDrawable()V

    .line 1613
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1614
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    sub-float/2addr v4, v6

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1615
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1616
    iget-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1617
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    .line 1618
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->updateDrawable()V

    .line 1619
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    sub-float/2addr v3, v6

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getHorizontalOffset()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1620
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionX:I

    .line 1625
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "layout":Landroid/text/Layout;
    :cond_2
    move v2, v3

    .line 1623
    goto :goto_0
.end method

.method public getCurrentCursorOffset()I
    .locals 3

    .prologue
    .line 1554
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1555
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1556
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 1549
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
    .line 1540
    if-eqz p2, :cond_0

    .line 1541
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 1543
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    .line 1590
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1591
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mPositionHasChanged:Z

    .line 1592
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->invalidate()V

    .line 1593
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1596
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->calculateForSwitchingCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1598
    const/4 v0, 0x1

    .line 1600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 4

    .prologue
    .line 1629
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1630
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1631
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1633
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_0

    .line 1634
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1637
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1638
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHotspotX:I

    .line 1639
    invoke-virtual {p0, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->getHorizontalGravity(Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mHorizontalGravity:I

    .line 1641
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_1

    .line 1642
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->recalHandleView()V

    .line 1643
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->invalidate()V

    .line 1645
    :cond_1
    return-void

    .line 1634
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1637
    :cond_3
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 1576
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1577
    .local v0, "offset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1579
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1580
    .local v1, "selectionEnd":I
    if-ne v0, v1, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1583
    :cond_0
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mStartRange:I

    if-ge v0, v3, :cond_1

    .line 1584
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->mStartRange:I

    .line 1586
    :cond_1
    invoke-virtual {p0, v0, v4, v4}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->positionAtCursorOffset(IZZ)V

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1564
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1565
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1566
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 1570
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1571
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;->updateDrawable()V

    goto :goto_0
.end method
