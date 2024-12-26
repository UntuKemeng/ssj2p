.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;,
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_DP:I = 0x19

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x4

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"

.field private static final THRESHOLD_RATIO_X:I = 0x30

.field private static final TIMEOUT_DELAY:I = 0x64


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mActivePointerId:I

.field private mBackgroundResourceId:I

.field private mChangedTheme:Z

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCShown:Z

.field private mIsSetOpenTheme:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLastHapticScrollX:I

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLastScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPixelThresholdX:I

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mUseRatioMaintainedImage:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 122
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 129
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 136
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 153
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 175
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 222
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 227
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 228
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 229
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    .line 230
    const-wide/16 v6, 0x12c

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    .line 231
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    .line 232
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 237
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 242
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 247
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 252
    const/16 v5, 0xf

    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 262
    const/16 v5, 0xf

    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 264
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mNeedsHoverScroll:Z

    .line 269
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 2381
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2562
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2563
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 2564
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 289
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 291
    sget-object v5, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 297
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 298
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11600bd

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 299
    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "themeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_theme_package_festival"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "festivalPackageName":Ljava/lang/String;
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x230

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    .line 305
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    .line 307
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    if-eqz v5, :cond_1

    .line 308
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 310
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mBackgroundResourceId:I

    .line 311
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mBackgroundResourceId:I

    const v6, 0x108072c

    if-ne v5, v6, :cond_0

    .line 312
    const v5, 0x10808c6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    const v5, 0x10808c6

    iput v5, p0, Landroid/widget/HorizontalScrollView;->mBackgroundResourceId:I

    .line 315
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    return-void

    .line 299
    .end local v1    # "festivalPackageName":Ljava/lang/String;
    .end local v3    # "themeName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 303
    .restart local v1    # "festivalPackageName":Ljava/lang/String;
    .restart local v3    # "themeName":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 305
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/widget/HorizontalScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 461
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 464
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 466
    .end local v1    # "childWidth":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2289
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2290
    :cond_0
    const/4 p0, 0x0

    .line 2295
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2292
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2293
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1751
    if-eqz p1, :cond_0

    .line 1752
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1753
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2645
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_5

    .line 2646
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2649
    .local v0, "restoreCount":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 2650
    :cond_1
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2651
    .local v1, "scrollX":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2652
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2658
    .end local v1    # "scrollX":I
    :goto_0
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v5, :cond_4

    .line 2659
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2664
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2666
    iput-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    .line 2670
    .end local v0    # "restoreCount":I
    :goto_2
    return-void

    .line 2654
    .restart local v0    # "restoreCount":I
    :cond_3
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 2655
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 2660
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v3, v6, :cond_2

    .line 2661
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2668
    .end local v0    # "restoreCount":I
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    goto :goto_2
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1494
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1495
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1504
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1506
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1507
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1508
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1509
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1510
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1512
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1518
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1521
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1523
    move-object v1, v5

    .line 1524
    move v3, v7

    .line 1507
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1526
    .restart local v7    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .line 1530
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1531
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1537
    move-object v1, v5

    goto :goto_2

    .line 1526
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 1540
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1542
    move-object v1, v5

    .line 1543
    const/4 v3, 0x1

    goto :goto_2

    .line 1544
    :cond_7
    if-eqz v6, :cond_0

    .line 1549
    move-object v1, v5

    goto :goto_2

    .line 1556
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 1463
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1464
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 1465
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1467
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1473
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1431
    const/4 v1, 0x0

    .line 1432
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1433
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1434
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1437
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2400
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 2534
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2402
    :pswitch_1
    const/4 v3, 0x0

    .line 2403
    .local v3, "offset":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 2405
    .local v5, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    .line 2406
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    .line 2408
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 2411
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 2412
    iget v7, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2420
    :goto_1
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2421
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v7, -0x1

    .line 2430
    :goto_2
    if-gez v3, :cond_5

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v7, :cond_5

    .line 2431
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2432
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2413
    :cond_1
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 2414
    iget v7, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2415
    :cond_2
    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 2416
    iget v7, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v7, v7, 0x6

    iput v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2418
    :cond_3
    iget v7, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    iput v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2423
    :cond_4
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v3, v7, 0x1

    goto :goto_2

    .line 2433
    :cond_5
    if-lez v3, :cond_6

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v7, v5, :cond_6

    .line 2434
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2435
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2438
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2439
    .local v4, "overscrollMode":I
    if-eqz v4, :cond_7

    const/4 v7, 0x1

    if-ne v4, v7, :cond_c

    if-lez v5, :cond_c

    :cond_7
    const/4 v0, 0x1

    .line 2442
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_b

    iget-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_b

    .line 2443
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    .line 2444
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    .line 2445
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 2446
    .local v2, "height":I
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2447
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2448
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2449
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2460
    .end local v2    # "height":I
    :cond_8
    :goto_4
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2461
    :cond_9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 2463
    :cond_a
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 2466
    :cond_b
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 2467
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2439
    .end local v0    # "canOverscroll":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 2451
    .restart local v0    # "canOverscroll":Z
    :cond_d
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 2452
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 2453
    .restart local v2    # "height":I
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2454
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2455
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_8

    .line 2456
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 2474
    .end local v0    # "canOverscroll":Z
    .end local v2    # "height":I
    .end local v3    # "offset":I
    .end local v4    # "overscrollMode":I
    .end local v5    # "range":I
    :pswitch_2
    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    iget-object v9, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 2477
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    neg-int v1, v7

    .line 2478
    .local v1, "distanceToMove":I
    :goto_5
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v6

    .line 2480
    .local v6, "scrollaleRange":I
    if-gez v1, :cond_e

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gtz v7, :cond_f

    :cond_e
    if-lez v1, :cond_11

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v7, v6, :cond_11

    .line 2482
    :cond_f
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 2483
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2477
    .end local v1    # "distanceToMove":I
    .end local v6    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    goto :goto_5

    .line 2486
    .restart local v1    # "distanceToMove":I
    .restart local v6    # "scrollaleRange":I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v4

    .line 2487
    .restart local v4    # "overscrollMode":I
    if-eqz v4, :cond_12

    const/4 v7, 0x1

    if-ne v4, v7, :cond_17

    if-lez v6, :cond_17

    :cond_12
    const/4 v0, 0x1

    .line 2490
    .restart local v0    # "canOverscroll":Z
    :goto_6
    if-eqz v0, :cond_16

    iget-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_16

    .line 2491
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_13

    .line 2492
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    .line 2493
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 2494
    .restart local v2    # "height":I
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2495
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2496
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 2497
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2508
    .end local v2    # "height":I
    :cond_13
    :goto_7
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 2509
    :cond_14
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 2511
    :cond_15
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 2514
    :cond_16
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 2515
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2487
    .end local v0    # "canOverscroll":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    .line 2499
    .restart local v0    # "canOverscroll":Z
    :cond_18
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_13

    .line 2500
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v2, v7, v8

    .line 2501
    .restart local v2    # "height":I
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2502
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2503
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 2504
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 2524
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v2    # "height":I
    .end local v4    # "overscrollMode":I
    .end local v6    # "scrollaleRange":I
    :pswitch_3
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v7, :cond_0

    .line 2525
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2526
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private hapticScrollTo(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 2211
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPixelThresholdX:I

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v1, :cond_1

    .line 2213
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    .line 2214
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 2216
    :cond_0
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 2217
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    .line 2219
    :cond_1
    return-void
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 683
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 684
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 685
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 691
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 696
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 374
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 375
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 376
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 377
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 379
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 380
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 381
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 382
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 383
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 384
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 385
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 706
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1730
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 1

    .prologue
    .line 2571
    const/4 v0, 0x0

    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2147
    if-ne p0, p1, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return v1

    .line 2151
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2152
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1739
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1741
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

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
    .line 1285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1287
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1288
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1292
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1293
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1294
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1295
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1296
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1299
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 713
    :cond_0
    return-void
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 1125
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1129
    :cond_0
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1131
    :cond_1
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1639
    const/4 v4, 0x1

    .line 1641
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1642
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1643
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1644
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1646
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1647
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1648
    move-object v5, p0

    .line 1651
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1652
    const/4 v4, 0x0

    .line 1658
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1660
    :cond_1
    return v4

    .line 1644
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1654
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1655
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1654
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1913
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1916
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1918
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1920
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1921
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1923
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1934
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1935
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1936
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1937
    if-eqz p2, :cond_2

    .line 1938
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 1943
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 1935
    goto :goto_0

    .line 1940
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private setupQuickController(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const v11, 0x1080557

    const v10, 0x1080556

    const v8, 0x1080555

    const v7, 0x1080554

    const/4 v9, 0x0

    .line 2575
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 2576
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    .line 2578
    .local v3, "h":I
    const/4 v2, 0x0

    .line 2579
    .local v2, "btnW":I
    const/4 v1, 0x0

    .line 2581
    .local v1, "btnH":I
    const/4 v0, 0x0

    .line 2583
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2584
    .local v4, "oldLocation":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    .line 2586
    packed-switch p1, :pswitch_data_0

    .line 2638
    :goto_0
    if-eqz v0, :cond_0

    .line 2639
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2640
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2642
    :cond_0
    return-void

    .line 2588
    :pswitch_0
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_1

    .line 2589
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2590
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2593
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2594
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2595
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    neg-int v7, v7

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2596
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    invoke-direct {v6, v9, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 2600
    :pswitch_1
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_2

    .line 2601
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2602
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2605
    :cond_2
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2606
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2607
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2608
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2611
    :pswitch_2
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_3

    .line 2612
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2613
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2616
    :cond_3
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2617
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2618
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    sub-int v7, v5, v1

    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    neg-int v8, v8

    invoke-direct {v0, v6, v7, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2619
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v5, v2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 2623
    :pswitch_3
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mQCLocation:I

    if-eq v6, v4, :cond_4

    .line 2624
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2625
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2628
    :cond_4
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2629
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 2630
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "bounds":Landroid/graphics/Rect;
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v1

    sub-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {v0, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    .line 2631
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 2586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 2538
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2540
    const/4 v1, 0x1

    .line 2543
    :goto_0
    return v1

    .line 2541
    :catch_0
    move-exception v0

    .line 2542
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HorizontalScrollView"

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

    .line 2543
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 428
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 437
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 455
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1672
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1673
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1675
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1677
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1679
    .local v3, "maxJump":I
    if-eqz v4, :cond_4

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1680
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1681
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v8}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1682
    iget-object v8, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1683
    .local v6, "scrollDelta":I
    if-nez v6, :cond_2

    .line 1722
    :cond_1
    :goto_0
    return v7

    .line 1686
    :cond_2
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1687
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1710
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1717
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1718
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1719
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestFocus()Z

    .line 1720
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setDescendantFocusability(I)V

    .line 1722
    .end local v2    # "descendantFocusability":I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 1690
    .end local v6    # "scrollDelta":I
    :cond_4
    move v6, v3

    .line 1692
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6

    .line 1693
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1704
    :cond_5
    :goto_2
    if-eqz v6, :cond_1

    .line 1707
    if-ne p1, v10, :cond_7

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1694
    :cond_6
    if-ne p1, v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 1696
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1698
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1700
    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_5

    .line 1701
    sub-int v6, v1, v5

    goto :goto_2

    .line 1707
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_7
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1826
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1806
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1807
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1808
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .line 1821
    .end local v0    # "contentWidth":I
    :goto_0
    return v0

    .line 1812
    .restart local v0    # "contentWidth":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1813
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1814
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1815
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    .line 1816
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1821
    goto :goto_0

    .line 1817
    :cond_2
    if-le v4, v2, :cond_1

    .line 1818
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1860
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1877
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1878
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1879
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1880
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1882
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 1883
    :cond_0
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1884
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v11

    .line 1885
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v5, :cond_4

    .line 1888
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1890
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1892
    if-eqz v10, :cond_2

    .line 1893
    if-gez v12, :cond_5

    if-ltz v3, :cond_5

    .line 1894
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1901
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1902
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1905
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v6

    .line 1885
    goto :goto_0

    .line 1895
    .restart local v10    # "canOverscroll":Z
    :cond_5
    if-le v12, v5, :cond_2

    if-gt v3, v5, :cond_2

    .line 1896
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1955
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    .line 2009
    :cond_0
    :goto_0
    return v5

    .line 1957
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 1958
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1959
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1961
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1964
    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 1965
    add-int/2addr v3, v1

    .line 1969
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1970
    sub-int/2addr v4, v1

    .line 1973
    :cond_3
    const/4 v5, 0x0

    .line 1975
    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    .line 1980
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    .line 1982
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1989
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1990
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1991
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1993
    goto :goto_0

    .line 1985
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    .line 1993
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    .line 1998
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 2000
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 2007
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 2003
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 905
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 580
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 581
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v1, :cond_2

    .line 582
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsQCShown:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 588
    :cond_0
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 590
    iput v5, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 591
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 623
    :goto_0
    return v1

    .line 595
    :cond_1
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 623
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 598
    :cond_3
    if-ne v0, v5, :cond_4

    .line 599
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 603
    :cond_4
    if-eq v0, v1, :cond_5

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 604
    :cond_5
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-ne v2, v5, :cond_2

    .line 606
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 607
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 610
    :cond_6
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 611
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 614
    :cond_7
    iput-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 617
    iput v6, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 618
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2251
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2252
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 2253
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2254
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2256
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2258
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2259
    neg-int v4, v0

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2260
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2261
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2262
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2264
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2266
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2268
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 2269
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2271
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2272
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2274
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2275
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2276
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2278
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2283
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v4, :cond_4

    .line 2284
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2286
    :cond_4
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2329
    const-string v0, "layout:fillViewPort"

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2330
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x11

    const/16 v6, 0x42

    .line 635
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 637
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_2

    .line 638
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 639
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 640
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 641
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 643
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_1

    invoke-virtual {v3, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 679
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v4

    .line 649
    :cond_2
    const/4 v2, 0x0

    .line 650
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 674
    :goto_1
    if-eqz v2, :cond_3

    .line 675
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->playSoundEffect(I)V

    .end local v1    # "direction":I
    :cond_3
    move v4, v2

    .line 679
    goto :goto_0

    .line 655
    .restart local v1    # "direction":I
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 656
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 660
    :goto_2
    const/16 v1, 0x11

    .line 661
    goto :goto_1

    .line 658
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_2

    .line 663
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 664
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 668
    :goto_3
    const/16 v1, 0x42

    .line 669
    goto :goto_1

    .line 666
    :cond_5
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_3

    .line 671
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_4
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_4

    .line 653
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    .line 2163
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 2165
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 2167
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2170
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 2172
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 2173
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 2176
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    .line 2177
    move-object/from16 v14, p0

    .line 2180
    :cond_0
    if-eq v14, v12, :cond_1

    .line 2181
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2184
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 2186
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .line 2170
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2181
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1608
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1609
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1611
    .local v3, "width":I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1612
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1614
    if-eqz v1, :cond_0

    .line 1615
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1616
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1617
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1618
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1619
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1623
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 1608
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1398
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 341
    .local v0, "length":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 342
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 345
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 369
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 351
    const/4 v3, 0x0

    .line 361
    :goto_0
    return v3

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 355
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 356
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 357
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 358
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 361
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 849
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 850
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 851
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 853
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 854
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 855
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 864
    :cond_0
    const/4 v1, 0x0

    .line 865
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 867
    :goto_0
    return v1

    .line 865
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1831
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1836
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1839
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1841
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1842
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
    .line 1847
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1849
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1852
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1855
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1856
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 392
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 393
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 327
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_0

    .line 328
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mBackgroundResourceId:I

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mBackgroundResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 402
    :cond_0
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_1

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 406
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 407
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1332
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1306
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1309
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1313
    .local v1, "hscroll":F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 1314
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1315
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1316
    .local v4, "range":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1317
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 1318
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    .line 1319
    const/4 v2, 0x0

    .line 1323
    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    .line 1324
    iget v5, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1325
    const/4 v5, 0x1

    goto :goto_0

    .line 1311
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_1

    .line 1320
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    .line 1321
    move v2, v4

    goto :goto_2

    .line 1304
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1423
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1424
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1425
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1426
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1427
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1428
    return-void

    .line 1423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1404
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1405
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1406
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1407
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1408
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 1409
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1410
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 1413
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1414
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1417
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 737
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 839
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 752
    :pswitch_1
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 753
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 758
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 759
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 760
    const-string v0, "HorizontalScrollView"

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

    .line 765
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .line 766
    .local v11, "x":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 767
    .local v12, "xDiff":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 768
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 769
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 770
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 771
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 772
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 778
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .line 779
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 780
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 781
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 789
    :cond_4
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 790
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_5

    .line 791
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 793
    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 795
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 796
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 803
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v1

    if-eqz v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 810
    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 811
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 812
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 817
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 818
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 819
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 823
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 827
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 828
    .restart local v10    # "pointerIndex":I
    if-ltz v10, :cond_0

    .line 831
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_1

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2077
    const/4 v9, 0x0

    .line 2078
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 2080
    .local v7, "childMargins":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 2082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 2083
    .local v8, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v7, v0, v1

    .line 2086
    .end local v8    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRightWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v6, v0, v7

    .line 2089
    .local v6, "available":I
    if-le v9, v6, :cond_4

    const/4 v5, 0x1

    .local v5, "forceLeftGravity":Z
    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    .line 2091
    invoke-virtual/range {v0 .. v5}, Landroid/widget/HorizontalScrollView;->layoutChildren(IIIIZ)V

    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2095
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2096
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2098
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2100
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2101
    const/4 v0, 0x0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    sub-int v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2103
    .local v10, "scrollRange":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v0, :cond_6

    .line 2104
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    sub-int v0, v10, v0

    :goto_1
    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2114
    :cond_2
    :goto_2
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-le v0, v10, :cond_7

    .line 2115
    iput v10, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 2122
    .end local v10    # "scrollRange":I
    :cond_3
    :goto_3
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2123
    return-void

    .line 2089
    .end local v5    # "forceLeftGravity":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 2104
    .restart local v5    # "forceLeftGravity":Z
    .restart local v10    # "scrollRange":I
    :cond_5
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    goto :goto_1

    .line 2109
    :cond_6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2110
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, v10, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_2

    .line 2116
    :cond_7
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-gez v0, :cond_3

    .line 2117
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 514
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 516
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 521
    .local v5, "widthMode":I
    if-eqz v5, :cond_0

    .line 525
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 526
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 528
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 529
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 531
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 533
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 534
    iget v6, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 535
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 537
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 542
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_2
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v6, :cond_0

    .line 543
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1344
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1345
    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1346
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1347
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1348
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 1349
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentIfNeeded()V

    .line 1350
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 1351
    if-eqz p3, :cond_0

    .line 1352
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1358
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    .line 1359
    return-void

    .line 1355
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2037
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2038
    const/16 p1, 0x42

    .line 2043
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2048
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2056
    :cond_1
    :goto_2
    return v1

    .line 2039
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2040
    const/16 p1, 0x11

    goto :goto_0

    .line 2043
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2052
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2056
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2300
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/HorizontalScrollView$SavedState;

    if-nez v1, :cond_1

    .line 2303
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2310
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2306
    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    .line 2307
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2308
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2309
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2314
    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2322
    :goto_0
    return-object v0

    .line 2319
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2320
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2321
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    :goto_1
    iput v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollOffsetFromStart:I

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2129
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2130
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mRight:I

    iget v4, p0, Landroid/widget/HorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2135
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2136
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2137
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2138
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2139
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1136
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1139
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 1141
    .local v15, "action":I
    and-int/lit16 v2, v15, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1281
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1143
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1144
    const/4 v2, 0x0

    goto :goto_1

    .line 1146
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1148
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 1149
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1157
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1162
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1163
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 1146
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1167
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1168
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 1169
    const/16 v16, 0x0

    .line 1170
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1171
    const-string v2, "HorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1175
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1176
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v3, v2, v25

    .line 1177
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_7

    .line 1178
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 1179
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_6

    .line 1180
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1182
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1183
    if-lez v3, :cond_c

    .line 1184
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v3, v2

    .line 1189
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1191
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1193
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move/from16 v19, v0

    .line 1194
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    move/from16 v20, v0

    .line 1195
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 1196
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getOverScrollMode()I

    move-result v21

    .line 1197
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_d

    if-lez v7, :cond_d

    :cond_8
    const/16 v17, 0x1

    .line 1202
    .local v17, "canOverscroll":Z
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1213
    :cond_9
    :goto_5
    if-eqz v17, :cond_0

    .line 1214
    add-int v23, v19, v3

    .line 1215
    .local v23, "pulledToX":I
    if-gez v23, :cond_f

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1228
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1186
    .end local v7    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v3, v2

    goto/16 :goto_3

    .line 1197
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 1208
    .restart local v17    # "canOverscroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_9

    .line 1209
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .line 1221
    .restart local v23    # "pulledToX":I
    :cond_f
    move/from16 v0, v23

    if-le v0, v7, :cond_a

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 1236
    .end local v3    # "deltaX":I
    .end local v7    # "range":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1238
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1239
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1241
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_10

    .line 1242
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v4, :cond_11

    .line 1243
    move/from16 v0, v18

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 1252
    :cond_10
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1254
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1245
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1247
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 1263
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1264
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1267
    :cond_12
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1269
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 1278
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 413
    if-nez p1, :cond_0

    .line 415
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mQCstate:I

    .line 419
    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1572
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1573
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    .line 1575
    .local v3, "width":I
    if-eqz v1, :cond_2

    .line 1576
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1577
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1578
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1579
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1580
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1581
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1590
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1592
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    .line 1572
    goto :goto_0

    .line 1585
    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_2
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1586
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    .line 1587
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1364
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1393
    :goto_0
    return v2

    .line 1367
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1393
    goto :goto_0

    .line 1370
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1371
    goto :goto_0

    .line 1373
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1374
    .local v1, "viewportWidth":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1375
    .local v0, "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    .line 1376
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1379
    goto :goto_0

    .line 1382
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 1383
    goto :goto_0

    .line 1385
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1386
    .restart local v1    # "viewportWidth":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1387
    .restart local v0    # "targetScrollX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    .line 1388
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1391
    goto :goto_0

    .line 1367
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2014
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2015
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2020
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2021
    return-void

    .line 2018
    :cond_0
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2063
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2066
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 717
    if-eqz p1, :cond_0

    .line 718
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 720
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 721
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 2072
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2073
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2196
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2198
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2199
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/HorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2200
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2201
    :cond_0
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2202
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    .line 2204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2207
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 492
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 493
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 495
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 899
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 900
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 879
    if-eqz p1, :cond_0

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0
    .param p1, "hoverspeed"    # I

    .prologue
    .line 891
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 892
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x60000000

    .line 2223
    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 2224
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_1

    .line 2225
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2226
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2227
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 2229
    const/4 v0, 0x0

    .line 2230
    .local v0, "IsParentThemeDeviceDefault":Z
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2231
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2232
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 2233
    const/4 v0, 0x1

    .line 2235
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_1

    .line 2236
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2237
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v6}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 2245
    .end local v0    # "IsParentThemeDeviceDefault":Z
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2246
    return-void

    .line 2242
    :cond_2
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2243
    iput-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 510
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 209
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 210
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1767
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1771
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1772
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1773
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1774
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1775
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1776
    .local v2, "maxX":I
    iget v4, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 1777
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1779
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1787
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_0

    .line 1782
    :cond_1
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1783
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1785
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1797
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1798
    return-void
.end method

.method protected twUpdateBackgroundBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mChangedTheme:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 562
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 563
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 565
    .end local v1    # "height":I
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->twUpdateBackgroundBounds()V

    goto :goto_0
.end method

.method public twUseRatioMaintainedImage()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mUseRatioMaintainedImage:Z

    .line 551
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 192
    return-void
.end method
