.class Landroid/widget/ScrollView$12;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->semEnableGoToTop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 3628
    iput-object p1, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3647
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3639
    :try_start_0
    iget-object v0, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x2

    # setter for: Landroid/widget/ScrollView;->mShowFadeOutGTP:I
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$902(Landroid/widget/ScrollView;I)I

    .line 3640
    iget-object v0, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    # invokes: Landroid/widget/ScrollView;->semSetupGoToTop(I)V
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3643
    :goto_0
    return-void

    .line 3641
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3645
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3632
    :try_start_0
    iget-object v0, p0, Landroid/widget/ScrollView$12;->this$0:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    # setter for: Landroid/widget/ScrollView;->mShowFadeOutGTP:I
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$902(Landroid/widget/ScrollView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3635
    :goto_0
    return-void

    .line 3633
    :catch_0
    move-exception v0

    goto :goto_0
.end method
