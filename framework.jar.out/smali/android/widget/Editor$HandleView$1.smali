.class Landroid/widget/Editor$HandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->magnifyHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0

    .prologue
    .line 4521
    iput-object p1, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v7, 0x0

    .line 4526
    const-string/jumbo v6, "width"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4527
    .local v5, "width":I
    const-string v6, "height"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4529
    .local v0, "height":I
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    .line 4530
    .local v3, "left":I
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, v6, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4531
    .local v2, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v9, v6, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, v6, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v10, v10, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v6, v10, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v8, v9, v6}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    .line 4532
    .local v1, "hotspot":I
    const/4 v4, 0x0

    .line 4533
    .local v4, "offset":I
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget v6, v6, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v6, :pswitch_data_0

    .line 4544
    :goto_1
    :pswitch_0
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, v6, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v8, v4, v1

    sub-int v8, v3, v8

    sub-int v9, v4, v1

    sub-int v9, v3, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v8, v7, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4545
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v6, v6, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4546
    iget-object v6, p0, Landroid/widget/Editor$HandleView$1;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 4547
    return-void

    .end local v1    # "hotspot":I
    .end local v4    # "offset":I
    :cond_0
    move v6, v7

    .line 4531
    goto :goto_0

    .line 4535
    .restart local v1    # "hotspot":I
    .restart local v4    # "offset":I
    :pswitch_1
    div-int/lit8 v4, v5, 0x4

    .line 4536
    goto :goto_1

    .line 4538
    :pswitch_2
    div-int/lit8 v4, v5, 0x2

    .line 4539
    goto :goto_1

    .line 4541
    :pswitch_3
    mul-int/lit8 v6, v5, 0x3

    div-int/lit8 v4, v6, 0x4

    goto :goto_1

    .line 4533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
