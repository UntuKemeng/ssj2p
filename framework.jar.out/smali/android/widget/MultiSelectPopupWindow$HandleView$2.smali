.class Landroid/widget/MultiSelectPopupWindow$HandleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$HandleView;->magnifyHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

.field final synthetic val$drawableTargetHeight:I

.field final synthetic val$drawableTargetWidth:I


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$HandleView;II)V
    .locals 0

    .prologue
    .line 1511
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetWidth:I

    iput p3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1513
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v6}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v2

    .line 1514
    .local v2, "left":I
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v7, v7, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v6, v7, :cond_0

    move v1, v4

    .line 1515
    .local v1, "isRtl":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v7, v7, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    .line 1516
    .local v0, "hotspot":I
    const/4 v3, 0x0

    .line 1518
    .local v3, "offset":I
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    if-ne v6, v4, :cond_1

    :goto_1
    if-ne v1, v4, :cond_2

    .line 1519
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetWidth:I

    div-int/lit8 v3, v4, 0x4

    .line 1523
    :goto_2
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v4, v4, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v6, v3, v0

    sub-int v6, v2, v6

    sub-int v7, v3, v0

    sub-int v7, v2, v7

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetHeight:I

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1524
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v4, v4, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1525
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->invalidate()V

    .line 1526
    return-void

    .end local v0    # "hotspot":I
    .end local v1    # "isRtl":Z
    .end local v3    # "offset":I
    :cond_0
    move v1, v5

    .line 1514
    goto :goto_0

    .restart local v0    # "hotspot":I
    .restart local v1    # "isRtl":Z
    .restart local v3    # "offset":I
    :cond_1
    move v4, v5

    .line 1518
    goto :goto_1

    .line 1521
    :cond_2
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$2;->val$drawableTargetWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v3, v4, 0x4

    goto :goto_2
.end method
