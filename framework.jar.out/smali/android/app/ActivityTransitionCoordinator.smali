.class abstract Landroid/app/ActivityTransitionCoordinator;
.super Landroid/os/ResultReceiver;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;,
        Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;,
        Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;,
        Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
    }
.end annotation


# static fields
.field protected static final KEY_ELEVATION:Ljava/lang/String; = "shared_element:elevation"

.field protected static final KEY_IMAGE_MATRIX:Ljava/lang/String; = "shared_element:imageMatrix"

.field static final KEY_REMOTE_RECEIVER:Ljava/lang/String; = "android:remoteReceiver"

.field protected static final KEY_SCALE_TYPE:Ljava/lang/String; = "shared_element:scaleType"

.field protected static final KEY_SCREEN_BOTTOM:Ljava/lang/String; = "shared_element:screenBottom"

.field protected static final KEY_SCREEN_LEFT:Ljava/lang/String; = "shared_element:screenLeft"

.field protected static final KEY_SCREEN_RIGHT:Ljava/lang/String; = "shared_element:screenRight"

.field protected static final KEY_SCREEN_TOP:Ljava/lang/String; = "shared_element:screenTop"

.field protected static final KEY_SNAPSHOT:Ljava/lang/String; = "shared_element:bitmap"

.field protected static final KEY_TRANSLATION_Z:Ljava/lang/String; = "shared_element:translationZ"

.field public static final MSG_CANCEL:I = 0x6a

.field public static final MSG_EXIT_TRANSITION_COMPLETE:I = 0x68

.field public static final MSG_HIDE_SHARED_ELEMENTS:I = 0x65

.field public static final MSG_SET_REMOTE_RECEIVER:I = 0x64

.field public static final MSG_SHARED_ELEMENT_DESTINATION:I = 0x6b

.field public static final MSG_START_EXIT_TRANSITION:I = 0x69

.field public static final MSG_TAKE_SHARED_ELEMENTS:I = 0x67

.field private static final SAFE_DEBUG:Z

.field protected static final SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

.field private static final TAG:Ljava/lang/String; = "ActivityTransitionCoordinator"


# instance fields
.field protected final mAllSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

.field private mGhostViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;",
            ">;"
        }
    .end annotation
.end field

.field protected final mIsReturning:Z

.field private mIsStartingTransition:Z

.field protected mListener:Landroid/app/SharedElementCallback;

.field private mOriginalAlphas:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTransition:Ljava/lang/Runnable;

.field protected mResultReceiver:Landroid/os/ResultReceiver;

.field protected final mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementParentMatrices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementTransitionComplete:Z

