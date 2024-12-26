.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1036
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1037
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1034
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 1039
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 1040
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 1042
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 1045
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHoverUIFeatureLevel()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 1046
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setHoverPopupType(I)V

    .line 1047
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setLongClickable(Z)V

    .line 1081
    :cond_0
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1107
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 1109
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1085
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    :goto_0
    return v1

    .line 1089
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 1090
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1113
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v3

    .line 1114
    .local v3, "changed":Z
    iget-object v10, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v10}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1131
    :cond_0
    :goto_0
    return v3

    .line 1117
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1118
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1119
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v9

    .line 1121
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    .line 1122
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 1123
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 1124
    .local v7, "offsetX":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 1125
    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .line 1126
    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .line 1127
    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method
