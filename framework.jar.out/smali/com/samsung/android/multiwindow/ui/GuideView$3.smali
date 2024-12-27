.class Lcom/samsung/android/multiwindow/ui/GuideView$3;
.super Ljava/lang/Object;
.source "GuideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/ui/GuideView;->animateHeaderRelease(Landroid/view/animation/Animation$AnimationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/multiwindow/ui/GuideView;


# direct methods
.method constructor <init>(Lcom/samsung/android/multiwindow/ui/GuideView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/GuideView$3;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/GuideView$3;->this$0:Lcom/samsung/android/multiwindow/ui/GuideView;

    # getter for: Lcom/samsung/android/multiwindow/ui/GuideView;->mFakeHeaderCueView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->access$100(Lcom/samsung/android/multiwindow/ui/GuideView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
