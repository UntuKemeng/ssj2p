.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mLastTranslucents:[J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private mPendingShows:[Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private mStates:[I

.field private final mStatusBarManagerId:I

.field protected mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private mTransientBarStates:[I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWins:[Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    const/4 v1, 0x4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 73
    new-array v0, v1, [Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mWins:[Landroid/view/WindowManagerPolicy$WindowState;

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStates:[I

    .line 75
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTransientBarStates:[I

    .line 76
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mPendingShows:[Z

    .line 77
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucents:[J

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 84
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 85
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 86
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 87
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    .line 390
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I

    move-result v0

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I
    .locals 7
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z
    .param p5, "displayId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    iget v1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 400
    .local v1, "mState":I
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 402
    .local v2, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 403
    .local v0, "anim":Z
    if-ne v1, v5, :cond_1

    if-nez p4, :cond_1

    if-nez v2, :cond_1

    move v1, v3

    .line 415
    .end local v0    # "anim":Z
    .end local v1    # "mState":I
    .end local v2    # "vis":Z
    :cond_0
    :goto_0
    return v1

    .line 405
    .restart local v0    # "anim":Z
    .restart local v1    # "mState":I
    .restart local v2    # "vis":Z
    :cond_1
    if-ne v1, v3, :cond_2

    if-eqz v2, :cond_2

    move v1, v4

    .line 406
    goto :goto_0

    .line 407
    :cond_2
    if-eqz p4, :cond_0

    .line 408
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    move v1, v5

    .line 409
    goto :goto_0

    :cond_3
    move v1, v4

    .line 411
    goto :goto_0
.end method

.method private setTransientBarState(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v2, 0x2

    .line 612
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 613
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 617
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_2

    if-eq p1, v0, :cond_2

    .line 618
    if-eq v0, v2, :cond_0

    if-ne p1, v2, :cond_1

    .line 624
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 635
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 638
    sget-boolean v2, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTransientBarState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 653
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 656
    :goto_0
    return-object v0

    .line 654
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_0

    .line 656
    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_0

    .line 657
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/BarController;->updateStateLw(II)Z

    move-result v0

    return v0
.end method

.method private updateStateLw(II)Z
    .locals 4
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 427
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 431
    .local v0, "mState":I
    if-eq p1, v0, :cond_1

    .line 437
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 441
    sget-boolean v1, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/BarController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    const/4 v1, 0x1

    .line 466
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 1
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(III)V

    .line 240
    return-void
.end method

.method public adjustSystemUiVisibilityLw(III)V
    .locals 4
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I
    .param p3, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    .line 248
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 249
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 253
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const/4 v2, 0x3

    invoke-direct {p0, v2, p3}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZI)Z

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 260
    invoke-virtual {p0, v3, v3, p3}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZI)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I

    move-result v0

    return v0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I
    .param p4, "displayId"    # I

    .prologue
    const v5, 0x8000

    const v4, -0x8001

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 277
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1

    .line 278
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_4

    .line 280
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 281
    .local v0, "fl":I
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    .line 282
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v2

    .line 286
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_0

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_3

    .line 291
    :cond_0
    or-int/2addr p2, v5

    .line 300
    .end local v0    # "fl":I
    :cond_1
    :goto_1
    return p2

    .line 284
    .restart local v0    # "fl":I
    :cond_2
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p2, v2

    goto :goto_0

    .line 293
    :cond_3
    and-int/2addr p2, v4

    goto :goto_1

    .line 296
    .end local v0    # "fl":I
    :cond_4
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    iget v3, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p3

    or-int p2, v2, v3

    .line 297
    and-int v2, p2, v4

    and-int v3, p3, v5

    or-int p2, v2, v3

    goto :goto_1
.end method

.method public checkHiddenLw()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->checkHiddenLw(I)Z

    move-result v0

    return v0
.end method

.method public checkHiddenLw(I)Z
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 483
    .local v2, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 484
    .local v1, "mTransientBarState":I
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 487
    .local v0, "mPendingShow":Z
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 488
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_0

    .line 489
    const/4 v5, 0x2

    invoke-direct {p0, v5, p1}, Lcom/android/server/policy/BarController;->updateStateLw(II)Z

    .line 491
    :cond_0
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_2

    .line 493
    invoke-direct {p0, v4, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 494
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p0, v3, v3, p1}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZI)Z

    .line 501
    iput-boolean v4, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 508
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public checkShowTransientBarLw()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw(I)Z

    move-result v0

    return v0
.end method

.method public checkShowTransientBarLw(I)Z
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 523
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 527
    .local v0, "mTransientBarState":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 528
    sget-boolean v3, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already shown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 530
    :cond_1
    if-ne v0, v3, :cond_2

    .line 531
    sget-boolean v3, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already requested"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_2
    if-nez v1, :cond_3

    .line 534
    sget-boolean v3, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 536
    :cond_3
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    sget-boolean v3, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar already visible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v2, v3

    .line 540
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 675
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 678
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 680
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method

.method protected getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 645
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideTransient()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->hideTransient(I)V

    .line 144
    return-void
.end method

.method public hideTransient(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 154
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 155
    return-void
.end method

.method public isTransientHiding()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->isTransientHiding(I)Z

    move-result v0

    return v0
.end method

.method public isTransientHiding(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 215
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowRequested()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->isTransientShowRequested(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowRequested(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->isTransientShowing(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowing(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 184
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetTransient()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->resetTransient(I)V

    .line 161
    return-void
.end method

.method public resetTransient(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 171
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 172
    return-void
.end method

.method public setBarShowingLw(Z)Z
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZ)Z
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZI)Z
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z
    .param p3, "displayId"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZIZ)Z
    .locals 14
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z
    .param p3, "displayId"    # I
    .param p4, "collapse"    # Z

    .prologue
    .line 327
    iget-object v4, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 328
    .local v4, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v9, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 329
    .local v9, "mState":I
    iget v10, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 333
    .local v10, "mTransientBarState":I
    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 385
    :goto_0
    return v1

    .line 335
    :cond_0
    if-nez p4, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/4 v1, 0x3

    if-ne v10, v1, :cond_3

    .line 341
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 345
    const/4 v1, 0x0

    goto :goto_0

    .line 341
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 348
    :cond_3
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 349
    .local v2, "wasVis":Z
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 353
    .local v3, "wasAnim":Z
    instance-of v1, p0, Lcom/android/server/policy/StatusBarController;

    if-eqz v1, :cond_5

    .line 354
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 355
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_5

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v1, v6

    if-nez v1, :cond_5

    .line 358
    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    if-nez v10, :cond_5

    if-nez v9, :cond_5

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v13

    .line 362
    .local v13, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v13, :cond_5

    invoke-interface {v13}, Lcom/android/internal/statusbar/IStatusBarService;->getQuickSettingPanelExpandState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    if-eqz p4, :cond_4

    .line 364
    invoke-interface {v13}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V

    .line 368
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 366
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 370
    .end local v13    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v7

    .line 371
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 379
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    .line 382
    .local v5, "change":Z
    :goto_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    move-object v1, p0

    move/from16 v6, p3

    .line 383
    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I

    move-result v11

    .line 384
    .local v11, "state":I
    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/server/policy/BarController;->updateStateLw(II)Z

    move-result v12

    .line 385
    .local v12, "stateChanged":Z
    if-nez v5, :cond_6

    if-eqz v12, :cond_9

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    .end local v5    # "change":Z
    .end local v11    # "state":I
    .end local v12    # "stateChanged":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    move/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    goto :goto_4

    .line 385
    .restart local v5    # "change":Z
    .restart local v11    # "state":I
    .restart local v12    # "stateChanged":Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 120
    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 101
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "displayId"    # I

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 112
    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->showTransient(I)V

    .line 125
    return-void
.end method

.method public showTransient(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 136
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .locals 1
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZIII)I

    move-result v0

    return v0
.end method

.method public updateVisibilityLw(ZIII)I
    .locals 6
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 555
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 556
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 560
    .local v0, "mTransientBarState":I
    if-nez v1, :cond_0

    move v2, p3

    .line 600
    .end local p3    # "vis":I
    .local v2, "vis":I
    :goto_0
    return v2

    .line 561
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/policy/BarController;->isTransientShowing(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p4}, Lcom/android/server/policy/BarController;->isTransientShowRequested(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 563
    :cond_1
    if-eqz p1, :cond_8

    .line 564
    iget v3, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v3

    .line 565
    iget v3, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_2

    .line 566
    iget v3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v3

    .line 568
    :cond_2
    const/4 v3, 0x2

    invoke-direct {p0, v3, p4}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    .line 577
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v3, :cond_4

    .line 578
    const v3, 0x8000

    or-int/2addr p3, v3

    .line 579
    iget-boolean v3, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v3, :cond_4

    .line 580
    iget v3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v3

    .line 581
    iput-boolean v4, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 584
    :cond_4
    if-eqz v0, :cond_5

    .line 585
    iget v3, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v3

    .line 586
    and-int/lit8 p3, p3, -0x2

    .line 588
    :cond_5
    iget v3, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_6

    or-int v3, p3, p2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7

    .line 595
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_7
    move v2, p3

    .line 600
    .end local p3    # "vis":I
    .restart local v2    # "vis":I
    goto :goto_0

    .line 570
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_8
    invoke-direct {p0, v4, p4}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    goto :goto_1

    .line 573
    :cond_9
    if-nez p1, :cond_3

    invoke-virtual {p0, p4}, Lcom/android/server/policy/BarController;->isTransientHiding(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 574
    invoke-direct {p0, v4, p4}, Lcom/android/server/policy/BarController;->setTransientBarState(II)V

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent(I)Z

    move-result v0

    return v0
.end method

.method public wasRecentlyTranslucent(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
