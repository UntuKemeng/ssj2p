.class Landroid/widget/ActionMenuPresenter$SemOverflowText;
.super Landroid/widget/TextView;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemOverflowText"
.end annotation


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentFontScale:F

.field private mDefaultTextSize:F

.field private mLandArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

.field private mMaxFontScale:F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1509
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1510
    const v4, 0x10102f6

    invoke-direct {p0, p2, v8, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1506
    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    .line 1507
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1512
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setClickable(Z)V

    .line 1513
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setFocusable(Z)V

    .line 1514
    invoke-virtual {p0, v6}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setVisibility(I)V

    .line 1515
    invoke-virtual {p0, v7}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setEnabled(Z)V

    .line 1517
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v8, v5, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1518
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xbb

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1519
    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {p0, p2, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextAppearance(Landroid/content/Context;I)V

    .line 1520
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1523
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1524
    .local v2, "b":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 1525
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1527
    if-eqz v3, :cond_1

    .line 1528
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    .line 1529
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1531
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1532
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1534
    :cond_0
    iget v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v5, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v7, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextSize(IF)V

    .line 1538
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104032a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1542
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1544
    return-void
.end method

.method private changeButtonBackground()V
    .locals 7

    .prologue
    const v6, 0x10808cb

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1606
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v3}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 1610
    .local v1, "show":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mLandArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    .line 1611
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mLandArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 1617
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1618
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_3

    .line 1619
    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 1622
    :cond_3
    if-eqz v1, :cond_9

    .line 1623
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_7

    .line 1624
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 1625
    :cond_4
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mLandArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "show":Z
    :cond_5
    move v1, v2

    .line 1608
    goto :goto_1

    .line 1613
    .restart local v1    # "show":Z
    :cond_6
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 1614
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 1629
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mLandArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, v0, :cond_8

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 1630
    :cond_8
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedShowButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1634
    :cond_9
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 1593
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1548
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1551
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1553
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setMinimumHeight(I)V

    .line 1556
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1558
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1562
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1563
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1565
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1566
    iget v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mMaxFontScale:F

    iput v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    .line 1568
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mDefaultTextSize:F

    iget v3, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mCurrentFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setTextSize(IF)V

    .line 1572
    :cond_1
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104032a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->setText(Ljava/lang/CharSequence;)V

    .line 1574
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1575
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1597
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1598
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1599
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1600
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1640
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1642
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->changeButtonBackground()V

    .line 1644
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1579
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    :goto_0
    return v1

    .line 1583
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemOverflowText;->playSoundEffect(I)V

    .line 1584
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowText;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method
