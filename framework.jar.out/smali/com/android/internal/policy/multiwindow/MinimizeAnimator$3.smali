.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->makeMinimizeIconWindow(Landroid/view/View;Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v7, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mReadyToShow:Z
    invoke-static {v0, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$802(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionX:I
    invoke-static {v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconWidth:I
    invoke-static {v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mInitPositionY:I
    invoke-static {v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconHeight:I
    invoke-static {v6}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->setTouchableRegion(Landroid/graphics/Rect;I)V
    invoke-static {v0, v1, v7}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Rect;I)V

    .line 264
    :cond_0
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 254
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 246
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->appMinimizingStarted(Landroid/os/IBinder;)V

    .line 250
    :cond_1
    return-void
.end method
