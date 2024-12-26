.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private final GTP_STATE_NONE:I

.field private final GTP_STATE_PRESSED:I

.field private final GTP_STATE_SHOWN:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:F

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mAutoscrollDuration:F

.field private mAutoscrollDurationGap:F

.field private mCanScroll:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsFirstScrollview:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollBarState:Z

.field private mLastScrollY:I

.field private mLinear:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mRequestedChildRect:Landroid/graphics/Rect;

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemEnableGoToTop:Z

.field private mSemFollow2016A:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutStart:Z

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemIsGoToTopShown:Z

.field private mSemScrollChnages:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSipDelta:I

.field private mSipResizeAnimationRunning:Z

.field private mSizeChange:Z

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 361
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 364
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 127
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 138
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 152
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 170
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 174
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 185
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 187
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 188
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 189
    iput v3, p0, Landroid/widget/ScrollView;->GTP_STATE_NONE:I

    .line 190
    iput v2, p0, Landroid/widget/ScrollView;->GTP_STATE_SHOWN:I

    .line 191
    iput v5, p0, Landroid/widget/ScrollView;->GTP_STATE_PRESSED:I

    .line 192
    iput v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 193
    iput v3, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 194
    iput v3, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 195
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    .line 196
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 197
    iput v3, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 198
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 204
    iput v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 221
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 222
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 254
    iput v3, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 256
    iput v3, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 262
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 264
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 266
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 268
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 270
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 272
    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 277
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 279
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 281
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 293
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 298
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 303
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 313
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 315
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    .line 317
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 321
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_FLING:I

    .line 323
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:F

    .line 324
    const v1, 0x4188cccd    # 17.1f

    iput v1, p0, Landroid/widget/ScrollView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:F

    .line 325
    const v1, 0x3f96c8b4    # 1.178f

    iput v1, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 328
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    .line 329
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 330
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    .line 331
    iput v3, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 3011
    iput v3, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3201
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3202
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3206
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    .line 3209
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutStart:Z

    .line 3210
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mSemIsGoToTopShown:Z

    .line 3211
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 3213
    new-instance v1, Landroid/widget/ScrollView$2;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$2;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 3219
    new-instance v1, Landroid/widget/ScrollView$3;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$3;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 3225
    new-instance v1, Landroid/widget/ScrollView$4;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$4;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 3233
    new-instance v1, Landroid/widget/ScrollView$5;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$5;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 3239
    new-instance v1, Landroid/widget/ScrollView$6;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$6;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 3245
    iput v8, p0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3246
    iput v3, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3247
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 373
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 375
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 380
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move v1, v3

    .line 195
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/ScrollView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ScrollView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/ScrollView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/ScrollView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/ScrollView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    return p1
.end method

