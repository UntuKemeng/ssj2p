.class Landroid/widget/MultiSelectPopupWindow$HandleView$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "width"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "width":I
    const-string v6, "height"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "height":I
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v6}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v3

    .local v3, "left":I
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v9, v9, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v6, v9, :cond_0

    move v2, v7

    .local v2, "isRtl":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v9, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v9, v9, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    .local v1, "hotspot":I
    const/4 v4, 0x0

    .local v4, "offset":I
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    if-ne v6, v7, :cond_1

    :goto_1
    if-ne v2, v7, :cond_2

    div-int/lit8 v4, v5, 0x4

    :goto_2
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v7, v4, v1

    sub-int v7, v3, v7

    sub-int v9, v4, v1

    sub-int v9, v3, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v6, v6, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v6}, Landroid/widget/MultiSelectPopupWindow$HandleView;->invalidate()V

    return-void

    .end local v1    # "hotspot":I
    .end local v2    # "isRtl":Z
    .end local v4    # "offset":I
    :cond_0
    move v2, v8

    goto :goto_0

    .restart local v1    # "hotspot":I
    .restart local v2    # "isRtl":Z
    .restart local v4    # "offset":I
    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v4, v6, 0x4

    goto :goto_2
.end method
