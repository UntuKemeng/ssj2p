.class Landroid/widget/FluidScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FluidScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FluidScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FluidScroller;


# direct methods
.method constructor <init>(Landroid/widget/FluidScroller;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/FluidScroller$2;->this$0:Landroid/widget/FluidScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v1, p0, Landroid/widget/FluidScroller$2;->this$0:Landroid/widget/FluidScroller;

    iget-object v0, p0, Landroid/widget/FluidScroller$2;->this$0:Landroid/widget/FluidScroller;

    # getter for: Landroid/widget/FluidScroller;->mShowingPrimary:Z
    invoke-static {v0}, Landroid/widget/FluidScroller;->access$100(Landroid/widget/FluidScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/FluidScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Landroid/widget/FluidScroller;->access$102(Landroid/widget/FluidScroller;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