.method private autoScrollWithDuration(F)V
    .locals 4
    .param p1, "duration"    # F

    .prologue
    .line 1757
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 1758
    .local v0, "tempdur":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1759
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoScrollWithDuration() duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1766
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 490
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 492
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 496
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 499
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 501
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2898
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2914
    :cond_0
    const/4 p0, 0x0

    .line 2924
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2916
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2922
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 3547
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 3548
    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3549
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 2

    .prologue
    .line 3542
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .line 3543
    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 3544
    return-void
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 2096
    if-eqz p1, :cond_0

    .line 2097
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v0, :cond_1

    .line 2098
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2866
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2867
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2869
    .local v0, "restoreCount":I
    const/4 v3, 0x0

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2870
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isTwShowingScrollbar()Z

    move-result v2

    .line 2872
    .local v2, "scrollbarState":Z
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    if-eq v3, v2, :cond_2

    .line 2873
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    if-eqz v3, :cond_1

    .line 2874
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2877
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mLastScrollBarState:Z

    .line 2879
    :cond_2
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 2880
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2881
    iget v3, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 2882
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2883
    iput v5, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2892
    :cond_3
    :goto_0
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2893
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2895
    return-void

    .line 2887
    :cond_4
    iget v3, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v3, :cond_3

    .line 2889
    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3482
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_5

    .line 3483
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3484
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3485
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3487
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v3, :cond_4

    .line 3488
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 3489
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3490
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3491
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    .line 3493
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3498
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3500
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 3501
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3515
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .line 3494
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v6, :cond_2

    .line 3495
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3502
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-ne v2, v3, :cond_3

    .line 3503
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 3504
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3505
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3506
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    .line 3507
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3508
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeOutSet:Z

    .line 3510
    :cond_6
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3511
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3512
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 2693
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2695
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2697
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2698
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2699
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2702
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2703
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2704
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2706
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1833
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1834
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1843
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1845
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1846
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1847
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1848
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1849
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1851
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1857
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1860
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1862
    move-object v1, v5

    .line 1863
    move v3, v8

    .line 1846
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1857
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1865
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1870
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1871
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1877
    move-object v1, v5

    goto :goto_2

    .line 1865
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1880
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1882
    move-object v1, v5

    .line 1883
    const/4 v3, 0x1

    goto :goto_2

    .line 1884
    :cond_7
    if-eqz v7, :cond_0

    .line 1889
    move-object v1, v5

    goto :goto_2

    .line 1896
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2682
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2684
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2685
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 2686
    if-eqz v0, :cond_2

    .line 2687
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2690
    :cond_2
    return-void

    .line 2682
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flingWithoutAcc(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2665
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flingWithoutAcc() velocityY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2667
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v13, v0, v1

    .line 2668
    .local v13, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 2670
    .local v12, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v12, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v13, 0x2

    const/4 v11, 0x1

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIIIZ)V

    .line 2673
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2674
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2677
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2679
    .end local v12    # "bottom":I
    .end local v13    # "height":I
    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1807
    const/4 v1, 0x0

    .line 1808
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1809
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1810
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1813
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3030
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 3173
    :cond_0
    :goto_0
    return-void

    .line 3032
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 3033
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 3036
    :pswitch_1
    const/4 v2, 0x0

    .line 3037
    .local v2, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 3039
    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 3040
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 3042
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 3045
    const/4 v7, 0x1

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3048
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 3049
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3056
    :cond_1
    :goto_1
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 3057
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, -0x1

    .line 3066
    :goto_2
    if-gez v2, :cond_5

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v7, :cond_5

    .line 3069
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3070
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3050
    :cond_2
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 3051
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3052
    :cond_3
    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 3053
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 3059
    :cond_4
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v7, 0x1

    goto :goto_2

    .line 3071
    :cond_5
    if-lez v2, :cond_6

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v4, :cond_6

    .line 3074
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3075
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3078
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3079
    .local v3, "overscrollMode":I
    if-eqz v3, :cond_7

    const/4 v7, 0x1

    if-ne v3, v7, :cond_c

    if-lez v4, :cond_c

    :cond_7
    const/4 v0, 0x1

    .line 3082
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_b

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_b

    .line 3083
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    .line 3084
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    .line 3085
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3086
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3087
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3088
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3089
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3102
    .end local v6    # "width":I
    :cond_8
    :goto_4
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3103
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3105
    :cond_a
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3108
    :cond_b
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3109
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3079
    .end local v0    # "canOverscroll":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 3091
    .restart local v0    # "canOverscroll":Z
    :cond_d
    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 3092
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3093
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3094
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3095
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 3096
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 3097
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3098
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 3115
    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    .end local v6    # "width":I
    :pswitch_2
    const/4 v7, 0x1

    const v8, 0x453b8000    # 3000.0f

    iget-object v9, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 3118
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    neg-int v1, v7

    .line 3119
    .local v1, "distanceToMove":I
    :goto_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 3121
    .local v5, "scrollaleRange":I
    if-gez v1, :cond_e

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v7, :cond_f

    :cond_e
    if-lez v1, :cond_11

    iget v7, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v7, v5, :cond_11

    .line 3124
    :cond_f
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->flingWithoutAcc(I)V

    .line 3125
    iget-object v7, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3118
    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_5

    .line 3128
    .restart local v1    # "distanceToMove":I
    .restart local v5    # "scrollaleRange":I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 3129
    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_12

    const/4 v7, 0x1

    if-ne v3, v7, :cond_17

    if-lez v5, :cond_17

    :cond_12
    const/4 v0, 0x1

    .line 3132
    .restart local v0    # "canOverscroll":Z
    :goto_6
    if-eqz v0, :cond_16

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_16

    .line 3133
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_13

    .line 3134
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_18

    .line 3135
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3136
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3137
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3138
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 3139
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3150
    .end local v6    # "width":I
    :cond_13
    :goto_7
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 3151
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 3153
    :cond_15
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 3156
    :cond_16
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 3157
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 3129
    .end local v0    # "canOverscroll":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    .line 3141
    .restart local v0    # "canOverscroll":Z
    :cond_18
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_13

    .line 3142
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 3143
    .restart local v6    # "width":I
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 3144
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3145
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 3146
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 3163
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    .end local v6    # "width":I
    :pswitch_3
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_19

    .line 3164
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 3165
    :cond_19
    iget v7, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 3166
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 3030
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 918
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 919
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 920
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 925
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initGoToTOP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3259
    const-string v0, "ScrollView"

    const-string v1, " init GTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 3261
    iget v0, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3263
    :cond_0
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3264
    iput v2, p0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    .line 3265
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShowGTPAtFirstTime:Z

    .line 3266
    iput v2, p0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3267
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3268
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3269
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3271
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 930
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 934
    :goto_0
    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 433
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 434
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 435
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 436
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 437
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 438
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 439
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 441
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 442
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 443
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10809bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 444
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsFirstScrollview:Z

    .line 445
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 938
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 940
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 2074
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3250
    sget v1, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 3254
    :cond_0
    :goto_0
    return v0

    .line 3251
    :cond_1
    sget v1, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-eqz v1, :cond_0

    .line 3252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2633
    if-ne p0, p1, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return v1

    .line 2637
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2638
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2083
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2085
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1542
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1543
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1547
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1548
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1549
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1550
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1551
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1554
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playQCBtnFadeIn()V
    .locals 2

    .prologue
    .line 3518
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3521
    :goto_0
    return-void

    .line 3519
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3520
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3519
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3536
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3539
    :goto_0
    return-void

    .line 3537
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3538
    iget-object v0, p0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1979
    const/4 v3, 0x1

    .line 1981
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1982
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1983
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1984
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1986
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1987
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1988
    move-object v5, p0

    .line 1991
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1992
    const/4 v3, 0x0

    .line 1998
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2000
    :cond_1
    return v3

    .line 1984
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1994
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1995
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1994
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2337
    if-eqz p1, :cond_0

    .line 2338
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2341
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2343
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2345
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 2346
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2349
    .end local v0    # "scrollDelta":I
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2360
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2361
    .local v0, "delta":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 2364
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2365
    if-nez p2, :cond_0

    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v3, :cond_3

    .line 2366
    :cond_0
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2372
    :cond_1
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_2
    move v1, v2

    .line 2361
    goto :goto_0

    .line 2368
    .restart local v1    # "scroll":Z
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    .prologue
    .line 856
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private semIsTalkBackIsRunning()Z
    .locals 5

    .prologue
    .line 844
    const/4 v2, 0x0

    .line 845
    .local v2, "isRunning":Z
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 846
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 847
    iget-object v3, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 852
    .end local v1    # "enabledServices":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 849
    .restart local v1    # "enabledServices":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private semPlayGotoToFadeIn()V
    .locals 4

    .prologue
    .line 3529
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3532
    :goto_0
    return-void

    .line 3530
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3531
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3524
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3527
    :goto_0
    return-void

    .line 3525
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3526
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private semSetupGoToTop(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 3274
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v14, :cond_0

    .line 3352
    :goto_0
    return-void

    .line 3275
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3276
    const-string v14, "ScrollView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " setup GOTOTOP = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", fade out = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_c

    .line 3280
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_b

    const/16 p1, 0x0

    .line 3287
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    if-nez v14, :cond_2

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3288
    :cond_2
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3290
    :cond_3
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    .line 3292
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 3293
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 3294
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    .line 3295
    .local v8, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v5, v14, v15

    .line 3296
    .local v5, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v5, 0x2

    add-int v4, v14, v15

    .line 3298
    .local v4, "centerX":I
    const/4 v12, 0x0

    .line 3299
    .local v12, "paddingTop":I
    const/4 v11, 0x0

    .line 3301
    .local v11, "paddingBottom":I
    const/4 v3, 0x0

    .line 3302
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 3303
    .local v2, "btnH":I
    const/4 v7, 0x0

    .line 3305
    .local v7, "gapH":I
    const/4 v14, 0x2

    new-array v9, v14, [I

    fill-array-data v9, :array_0

    .line 3306
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 3307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 3310
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v9, v14

    if-gez v14, :cond_5

    .line 3311
    const/4 v14, 0x0

    aget v14, v9, v14

    neg-int v10, v14

    .line 3312
    .local v10, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v10, v14, :cond_5

    .line 3313
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v4, v14

    .line 3318
    .end local v10    # "overlappedW":I
    :cond_5
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_6

    .line 3319
    const/4 v14, 0x0

    aget v14, v9, v14

    add-int/2addr v14, v13

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v10, v14, v15

    .line 3320
    .restart local v10    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v10, v14, :cond_6

    .line 3321
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v10, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v4, v14

    .line 3325
    .end local v10    # "overlappedW":I
    :cond_6
    packed-switch p1, :pswitch_data_0

    .line 3344
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    .line 3345
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3347
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    if-eqz v14, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 3349
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 3351
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    goto/16 :goto_0

    .line 3281
    .end local v2    # "btnH":I
    .end local v3    # "btnW":I
    .end local v4    # "centerX":I
    .end local v5    # "contentW":I
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "gapH":I
    .end local v8    # "h":I
    .end local v9    # "locOnScr":[I
    .end local v11    # "paddingBottom":I
    .end local v12    # "paddingTop":I
    .end local v13    # "w":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    goto/16 :goto_1

    .line 3282
    :cond_c
    const/4 v14, -0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3283
    const/16 p1, 0x0

    .line 3284
    const-string v14, "ScrollView"

    const-string v15, " set -1 but cannot scroll"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3327
    .restart local v2    # "btnH":I
    .restart local v3    # "btnW":I
    .restart local v4    # "centerX":I
    .restart local v5    # "contentW":I
    .restart local v6    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "gapH":I
    .restart local v8    # "h":I
    .restart local v9    # "locOnScr":[I
    .restart local v11    # "paddingBottom":I
    .restart local v12    # "paddingTop":I
    .restart local v13    # "w":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mShowFadeOutGTP:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 3328
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 3333
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3334
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502bf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3335
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502c0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 3336
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v3, 0x2

    sub-int v15, v4, v15

    sub-int v16, v8, v2

    sub-int v16, v16, v11

    sub-int v16, v16, v7

    div-int/lit8 v17, v3, 0x2

    add-int v17, v17, v4

    sub-int v18, v8, v11

    sub-int v18, v18, v7

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 3305
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setupQuickController(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 3354
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 3355
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 3356
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v7, v14, v15

    .line 3357
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .line 3359
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 3360
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 3362
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3363
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mQCLocation:I

    .line 3365
    const/4 v6, 0x1

    .line 3366
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 3367
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3370
    const/4 v6, 0x0

    .line 3375
    :cond_0
    if-eqz v6, :cond_2

    .line 3376
    const/4 v14, 0x2

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    .line 3377
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 3378
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3381
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_1

    .line 3382
    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .line 3383
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v12, v14, :cond_1

    .line 3384
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .line 3389
    .end local v12    # "overlappedW":I
    :cond_1
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_2

    .line 3390
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .line 3391
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v12, v14, :cond_2

    .line 3392
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 3397
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 3433
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3434
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3436
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3437
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3439
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$7;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3450
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_2

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3451
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3453
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$8;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3464
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v15, Landroid/widget/ScrollView$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ScrollView$9;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3479
    return-void

    .line 3399
    :pswitch_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3403
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_3

    .line 3404
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080556

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3405
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080557

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3408
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3409
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3410
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    const/16 v16, 0x0

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3414
    :pswitch_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3418
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_4

    .line 3419
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080554

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 3420
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080555

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 3423
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3424
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10502be

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 3425
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 3376
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3436
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 3450
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 3177
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3179
    const/4 v1, 0x1

    .line 3182
    :goto_0
    return v1

    .line 3180
    :catch_0
    move-exception v0

    .line 3181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 454
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 463
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 481
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x82

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2012
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2013
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2015
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2017
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 2019
    .local v3, "maxJump":I
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    invoke-direct {p0, v4, v3, v9}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2020
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2021
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2022
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 2023
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2024
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_1

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_1

    if-eqz v6, :cond_1

    .line 2025
    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2026
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2028
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2054
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2061
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 2062
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 2063
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 2064
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .end local v2    # "descendantFocusability":I
    :cond_2
    move v7, v8

    .line 2066
    :cond_3
    return v7

    .line 2031
    .end local v6    # "scrollDelta":I
    :cond_4
    move v6, v3

    .line 2033
    .restart local v6    # "scrollDelta":I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 2034
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 2044
    :cond_5
    :goto_1
    if-eqz v6, :cond_3

    .line 2047
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eq v7, v11, :cond_6

    if-eqz v6, :cond_6

    .line 2048
    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2049
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2051
    :cond_6
    if-ne p1, v12, :cond_8

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 2035
    :cond_7
    if-ne p1, v12, :cond_5

    .line 2036
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_5

    .line 2037
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2038
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v9, v10

    .line 2039
    .local v5, "screenBottom":I
    sub-int v9, v1, v5

    if-ge v9, v3, :cond_5

    .line 2040
    sub-int v6, v1, v5

    goto :goto_1

    .line 2051
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_8
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v5, 0x0

    .line 2269
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2286
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 2287
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2288
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 2289
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 2291
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 2292
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2293
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 2294
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v14, :cond_4

    if-lez v6, :cond_4

    :cond_1
    move v10, v14

    .line 2298
    .local v10, "canOverscroll":Z
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v0, :cond_5

    .line 2299
    invoke-super {p0, v12, v13}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2304
    :goto_1
    iput v14, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 2306
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2308
    if-eqz v10, :cond_2

    .line 2309
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    .line 2310
    if-gez v13, :cond_6

    if-ltz v4, :cond_6

    .line 2311
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2319
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2321
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2329
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    :goto_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v5

    .line 2294
    goto :goto_0

    .line 2301
    .restart local v10    # "canOverscroll":Z
    :cond_5
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_1

    .line 2312
    :cond_6
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 2313
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 2324
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_7
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2325
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2326
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_3
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 2384
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    move v7, v8

    .line 2446
    :cond_0
    :goto_0
    return v7

    .line 2386
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 2387
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 2388
    .local v6, "screenTop":I
    add-int v5, v6, v4

    .line 2390
    .local v5, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    .line 2392
    .local v3, "fadingEdge":I
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2396
    .local v1, "childHeight":I
    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-lez v9, :cond_2

    .line 2397
    add-int/2addr v6, v3

    .line 2401
    :cond_2
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 2402
    sub-int/2addr v5, v3

    .line 2405
    :cond_3
    const/4 v7, 0x0

    .line 2407
    .local v7, "scrollYDelta":I
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    if-le v9, v5, :cond_5

    iget v9, p1, Landroid/graphics/Rect;->top:I

    if-le v9, v6, :cond_5

    .line 2412
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v4, :cond_4

    .line 2414
    iget v9, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v6

    add-int/2addr v7, v9

    .line 2421
    :goto_1
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2422
    .local v0, "bottom":I
    sub-int v2, v0, v5

    .line 2423
    .local v2, "distanceToBottom":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2425
    goto :goto_0

    .line 2417
    .end local v0    # "bottom":I
    .end local v2    # "distanceToBottom":I
    :cond_4
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    add-int/2addr v7, v9

    goto :goto_1

    .line 2425
    :cond_5
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-ge v8, v6, :cond_7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v5, :cond_7

    .line 2430
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v4, :cond_6

    .line 2432
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v5, v8

    sub-int/2addr v7, v8

    .line 2439
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0

    .line 2435
    :cond_6
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v8, v6, v8

    sub-int/2addr v7, v8

    goto :goto_2

    .line 2442
    :cond_7
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v8, :cond_0

    if-le v5, v1, :cond_0

    .line 2443
    sub-int v7, v5, v1

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2232
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2212
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 2213
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 2214
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 2227
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 2218
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2219
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2220
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2221
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 2222
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 2227
    goto :goto_0

    .line 2223
    :cond_2
    if-le v4, v2, :cond_1

    .line 2224
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 586
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchSipResizeAnimationState(Z)Z
    .locals 3
    .param p1, "isStart"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3556
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    .line 3557
    iput v1, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 3558
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 3559
    if-eqz p1, :cond_1

    .line 3560
    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3567
    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 3568
    return v2

    .line 3562
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-nez v0, :cond_0

    .line 3563
    iget-object v0, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 594
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 595
    .local v7, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 596
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 597
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 598
    .local v5, "range":I
    const/4 v4, 0x0

    .line 599
    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 602
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_0

    .line 603
    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 606
    :cond_0
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v8, :cond_2

    .line 607
    :cond_1
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 611
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 616
    :cond_2
    if-eqz v1, :cond_3

    .line 617
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 620
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    .line 622
    .local v3, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 625
    .local v0, "action":I
    if-nez v0, :cond_d

    .line 626
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 627
    const-string v8, "ScrollView"

    const-string v9, " action down"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 630
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 631
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 633
    const/4 v8, 0x1

    .line 841
    :goto_1
    return v8

    .line 620
    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 635
    .restart local v0    # "action":I
    .restart local v3    # "isPossibleTooltype":Z
    :cond_5
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 636
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 637
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 638
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 640
    :cond_6
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 641
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 644
    :cond_7
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 646
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 647
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 648
    const/4 v8, 0x1

    goto :goto_1

    .line 651
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 721
    :cond_9
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v8, :cond_a

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_b

    :cond_a
    if-lez v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v8

    if-gt v6, v8, :cond_b

    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_17

    .line 724
    :cond_b
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 725
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 728
    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 729
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 730
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 731
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 733
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 654
    :cond_d
    const/4 v8, 0x2

    if-ne v0, v8, :cond_10

    .line 655
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_f

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_f

    .line 657
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_e

    .line 658
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 659
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 660
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 662
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 664
    :cond_f
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 666
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 668
    :cond_10
    const/4 v8, 0x1

    if-eq v0, v8, :cond_11

    const/4 v8, 0x3

    if-ne v0, v8, :cond_9

    .line 669
    :cond_11
    const/4 v8, 0x3

    if-ne v0, v8, :cond_15

    .line 670
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_12

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    if-eqz v8, :cond_12

    .line 672
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 702
    :cond_12
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 704
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 705
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 708
    :cond_13
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 709
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 712
    :cond_14
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 715
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 716
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 717
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 678
    :cond_15
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_12

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 681
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 682
    new-instance v8, Landroid/widget/ScrollView$1;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 689
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 690
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 691
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    const/16 v11, 0x1f4

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 693
    :cond_16
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 694
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 695
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 696
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    .line 698
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 736
    :cond_17
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_18

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 739
    :cond_18
    packed-switch v0, :pswitch_data_0

    .line 841
    :cond_19
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 741
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_19

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 742
    const-string v8, "ScrollView"

    const-string v9, " pen down GoToTp"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 745
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v6

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 746
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 747
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 751
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_1a

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a

    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 752
    const-string v8, "ScrollView"

    const-string/jumbo v9, "pen action move GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    .line 755
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 757
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 760
    :cond_1a
    if-eqz v4, :cond_21

    .line 761
    if-ltz v7, :cond_1d

    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_1d

    .line 763
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1b

    .line 764
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 768
    :cond_1b
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 771
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 772
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 805
    :cond_1c
    :goto_3
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto/16 :goto_2

    .line 774
    :cond_1d
    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_1f

    if-gt v7, v2, :cond_1f

    .line 776
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_1e

    .line 777
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 781
    :cond_1e
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 784
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 785
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 788
    :cond_1f
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 789
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 790
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 793
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 794
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 797
    :cond_20
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_3

    .line 799
    :cond_21
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v8, :cond_1c

    .line 801
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 802
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_3

    .line 809
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/ScrollView;->semIsSupportGotoTop()Z

    move-result v8

    if-eqz v8, :cond_23

    iget v8, p0, Landroid/widget/ScrollView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_23

    .line 810
    const-string v8, "ScrollView"

    const-string/jumbo v9, "pen up false GOTOTOP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScrollUp()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 815
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 816
    iget-object v8, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v6

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 817
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    const/16 v11, 0x1f4

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 819
    :cond_22
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 820
    iget-object v8, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 822
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 826
    :cond_23
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 827
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 830
    :cond_24
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 831
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 832
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 833
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 835
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 631
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data

    .line 739
    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 746
    :array_1
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2803
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2804
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    .line 2805
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2806
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .line 2807
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2813
    .local v2, "restoreCount":I
    if-eqz v0, :cond_5

    .line 2814
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2815
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2816
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2817
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2824
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2825
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2826
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2827
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2829
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2831
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2837
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_6

    .line 2838
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 2839
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 2840
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 2841
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 2848
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2850
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2851
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2852
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2853
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2855
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2861
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2863
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 2864
    :cond_4
    return-void

    .line 2819
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2820
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2821
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2822
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto/16 :goto_0

    .line 2843
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 2844
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 2845
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 2846
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2957
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2958
    const-string v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2959
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 867
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 869
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 870
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 871
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 872
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 873
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 875
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 913
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 882
    :cond_2
    const/4 v1, 0x0

    .line 883
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 884
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 913
    goto :goto_0

    .line 886
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 887
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 892
    :goto_2
    if-eqz v1, :cond_3

    .line 893
    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 889
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_2

    .line 897
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 898
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 903
    :goto_3
    if-eqz v1, :cond_3

    .line 904
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 900
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_3

    .line 908
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_4

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2649
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2650
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2651
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2653
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2656
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2657
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2660
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2662
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1948
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1949
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1951
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1952
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1954
    if-eqz v1, :cond_0

    .line 1955
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1956
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1957
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1958
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1959
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1963
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1948
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1770
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 410
    const/4 v3, 0x0

    .line 420
    :goto_0
    return v3

    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 414
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 415
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 416
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 417
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 420
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 428
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 400
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 401
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 404
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1649
    iget v0, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPixelThresholdY:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v1, :cond_0

    .line 1651
    iput p1, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1652
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 1654
    :cond_0
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 1089
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 1090
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 1091
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 1093
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 1094
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 1095
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 1098
    const/4 v0, 0x1

    .line 1104
    :cond_0
    const/4 v1, 0x0

    .line 1105
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1107
    :goto_0
    return v1

    .line 1105
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 2238
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2243
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2246
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2249
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2250
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 2255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2257
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2260
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 2263
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2264
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2754
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2755
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2757
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2758
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2528
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2530
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2532
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2534
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2536
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2538
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    .line 2539
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2543
    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_3

    .line 2544
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2546
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1618
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1597
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1598
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1599
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1600
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1601
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1602
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1603
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1604
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 1605
    const/4 v1, 0x0

    .line 1609
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1610
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1611
    const/4 v5, 0x1

    goto :goto_0

    .line 1606
    :cond_2
    if-le v1, v3, :cond_1

    .line 1607
    move v1, v3

    goto :goto_1

    .line 1595
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1797
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1798
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1799
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1800
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1801
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1802
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1803
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1804
    return-void

    .line 1798
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1777
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1779
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1780
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1781
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1782
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1784
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1786
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1787
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1788
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1792
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 972
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 1079
    :goto_0
    return v0

    .line 979
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 980
    goto :goto_0

    .line 983
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1079
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 994
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 995
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 1000
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 1001
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 1002
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1007
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 1008
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1009
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 1010
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1011
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1012
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1013
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1014
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1015
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    .line 1016
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1018
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1019
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 1020
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 1027
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 1028
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1029
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1030
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 1038
    :cond_5
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1039
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_6

    .line 1040
    iput v11, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1042
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1044
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 1045
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1051
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v0

    :cond_7
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1052
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_8

    .line 1053
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1055
    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .line 1062
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1063
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1064
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1065
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1068
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 1071
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2562
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2563
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2565
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2566
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2568
    :cond_0
    iput-object v4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2570
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2571
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 2572
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2573
    iput-object v4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2576
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2577
    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2581
    .local v1, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v1, :cond_5

    .line 2582
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2588
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 2589
    const-string v2, "ScrollView"

    const-string v3, " onsize change changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mSizeChange:Z

    .line 2591
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 2592
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 2596
    :cond_3
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 2597
    return-void

    :cond_4
    move v0, v2

    .line 2576
    goto :goto_0

    .line 2583
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_5
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_2

    .line 2584
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 549
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 554
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 558
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 559
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 560
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 561
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 565
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 566
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_2

    .line 567
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 568
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 574
    .local v5, "heightPadding":I
    :goto_1
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 576
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 578
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 570
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "heightPadding":I
    .end local v8    # "widthPadding":I
    :cond_2
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 571
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 2794
    if-nez p4, :cond_0

    .line 2795
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2796
    const/4 v0, 0x1

    .line 2798
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 2782
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2783
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2784
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 2785
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 2786
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2787
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 2767
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2768
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2769
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1625
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1626
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1627
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1628
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1629
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1630
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1631
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1632
    if-eqz p4, :cond_0

    .line 1633
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1640
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1641
    return-void

    .line 1636
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScrollView;->mSemScrollChnages:I

    .line 1637
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2474
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2475
    const/16 p1, 0x82

    .line 2480
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2485
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2493
    :cond_1
    :goto_2
    return v1

    .line 2476
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2477
    const/16 p1, 0x21

    goto :goto_0

    .line 2480
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2489
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2493
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2929
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v1, :cond_1

    .line 2932
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2939
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2935
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2936
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2937
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2938
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2943
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2946
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2951
    :goto_0
    return-object v0

    .line 2948
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2949
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2950
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 2601
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2603
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2604
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    iget-boolean v3, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-nez v3, :cond_2

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2613
    :cond_2
    iget v3, p0, Landroid/widget/ScrollView;->mSipDelta:I

    if-le p4, p2, :cond_3

    sub-int v2, p4, p2

    :cond_3
    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ScrollView;->mSipDelta:I

    .line 2615
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v2, :cond_4

    .line 2616
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 2619
    :cond_4
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    if-eqz v2, :cond_0

    .line 2620
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2621
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2622
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2623
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 2762
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 2776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2777
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1368
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1370
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 1372
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 1373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1375
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1377
    packed-switch v21, :pswitch_data_0

    .line 1532
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1535
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 1536
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1379
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1380
    const/4 v2, 0x0

    goto :goto_1

    .line 1382
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1383
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1384
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 1385
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1393
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1402
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1403
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1404
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 1382
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1408
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1409
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1410
    const/16 v22, 0x0

    .line 1411
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1412
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1416
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1417
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 1418
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 1420
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1421
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1423
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 1424
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1425
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 1426
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1428
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1429
    if-lez v4, :cond_d

    .line 1430
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 1435
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1439
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 1440
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 1441
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .line 1442
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v23, 0x1

    .line 1447
    .local v23, "canOverscroll":Z
    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1460
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .line 1461
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 1462
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1463
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1465
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 1432
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_3

    .line 1442
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .line 1455
    .restart local v23    # "canOverscroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_c

    .line 1456
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .line 1466
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    .line 1467
    add-int v29, v26, v4

    .line 1468
    .local v29, "pulledToY":I
    if-gez v29, :cond_13

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1483
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1485
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1474
    :cond_13
    move/from16 v0, v29

    if-le v0, v8, :cond_11

    .line 1475
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1477
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->semSetupGoToTop(I)V

    .line 1478
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->semAutoHide(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 1491
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1493
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1494
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1496
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_15

    .line 1497
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1503
    :cond_14
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1504
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1498
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1500
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 1508
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1509
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1510
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1512
    :cond_16
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1513
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1517
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1518
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1519
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 1523
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1525
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_18

    .line 1526
    :cond_17
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1529
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 1377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2550
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2552
    if-nez p1, :cond_0

    .line 2554
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 2555
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2558
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1912
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1913
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1915
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1916
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1917
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1918
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1919
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1920
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1921
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1930
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1932
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1912
    goto :goto_0

    .line 1925
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1926
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1927
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x4188cccd    # 17.1f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1659
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1753
    :goto_0
    return v4

    .line 1662
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    .line 1663
    goto :goto_0

    .line 1666
    :cond_1
    const/4 v0, 0x7

    .line 1667
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_2

    .line 1668
    const-string v6, "auto_scroll_speed_level_count"

    const/16 v7, 0xf

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1669
    .local v1, "autoScrollSpeedLevelCount":I
    const/high16 v6, 0x41840000    # 16.5f

    add-int/lit8 v7, v1, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    .line 1671
    const-string v6, "auto_scroll_speed_level"

    const/16 v7, 0x8

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1674
    .end local v1    # "autoScrollSpeedLevelCount":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v4, v5

    .line 1753
    goto :goto_0

    .line 1677
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1678
    .local v3, "viewportHeight":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v6, v3

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1679
    .local v2, "targetScrollY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v6, :cond_3

    .line 1680
    invoke-virtual {p0, v5, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 1683
    goto :goto_0

    .line 1686
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1687
    .restart local v3    # "viewportHeight":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v6, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1688
    .restart local v2    # "targetScrollY":I
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v2, v6, :cond_4

    .line 1689
    invoke-virtual {p0, v5, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 1692
    goto :goto_0

    .line 1695
    .end local v2    # "targetScrollY":I
    .end local v3    # "viewportHeight":I
    :sswitch_2
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_DOWN: CASE auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1697
    const/16 v5, 0xfa0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fling(I)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1700
    goto/16 :goto_0

    .line 1702
    :sswitch_3
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_UP: CASE auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1704
    const/16 v5, -0xfa0

    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fling(I)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 1707
    goto/16 :goto_0

    .line 1709
    :sswitch_4
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_ON: auto scroll, canScroll = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1711
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float v5, v9, v5

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1712
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 1715
    goto/16 :goto_0

    .line 1717
    :sswitch_5
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_SPEED_UP: speed up, current duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1719
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    const v6, 0x3f19999a    # 0.6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 1720
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1721
    :cond_8
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 1724
    goto/16 :goto_0

    .line 1726
    :sswitch_6
    const-string v6, "ScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_AUTOSCROLL_SPEED_DOWN: CASE slow down, current duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1728
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_a

    .line 1729
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    iget v6, p0, Landroid/widget/ScrollView;->mAutoscrollDurationGap:F

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    .line 1730
    :cond_a
    iget v5, p0, Landroid/widget/ScrollView;->mAutoscrollDuration:F

    invoke-direct {p0, v5}, Landroid/widget/ScrollView;->autoScrollWithDuration(F)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    .line 1733
    goto/16 :goto_0

    .line 1735
    :sswitch_7
    const-string v6, "ScrollView"

    const-string v7, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1737
    invoke-virtual {p0, v5, v5, v5}, Landroid/widget/ScrollView;->smoothScrollToWithDuration(III)V

    goto/16 :goto_0

    :cond_c
    move v4, v5

    .line 1740
    goto/16 :goto_0

    .line 1742
    :sswitch_8
    const-string v6, "ScrollView"

    const-string v7, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v6, :cond_e

    .line 1744
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1745
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1747
    :cond_d
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mLinear:Z

    .line 1748
    iget-object v5, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_e
    move v4, v5

    .line 1751
    goto/16 :goto_0

    .line 1674
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2451
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2452
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2457
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2458
    return-void

    .line 2455
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2500
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2503
    iget-boolean v4, p0, Landroid/widget/ScrollView;->mSipResizeAnimationRunning:Z

    if-eqz v4, :cond_1

    .line 2504
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 2505
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 2506
    .local v2, "screenTop":I
    add-int v4, v0, v2

    iget v5, p0, Landroid/widget/ScrollView;->mSipDelta:I

    add-int v1, v4, v5

    .line 2508
    .local v1, "screenBottom":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_0

    .line 2509
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 2510
    iget-object v4, p0, Landroid/widget/ScrollView;->mRequestedChildRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2517
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :goto_0
    return v3

    .line 2513
    .restart local v0    # "height":I
    .restart local v1    # "screenBottom":I
    .restart local v2    # "screenTop":I
    :cond_0
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mCanScroll:Z

    .line 2517
    .end local v0    # "height":I
    .end local v1    # "screenBottom":I
    .end local v2    # "screenTop":I
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 951
    if-eqz p1, :cond_0

    .line 952
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 954
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 955
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2523
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2524
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2716
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2717
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2718
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2719
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2720
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2721
    :cond_0
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2722
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    .line 2724
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2727
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method semAutoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 3652
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    .line 3657
    :goto_0
    return-void

    .line 3654
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3655
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/ScrollView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public semEnableGoToTop(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v4, 0x14d

    const/4 v2, 0x2

    .line 3590
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSemFollow2016A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3591
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSemEnableGoToTop:Z

    .line 3593
    if-eqz p1, :cond_1

    .line 3594
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3598
    :goto_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3599
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3600
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3602
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$10;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$10;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3613
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3614
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3615
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3617
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$11;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$11;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3628
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/ScrollView$12;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$12;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3650
    :cond_0
    return-void

    .line 3596
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 3598
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 3613
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 524
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 525
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 526
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 528
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 1139
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 1140
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 1131
    add-int/lit8 v0, p1, 0x17

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 1132
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 288
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2731
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2732
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2733
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2734
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2735
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2741
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2742
    return-void

    .line 2738
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2739
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 543
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 356
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 357
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showEdgeEffectIfNecessary(IF)V
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "multiplicator"    # F

    .prologue
    const/4 v0, 0x1

    .line 1563
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 1564
    .local v3, "overscrollMode":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 1565
    .local v4, "range":I
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_4

    if-lez v4, :cond_4

    .line 1568
    .local v0, "canOverscroll":Z
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1569
    .local v2, "oldScrollY":I
    add-int v1, v2, p1

    .line 1571
    .local v1, "newScrollY":I
    if-eqz v0, :cond_3

    .line 1572
    if-gez v1, :cond_5

    .line 1573
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the TOP!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1575
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1576
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1585
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1587
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1590
    :cond_3
    return-void

    .line 1565
    .end local v0    # "canOverscroll":Z
    .end local v1    # "newScrollY":I
    .end local v2    # "oldScrollY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1578
    .restart local v0    # "canOverscroll":Z
    .restart local v1    # "newScrollY":I
    .restart local v2    # "oldScrollY":I
    :cond_5
    if-le v1, v4, :cond_1

    .line 1579
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the BOTTOM!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1581
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1582
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 2113
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2117
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 2118
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 2119
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 2120
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2121
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2122
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2123
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 2125
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 2126
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2137
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 2128
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2129
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2130
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 2131
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 2132
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2135
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2153
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2180
    :goto_0
    return-void

    .line 2157
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v8, v0, v4

    .line 2158
    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 2159
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v7, v0, v1

    .line 2160
    .local v7, "height":I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2161
    .local v6, "bottom":I
    const/4 v0, 0x0

    sub-int v1, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2162
    .local v10, "maxY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2163
    .local v2, "scrollY":I
    const/4 v0, 0x0

    add-int v1, v2, p2

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 2165
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLinear:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/ScrollView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2166
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 2167
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2179
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 2165
    .restart local v2    # "scrollY":I
    .restart local v6    # "bottom":I
    .restart local v7    # "height":I
    .restart local v10    # "maxY":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2169
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2170
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2171
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2172
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2176
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_2
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2190
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2191
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 2203
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 2204
    return-void
.end method

.method public twSetSmoothScrollEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3579
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->twSetSmoothScrollEnable(Z)V

    .line 3580
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 339
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2749
    iget-object v0, p0, Landroid/widget/ScrollView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
