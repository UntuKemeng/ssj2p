.class Lcom/android/internal/policy/MultiPhoneWindow$3;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/MultiPhoneWindow;->startRestorePenWindowHeaderAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 0

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 1154
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 1149
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1145
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowHeaderVisibilityDeferred:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    .line 1142
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$3;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mDrawableController:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1143
    return-void
.end method