.field protected final mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsTransitionComplete:Z

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    .line 142
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;
    .param p3, "listener"    # Landroid/app/SharedElementCallback;
    .param p4, "isReturning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/SharedElementCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "allSharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;-><init>(Landroid/app/ActivityTransitionCoordinator$1;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    .line 221
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 222
    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 223
    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    .line 224
    iput-boolean p4, p0, Landroid/app/ActivityTransitionCoordinator;->mIsReturning:Z

    .line 225
    return-void
.end method

.method static synthetic access$102(Landroid/app/ActivityTransitionCoordinator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityTransitionCoordinator;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return p1
.end method

.method static synthetic access$200(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityTransitionCoordinator;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityTransitionCoordinator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    return-object p1
.end method

.method private static getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "transitionArgs"    # Landroid/os/Bundle;

    .prologue
    .line 595
    new-instance v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    invoke-direct {v3}, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;-><init>()V

    .line 596
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    .line 597
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    .line 604
    instance-of v4, p0, Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-object v3

    .line 607
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 608
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 611
    const-string/jumbo v4, "shared_element:scaleType"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 612
    .local v2, "scaleTypeInt":I
    if-ltz v2, :cond_0

    move-object v1, p0

    .line 616
    check-cast v1, Landroid/widget/ImageView;

    .line 617
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 618
    iget-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_0

    .line 619
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v4, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method private getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 527
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    const/4 v0, -0x1

    .line 529
    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_2

    .line 530
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 532
    .local v3, "viewParent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 534
    check-cast v1, Landroid/view/ViewGroup;

    .line 535
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 536
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 544
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_1
    return-void

    .line 527
    .end local v0    # "index":I
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 541
    .restart local v0    # "index":I
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    .line 542
    .local v2, "parentMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method public static isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z
    .locals 3
    .param p0, "viewParent"    # Landroid/view/ViewParent;
    .param p1, "decor"    # Landroid/view/ViewGroup;

    .prologue
    .line 868
    if-eq p0, p1, :cond_0

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 869
    :cond_0
    const/4 v2, 0x0

    .line 890
    :goto_0
    return v2

    :cond_1
    move-object v1, p0

    .line 871
    check-cast v1, Landroid/view/ViewGroup;

    .line 873
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .line 887
    .local v0, "isPenWindow":Z
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 888
    const/4 v2, 0x1

    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 276
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v0, 0x0

    .line 277
    .local v0, "isNested":Z
    :goto_0
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 278
    check-cast v2, Landroid/view/View;

    .line 279
    .local v2, "parentView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    const/4 v0, 0x1

    .line 285
    .end local v2    # "parentView":Landroid/view/View;
    :cond_0
    return v0

    .line 283
    .restart local v2    # "parentView":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 284
    goto :goto_0
.end method

.method protected static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 1
    .param p0, "transition1"    # Landroid/transition/Transition;
    .param p1, "transition2"    # Landroid/transition/Transition;

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 401
    .end local p1    # "transition2":Landroid/transition/Transition;
    :goto_0
    return-object p1

    .line 395
    .restart local p1    # "transition2":Landroid/transition/Transition;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 396
    goto :goto_0

    .line 398
    :cond_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 399
    .local v0, "transitionSet":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 400
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-object p1, v0

    .line 401
    goto :goto_0
.end method

.method private releaseViewRootPauseInput()V
    .locals 5

    .prologue
    .line 704
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 705
    const-string v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseViewRootPauseInput : this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 708
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 710
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 711
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 712
    const-string v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "releaseViewRootPauseInput : call viewRoot.setPausedForTransition(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 717
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    return-void
.end method

.method private static scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I
    .locals 2
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1001
    sget-object v1, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 1005
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1000
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setEpicenter(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    .line 332
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 330
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;->setEpicenter(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected static setOriginalSharedElementState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "sharedElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "originalState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    const/high16 v10, 0x40000000    # 2.0f

    .line 657
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 658
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 659
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    .line 660
    .local v3, "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v6, :cond_0

    move-object v2, v4

    .line 661
    check-cast v2, Landroid/widget/ImageView;

    .line 662
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 663
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_0

    .line 664
    iget-object v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 667
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mElevation:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setElevation(F)V

    .line 668
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTranslationZ:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationZ(F)V

    .line 669
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredWidth:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 671
    .local v5, "widthSpec":I
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mMeasuredHeight:I

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 673
    .local v0, "heightSpec":I
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    .line 674
    iget v6, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mLeft:I

    iget v7, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mTop:I

    iget v8, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mRight:I

    iget v9, v3, Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;->mBottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "heightSpec":I
    .end local v3    # "state":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "widthSpec":I
    :cond_1
    return-void
.end method

.method private setSharedElementMatrices()V
    .locals 7

    .prologue
    .line 503
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 504
    .local v2, "numSharedElements":I
    if-lez v2, :cond_0

    .line 505
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 507
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 508
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 511
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 512
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 513
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 514
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 515
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 516
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    add-int/lit8 v0, v0, -0x1

    .line 521
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 524
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V
    .locals 26
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempRect"    # Landroid/graphics/RectF;
    .param p6, "decorLoc"    # [I

    .prologue
    .line 429
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 430
    .local v16, "sharedElementBundle":Landroid/os/Bundle;
    if-nez v16, :cond_0

    .line 500
    :goto_0
    return-void

    .line 434
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 435
    const-string/jumbo v24, "shared_element:scaleType"

    const/16 v25, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 436
    .local v15, "scaleTypeInt":I
    if-ltz v15, :cond_1

    move-object/from16 v9, p1

    .line 437
    check-cast v9, Landroid/widget/ImageView;

    .line 438
    .local v9, "imageView":Landroid/widget/ImageView;
    sget-object v24, Landroid/app/ActivityTransitionCoordinator;->SCALE_TYPE_VALUES:[Landroid/widget/ImageView$ScaleType;

    aget-object v14, v24, v15

    .line 439
    .local v14, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 440
    sget-object v24, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    if-ne v14, v0, :cond_1

    .line 441
    const-string/jumbo v24, "shared_element:imageMatrix"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v12

    .line 442
    .local v12, "matrixValues":[F
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->setValues([F)V

    .line 443
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 448
    .end local v9    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "matrixValues":[F
    .end local v14    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .end local v15    # "scaleTypeInt":I
    :cond_1
    const-string/jumbo v24, "shared_element:translationZ"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v23

    .line 449
    .local v23, "z":F
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 450
    const-string/jumbo v24, "shared_element:elevation"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 451
    .local v6, "elevation":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    .line 453
    const-string/jumbo v24, "shared_element:screenLeft"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 454
    .local v10, "left":F
    const-string/jumbo v24, "shared_element:screenTop"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v17

    .line 455
    .local v17, "top":F
    const-string/jumbo v24, "shared_element:screenRight"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    .line 456
    .local v13, "right":F
    const-string/jumbo v24, "shared_element:screenBottom"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 458
    .local v5, "bottom":F
    if-eqz p6, :cond_2

    .line 459
    const/16 v24, 0x0

    aget v24, p6, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v10, v24

    .line 460
    const/16 v24, 0x1

    aget v24, p6, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v17, v17, v24

    .line 461
    const/16 v24, 0x0

    aget v24, p6, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v13, v13, v24

    .line 462
    const/16 v24, 0x1

    aget v24, p6, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v5, v5, v24

    .line 491
    :goto_1
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 492
    .local v21, "x":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 493
    .local v22, "y":I
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v24

    sub-int v19, v24, v21

    .line 494
    .local v19, "width":I
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v24

    sub-int v7, v24, v22

    .line 495
    .local v7, "height":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 496
    .local v20, "widthSpec":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 497
    .local v8, "heightSpec":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 499
    add-int v24, v21, v19

    add-int v25, v22, v7

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 465
    .end local v7    # "height":I
    .end local v8    # "heightSpec":I
    .end local v19    # "width":I
    .end local v20    # "widthSpec":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityTransitionCoordinator;->getSharedElementParentMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 466
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 467
    invoke-virtual/range {p4 .. p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 469
    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/RectF;->left:F

    .line 470
    .local v11, "leftInParent":F
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    .line 473
    .local v18, "topInParent":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 474
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v19

    .line 475
    .local v19, "width":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 478
    .local v7, "height":F
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 479
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 480
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 481
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 482
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 485
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    sub-float v10, v11, v24

    .line 486
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    sub-float v17, v18, v24

    .line 487
    add-float v13, v10, v19

    .line 488
    add-float v5, v17, v7

    goto/16 :goto_1
.end method

.method private setSharedElements(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x1

    .line 254
    .local v1, "isFirstRun":Z
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 255
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 256
    .local v3, "numSharedElements":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 257
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 258
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 259
    .local v2, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v2, :cond_2

    .line 260
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 256
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 261
    :cond_2
    invoke-static {v4, p1}, Landroid/app/ActivityTransitionCoordinator;->isNested(Landroid/view/View;Landroid/util/ArrayMap;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 262
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    .line 267
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    .line 268
    goto :goto_0

    .line 269
    .end local v0    # "i":I
    .end local v3    # "numSharedElements":I
    :cond_4
    return-void
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "setTransitionAlpha"    # Z

    .prologue
    .line 742
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 743
    .local v0, "alpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 746
    :cond_0
    if-eqz p2, :cond_1

    .line 747
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 749
    :cond_1
    return-void
.end method

.method private startInputWhenTransitionsComplete()V
    .locals 5

    .prologue
    .line 957
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 958
    const-string v2, "ActivityTransitionCoordinator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputWhenTransitionsComplete : this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    if-eqz v2, :cond_3

    .line 961
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 962
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 964
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 965
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 966
    const-string v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "startInputWhenTransitionsComplete : call viewRoot.setPausedForTransition(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 973
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->onTransitionsComplete()V

    .line 975
    .end local v0    # "decor":Landroid/view/View;
    :cond_3
    return-void

    .line 970
    .restart local v0    # "decor":Landroid/view/View;
    :cond_4
    sget-boolean v2, Landroid/app/ActivityTransitionCoordinator;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    .line 971
    const-string v2, "ActivityTransitionCoordinator"

    const-string/jumbo v3, "startInputWhenTransitionsComplete : decor is null.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected cancelPendingTransitions()Z
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 819
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    return v0
.end method

.method protected captureSharedElementState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 679
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 681
    .local v5, "tempBounds":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 682
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 684
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "name":Ljava/lang/String;
    move-object v0, p0

    .line 685
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 682
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 687
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method protected captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transitionArgs"    # Landroid/os/Bundle;
    .param p4, "tempMatrix"    # Landroid/graphics/Matrix;
    .param p5, "tempBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    .line 763
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 764
    .local v4, "sharedElementBundle":Landroid/os/Bundle;
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 765
    invoke-virtual {p1, p4}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p5, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 767
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 769
    const-string/jumbo v5, "shared_element:screenLeft"

    iget v6, p5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 770
    const-string/jumbo v5, "shared_element:screenRight"

    iget v6, p5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 771
    const-string/jumbo v5, "shared_element:screenTop"

    iget v6, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 772
    const-string/jumbo v5, "shared_element:screenBottom"

    iget v6, p5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 773
    const-string/jumbo v5, "shared_element:translationZ"

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 774
    const-string/jumbo v5, "shared_element:elevation"

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "bitmap":Landroid/os/Parcelable;
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v5, :cond_0

    .line 778
    iget-object v5, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v5, p1, p4, p5}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    .line 781
    :cond_0
    if-eqz v0, :cond_1

    .line 782
    const-string/jumbo v5, "shared_element:bitmap"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 785
    :cond_1
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 786
    check-cast v1, Landroid/widget/ImageView;

    .line 787
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ActivityTransitionCoordinator;->scaleTypeToInt(Landroid/widget/ImageView$ScaleType;)I

    move-result v3

    .line 788
    .local v3, "scaleTypeInt":I
    const-string/jumbo v5, "shared_element:scaleType"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 790
    const/16 v5, 0x9

    new-array v2, v5, [F

    .line 791
    .local v2, "matrix":[F
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 792
    const-string/jumbo v5, "shared_element:imageMatrix"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 796
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "matrix":[F
    .end local v3    # "scaleTypeInt":I
    :cond_2
    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 797
    return-void
.end method

.method protected clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->releaseViewRootPauseInput()V

    .line 693
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    .line 694
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 695
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    .line 696
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 697
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 698
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 699
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    .line 700
    iput-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    .line 701
    return-void
.end method

.method protected configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "includeTransitioningViews"    # Z

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p1

    .line 386
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mEpicenterCallback:Landroid/app/ActivityTransitionCoordinator$FixedEpicenterCallback;

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 387
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityTransitionCoordinator;->setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object p1

    .line 389
    :cond_0
    return-object p1
.end method

.method public copyMappedViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    .local p2, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    .line 626
    .local v10, "numSharedElements":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .local v13, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v10, :cond_1

    .line 652
    :cond_0
    return-object v13

    .line 630
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 631
    .local v7, "context":Landroid/content/Context;
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 632
    .local v6, "decorLoc":[I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v8

    .line 633
    .local v8, "decorView":Landroid/view/ViewGroup;
    if-eqz v8, :cond_2

    .line 634
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 636
    :cond_2
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 637
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 638
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 639
    .local v12, "sharedElementBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 640
    .local v1, "snapshot":Landroid/view/View;
    if-eqz v12, :cond_4

    .line 641
    const-string/jumbo v0, "shared_element:bitmap"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 642
    .local v11, "parcelable":Landroid/os/Parcelable;
    if-eqz v11, :cond_3

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_3

    .line 643
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, v7, v11}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v1

    .line 645
    :cond_3
    if-eqz v1, :cond_4

    .line 646
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 650
    .end local v11    # "parcelable":Landroid/os/Parcelable;
    :cond_4
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAcceptedNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDecor()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected getFadeDuration()J
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMappedNames()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 341
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-object v1
.end method

.method protected abstract getViewsTransition()Landroid/transition/Transition;
.end method

.method protected getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected hideViews(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 725
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 726
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 727
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 728
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mOriginalAlphas:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected isViewsTransitionComplete()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    return v0
.end method

.method protected mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "accepted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "localViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 408
    .local v2, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p1, :cond_0

    .line 409
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 410
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 414
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findNamedViews(Ljava/util/Map;)V

    .line 418
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_1
    return-object v2
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method protected moveSharedElementsFromOverlay()V
    .locals 9

    .prologue
    .line 896
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 897
    .local v4, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 898
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    .line 899
    .local v3, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v3}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 900
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v3    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    .end local v6    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 904
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v8

    if-nez v8, :cond_2

    .line 916
    :cond_1
    return-void

    .line 907
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    .line 908
    .local v1, "decor":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v5

    .line 910
    .local v5, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 911
    .local v0, "count":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 912
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 913
    .local v7, "sharedElement":Landroid/view/View;
    invoke-static {v7}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected moveSharedElementsToOverlay()V
    .locals 9

    .prologue
    .line 823
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getSharedElementsUseOverlay()Z

    move-result v8

    if-nez v8, :cond_1

    .line 861
    :cond_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementMatrices()V

    .line 827
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 828
    .local v4, "numSharedElements":I
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 829
    .local v0, "decor":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->moveSharedElementWithParent()Z

    move-result v3

    .line 846
    .local v3, "moveWithParent":Z
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 847
    .local v6, "tempMatrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 848
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 849
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 850
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementParentMatrices:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Matrix;

    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 851
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 852
    invoke-static {v7, v0, v6}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    .line 853
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 854
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    invoke-static {v5, v0}, Landroid/app/ActivityTransitionCoordinator;->isInTransitionGroup(Landroid/view/ViewParent;Landroid/view/ViewGroup;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 855
    new-instance v2, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;

    invoke-direct {v2, v7, v5, v0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 856
    .local v2, "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 857
    iget-object v8, p0, Landroid/app/ActivityTransitionCoordinator;->mGhostViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .end local v2    # "listener":Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected notifySharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 574
    :cond_0
    return-void
.end method

.method protected onTransitionsComplete()V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method protected pauseInput()V
    .locals 3

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 979
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 980
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_0
    if-eqz v1, :cond_0

    .line 981
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setPausedForTransition(Z)V

    .line 983
    :cond_0
    return-void

    .line 979
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_0
.end method

.method protected scheduleGhostVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 930
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/app/ActivityTransitionCoordinator$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$2;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 941
    :cond_0
    return-void
.end method

.method protected scheduleSetSharedElementEnd(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 578
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/app/ActivityTransitionCoordinator$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/app/ActivityTransitionCoordinator$1;-><init>(Landroid/app/ActivityTransitionCoordinator;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 590
    :cond_0
    return-void
.end method

.method protected setEpicenter()V
    .locals 5

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "epicenter":Landroid/view/View;
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 317
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 318
    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "epicenter":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 321
    .end local v1    # "index":I
    .restart local v0    # "epicenter":Landroid/view/View;
    :cond_0
    invoke-direct {p0, v0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method protected setGhostVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 919
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 920
    .local v2, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 921
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    .line 922
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0, p1}, Landroid/view/GhostView;->setVisibility(I)V

    .line 920
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 926
    .end local v0    # "ghostView":Landroid/view/GhostView;
    :cond_1
    return-void
.end method

.method protected setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 422
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 423
    return-void
.end method

.method protected setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "sharedElementState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    .local p2, "snapshots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v9, "originalImageState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;>;"
    if-eqz p1, :cond_0

    .line 551
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 552
    .local v4, "tempMatrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 553
    .local v5, "tempRect":Landroid/graphics/RectF;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 554
    .local v8, "numSharedElements":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 555
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 556
    .local v1, "sharedElement":Landroid/view/View;
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 557
    .local v2, "name":Ljava/lang/String;
    invoke-static {v1, v2, p1}, Landroid/app/ActivityTransitionCoordinator;->getOldSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;

    move-result-object v10

    .line 559
    .local v10, "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityTransitionCoordinator;->setSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;[I)V

    .line 554
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "tempMatrix":Landroid/graphics/Matrix;
    .end local v5    # "tempRect":Landroid/graphics/RectF;
    .end local v7    # "i":I
    .end local v8    # "numSharedElements":I
    .end local v10    # "originalState":Landroid/app/ActivityTransitionCoordinator$SharedElementOriginalState;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6, p2}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 567
    :cond_1
    return-object v9
.end method

.method protected setTargets(Landroid/transition/Transition;Z)Landroid/transition/Transition;
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "add"    # Z

    .prologue
    .line 353
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    :cond_0
    const/4 v1, 0x0

    .line 379
    :cond_1
    :goto_0
    return-object v1

    .line 359
    :cond_2
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 360
    .local v1, "set":Landroid/transition/TransitionSet;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 361
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 362
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 363
    .local v2, "view":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 364
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    .line 361
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 366
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    goto :goto_2

    .line 372
    .end local v0    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {v1, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 374
    if-nez p2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 376
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    goto :goto_0
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElementTransitionComplete:Z

    .line 954
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 955
    return-void
.end method

.method protected showViews(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "setTransitionAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 736
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 737
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method protected startTransition(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 801
    iget-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    if-eqz v0, :cond_0

    .line 802
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator;->mPendingTransition:Ljava/lang/Runnable;

    .line 807
    :goto_0
    return-void

    .line 804
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 805
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected stripOffscreenViews()V
    .locals 4

    .prologue
    .line 289
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 300
    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 294
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 295
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 296
    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/app/ActivityTransitionCoordinator;->showView(Landroid/view/View;Z)V

    .line 293
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected transitionStarted()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mIsStartingTransition:Z

    .line 811
    return-void
.end method

.method protected viewsReady(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "sharedElements":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/ActivityTransitionCoordinator;->setSharedElements(Landroid/util/ArrayMap;)V

    .line 233
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 235
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->captureTransitioningViews(Ljava/util/List;)V

    .line 238
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 240
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator;->setEpicenter()V

    .line 241
    return-void
.end method

.method protected viewsTransitionComplete()V
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionCoordinator;->mViewsTransitionComplete:Z

    .line 949
    invoke-direct {p0}, Landroid/app/ActivityTransitionCoordinator;->startInputWhenTransitionsComplete()V

    .line 950
    return-void
.end method
