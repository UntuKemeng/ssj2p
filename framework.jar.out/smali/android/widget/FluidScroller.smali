.class Landroid/widget/FluidScroller;
.super Ljava/lang/Object;
.source "FluidScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x0

.field private static final DURATION_FADE_IN:I = 0xa7

.field private static final DURATION_FADE_OUT:I

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x9c4L

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FluidScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EFFECT_STATE_CLOSE:I

.field private final EFFECT_STATE_OPEN:I

.field private mAdditionalTouchArea:F

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

.field private mFastScrollEffectText:Ljava/lang/String;

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa7

    :goto_0
    sput v0, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FluidScroller;->TAP_TIMEOUT:J

    .line 1836
    new-instance v0, Landroid/widget/FluidScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->LEFT:Landroid/util/Property;

    .line 1852
    new-instance v0, Landroid/widget/FluidScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->TOP:Landroid/util/Property;

    .line 1868
    new-instance v0, Landroid/widget/FluidScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->RIGHT:Landroid/util/Property;

    .line 1884
    new-instance v0, Landroid/widget/FluidScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FluidScroller;->BOTTOM:Landroid/util/Property;

    return-void

    .line 64
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 108
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 123
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    .line 176
    iput v7, p0, Landroid/widget/FluidScroller;->mCurrentSection:I

    .line 179
    iput v7, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    .line 231
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 239
    iput v7, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    .line 240
    iput v6, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 242
    iput v2, p0, Landroid/widget/FluidScroller;->EFFECT_STATE_CLOSE:I

    .line 243
    iput v1, p0, Landroid/widget/FluidScroller;->EFFECT_STATE_OPEN:I

    .line 244
    iput v2, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 248
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 250
    iput v6, p0, Landroid/widget/FluidScroller;->mAdditionalTouchArea:F

    .line 255
    new-instance v3, Landroid/widget/FluidScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$1;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 265
    new-instance v3, Landroid/widget/FluidScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/FluidScroller$2;-><init>(Landroid/widget/FluidScroller;)V

    iput-object v3, p0, Landroid/widget/FluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 273
    iput-object p1, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    .line 274
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    .line 275
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    .line 277
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    .line 278
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mScaledTouchSlop:I

    .line 279
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 281
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 282
    iput v1, p0, Landroid/widget/FluidScroller;->mState:I

    .line 283
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mMatchDragPosition:Z

    .line 286
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 287
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 289
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 291
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 292
    new-instance v1, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    .line 293
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 294
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 295
    invoke-virtual {p0, p2}, Landroid/widget/FluidScroller;->setStyle(I)V

    .line 297
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    .line 298
    .local v0, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 299
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 301
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050252

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 307
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050253

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 308
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10502d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/FluidScroller;->mAdditionalTouchArea:F

    .line 310
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 315
    :goto_1
    invoke-direct {p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 316
    iget v1, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    iget v2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/widget/FluidScroller;->updateLongList(II)V

    .line 317
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FluidScroller;->setScrollbarPosition(I)V

    .line 318
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 319
    return-void

    .end local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    move v1, v2

    .line 283
    goto/16 :goto_0

    .line 313
    .restart local v0    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_1
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/FluidScroller;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FluidScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FluidScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/FluidScroller;

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FluidScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/FluidScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1829
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1900
    sget-object v4, Landroid/widget/FluidScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1901
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1902
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1903
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FluidScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1904
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1822
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 676
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 677
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 678
    return-void

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1515
    const-string v0, "FluidScroller"

    const-string v1, "beginDrag() !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1518
    iget-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    .line 1519
    invoke-direct {p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 1523
    :cond_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1524
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1527
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelFling()V

    .line 1528
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1529
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1491
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1493
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1494
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1495
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1503
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1504
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 612
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 614
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 615
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 617
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 618
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 622
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 624
    return-object v1
.end method

.method private getColorWithAlpha(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1908
    const/4 v3, 0x0

    .line 1909
    .local v3, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1910
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1911
    .local v4, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1912
    .local v2, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1913
    .local v1, "b":I
    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 1915
    return v3
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1398
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1399
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1400
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->getSectionsFromIndexer()V

    .line 1403
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_4

    .line 1405
    :cond_2
    const/4 v12, 0x0

    .line 1483
    :cond_3
    :goto_0
    return v12

    .line 1408
    :cond_4
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1410
    .local v5, "hasSections":Z
    :goto_1
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 1411
    :cond_5
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1413
    const/4 v12, 0x0

    goto :goto_0

    .line 1408
    .end local v5    # "hasSections":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1415
    .restart local v5    # "hasSections":Z
    :cond_7
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    goto :goto_0

    .line 1420
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1421
    if-gez p1, :cond_9

    .line 1422
    const/4 v12, 0x0

    goto :goto_0

    .line 1424
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1429
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1430
    :cond_a
    const/4 v6, 0x0

    .line 1436
    .local v6, "incrementalPos":F
    :goto_2
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1437
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1438
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1440
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1442
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1443
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1447
    .local v9, "nextSectionPos":I
    :goto_3
    sub-int v11, v9, v16

    .line 1454
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_4
    if-nez v11, :cond_e

    .line 1455
    const/4 v10, 0x0

    .line 1461
    .local v10, "posWithinSection":F
    :goto_5
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1466
    .local v12, "result":F
    if-lez p1, :cond_3

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1468
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    .line 1471
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1472
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1473
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1478
    .local v4, "currentVisibleSize":I
    :goto_6
    if-lez v4, :cond_3

    if-lez v8, :cond_3

    .line 1479
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v12, v12, v17

    goto/16 :goto_0

    .line 1432
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v6    # "incrementalPos":F
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    .restart local v6    # "incrementalPos":F
    goto/16 :goto_2

    .line 1445
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_3

    .line 1449
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_4

    .line 1457
    :cond_e
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v10, v17, v18

    .restart local v10    # "posWithinSection":F
    goto/16 :goto_5

    .line 1475
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1476
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .restart local v4    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 1381
    iget v1, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_0

    .line 1385
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/widget/FluidScroller;->mThumbOffset:F

    sub-float v1, p1, v1

    iget v2, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1078
    iput-object v3, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1080
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1081
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1082
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FluidScroller;->mHeaderCount:I

    .line 1083
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1086
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 1087
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 1089
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 1090
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1091
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1092
    iget-object v2, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    .line 1102
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    .line 1094
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 1095
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1096
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1097
    iget-object v2, p0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 1099
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1100
    iput-object v3, p0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1803
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1804
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1806
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1807
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1808
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1809
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1806
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1811
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1815
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1772
    invoke-direct {p0, p1}, Landroid/widget/FluidScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FluidScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1776
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1777
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/FluidScroller;->mAdditionalTouchArea:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1777
    goto :goto_0

    .line 1779
    :cond_2
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/FluidScroller;->mAdditionalTouchArea:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1784
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1785
    .local v1, "offset":F
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1786
    .local v2, "top":F
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1788
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 858
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 859
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 860
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 867
    iget-object v10, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 868
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 869
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 870
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 871
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 872
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 873
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 875
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 879
    iget v13, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 880
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 881
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 888
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 889
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 890
    .local v3, "left":I
    add-int v6, v3, v11

    .line 891
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 892
    return-void

    .line 883
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 884
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 885
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v8

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 791
    if-nez p2, :cond_0

    .line 792
    const/4 v9, 0x0

    .line 793
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 794
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 801
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 802
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 803
    .local v6, "containerWidth":I
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 804
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v6, v9

    sub-int v17, v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 805
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 806
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 808
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, Landroid/view/View;->measure(II)V

    .line 811
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 812
    .local v5, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 813
    .local v14, "width":I
    div-int/lit8 v16, v5, 0xa

    add-int v16, v16, v11

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 814
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 815
    .local v3, "bottom":I
    sub-int v16, v6, v14

    div-int/lit8 v16, v16, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v16, v17

    .line 816
    .local v8, "left":I
    add-int v12, v8, v14

    .line 817
    .local v12, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 818
    return-void

    .line 796
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerHeight":I
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 797
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 798
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 691
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 692
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 693
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 694
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 696
    iget v1, p0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 697
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FluidScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FluidScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 719
    sget-boolean v16, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v16, :cond_3

    .line 720
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 721
    if-nez p2, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 723
    .local v9, "marginRight":I
    const/4 v8, 0x0

    .line 738
    .local v8, "marginLeft":I
    :goto_0
    const/4 v10, 0x0

    .line 751
    .local v10, "marginTop":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 752
    .local v4, "container":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 754
    .local v5, "containerWidth":I
    if-nez p2, :cond_5

    .line 755
    move v11, v5

    .line 762
    .local v11, "maxWidth":I
    :goto_2
    const/16 v16, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 763
    .local v1, "adjMaxHeight":I
    const/16 v16, 0x0

    sub-int v17, v11, v8

    sub-int v17, v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 764
    .local v2, "adjMaxWidth":I
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 765
    .local v15, "widthMeasureSpec":I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v6

    .line 767
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v6}, Landroid/view/View;->measure(II)V

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 773
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 774
    if-nez p2, :cond_7

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    :goto_3
    sub-int v12, v16, v9

    .line 775
    .local v12, "right":I
    sub-int v7, v12, v14

    .line 782
    .local v7, "left":I
    :goto_4
    move v13, v10

    .line 783
    .local v13, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v3, v13, v16

    .line 784
    .local v3, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 785
    return-void

    .line 725
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "adjMaxWidth":I
    .end local v3    # "bottom":I
    .end local v4    # "container":Landroid/graphics/Rect;
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxWidth":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 726
    .restart local v9    # "marginRight":I
    const/4 v8, 0x0

    .restart local v8    # "marginLeft":I
    goto :goto_0

    .line 729
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_1
    if-nez p2, :cond_2

    .line 730
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/FluidScroller;->mThumbMarginEnd:I

    .line 731
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 733
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/FluidScroller;->mPreviewMarginEnd:I

    .line 734
    .restart local v8    # "marginLeft":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_0

    .line 740
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    :cond_3
    if-nez p3, :cond_4

    .line 741
    const/4 v8, 0x0

    .line 742
    .restart local v8    # "marginLeft":I
    const/4 v10, 0x0

    .line 743
    .restart local v10    # "marginTop":I
    const/4 v9, 0x0

    .restart local v9    # "marginRight":I
    goto :goto_1

    .line 745
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    :cond_4
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 746
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 747
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto/16 :goto_1

    .line 756
    .restart local v4    # "container":Landroid/graphics/Rect;
    .restart local v5    # "containerWidth":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    .restart local v11    # "maxWidth":I
    goto/16 :goto_2

    .line 759
    .end local v11    # "maxWidth":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v11, v5, v16

    .restart local v11    # "maxWidth":I
    goto/16 :goto_2

    .line 774
    .restart local v1    # "adjMaxHeight":I
    .restart local v2    # "adjMaxWidth":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "width":I
    .restart local v15    # "widthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v16

    goto :goto_3

    .line 777
    :cond_8
    if-nez p2, :cond_9

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    :goto_5
    add-int v7, v16, v8

    .line 778
    .restart local v7    # "left":I
    add-int v12, v7, v14

    .restart local v12    # "right":I
    goto :goto_4

    .line 777
    .end local v7    # "left":I
    .end local v12    # "right":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v16

    goto :goto_5
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 496
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 509
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 510
    return-void

    .line 499
    :cond_1
    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 500
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 501
    :cond_2
    if-eqz p1, :cond_0

    .line 502
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 503
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 506
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1045
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1046
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 945
    iget v1, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 946
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 947
    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 948
    return-void

    .line 945
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    .prologue
    .line 1113
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 1116
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 1117
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 1119
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    if-lez v16, :cond_b

    .line 1120
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v16, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1122
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 1123
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 1124
    .local v20, "targetIndex":I
    move/from16 v17, v21

    .line 1132
    .local v17, "sectionIndex":I
    move v9, v4

    .line 1133
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 1134
    .local v13, "prevIndex":I
    move/from16 v15, v21

    .line 1135
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    .line 1138
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1143
    :cond_0
    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 1145
    :cond_1
    if-lez v21, :cond_2

    .line 1146
    add-int/lit8 v21, v21, -0x1

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 1148
    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    .line 1149
    move/from16 v15, v21

    .line 1150
    move/from16 v17, v21

    .line 1166
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    .line 1167
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_5

    .line 1169
    add-int/lit8 v10, v10, 0x1

    .line 1170
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1117
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 1152
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v16    # "sectionCount":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    .line 1155
    const/16 v17, 0x0

    .line 1156
    goto :goto_1

    .line 1177
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1178
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1179
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1180
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_8

    .line 1181
    move/from16 v20, v13

    .line 1188
    :goto_4
    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1191
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1192
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1216
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FluidScroller;->mCurrentSection:I

    .line 1218
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/FluidScroller;->transitionPreviewLayout(I)Z

    move-result v7

    .line 1219
    .local v7, "hasPreview":Z
    const-string v22, "FluidScroller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", position = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-boolean v22, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v22, :cond_6

    .line 1221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v7, :cond_e

    .line 1222
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->transitionToDragging()V

    .line 1227
    :cond_6
    :goto_6
    return-void

    .line 1179
    .end local v7    # "hasPreview":Z
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    const/high16 v22, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v19, v22, v23

    goto/16 :goto_3

    .line 1183
    .restart local v19    # "snapThreshold":F
    :cond_8
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    sub-float v23, v11, v14

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_4

    .line 1195
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_5

    .line 1198
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1201
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v4, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1203
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 1204
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1205
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1213
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    .line 1207
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1210
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_7

    .line 1223
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v7, :cond_6

    .line 1224
    invoke-direct/range {p0 .. p0}, Landroid/widget/FluidScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 917
    iget-object v0, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 919
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 920
    const/4 p1, 0x1

    .line 923
    :cond_0
    iget v0, p0, Landroid/widget/FluidScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 942
    :goto_0
    return-void

    .line 927
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 939
    :goto_1
    iput p1, p0, Landroid/widget/FluidScroller;->mState:I

    .line 941
    invoke-direct {p0}, Landroid/widget/FluidScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 929
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    goto :goto_1

    .line 932
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToVisible()V

    goto :goto_1

    .line 935
    :pswitch_2
    iget v0, p0, Landroid/widget/FluidScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->transitionPreviewLayout(I)Z

    goto :goto_1

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 21
    .param p1, "position"    # F

    .prologue
    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1326
    .local v2, "container":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1327
    .local v16, "top":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1329
    .local v1, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1330
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1331
    .local v14, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1332
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1333
    .local v3, "max":F
    move v7, v5

    .line 1334
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1335
    .local v13, "range":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mThumbRange:F

    move/from16 v18, v0

    mul-float v18, v18, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mThumbOffset:F

    move/from16 v19, v0

    add-float v15, v18, v19

    .line 1336
    .local v15, "thumbMiddle":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    sub-float v19, v15, v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1339
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_1

    .line 1340
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1345
    .local v9, "previewImage":Landroid/view/View;
    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1348
    .local v8, "previewHalfHeight":F
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_2

    .line 1349
    move v11, v15

    .line 1366
    .local v11, "previewPos":F
    :goto_1
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1367
    .local v6, "minP":F
    int-to-float v0, v1

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1368
    .local v4, "maxP":F
    invoke-static {v11, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    .line 1369
    .local v10, "previewMiddle":F
    sub-float v12, v10, v8

    .line 1370
    .local v12, "previewTop":F
    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1372
    sget-boolean v18, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v18, :cond_0

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1376
    :cond_0
    return-void

    .line 1342
    .end local v4    # "maxP":F
    .end local v6    # "minP":F
    .end local v8    # "previewHalfHeight":F
    .end local v9    # "previewImage":Landroid/view/View;
    .end local v10    # "previewMiddle":F
    .end local v11    # "previewPos":F
    .end local v12    # "previewTop":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    .restart local v9    # "previewImage":Landroid/view/View;
    goto :goto_0

    .line 1351
    .restart local v8    # "previewHalfHeight":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1360
    const/4 v11, 0x0

    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1353
    .end local v11    # "previewPos":F
    :pswitch_0
    move v11, v15

    .line 1354
    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1356
    .end local v11    # "previewPos":F
    :pswitch_1
    sub-float v11, v15, v8

    .line 1357
    .restart local v11    # "previewPos":F
    goto :goto_1

    .line 1351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1511
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FluidScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    .line 1512
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1238
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FluidScroller;->mSections:[Ljava/lang/Object;

    .line 1239
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1240
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1241
    aget-object v12, v13, p1

    .line 1242
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1243
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1246
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    sget-boolean v20, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v20, :cond_5

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1248
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    .line 1251
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FluidScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1252
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1253
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1260
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1270
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1271
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/FluidScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1272
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1275
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1276
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1277
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1278
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1279
    invoke-static {v7, v4}, Landroid/widget/FluidScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1280
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1282
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1284
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1288
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1293
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1294
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1295
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1296
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1297
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1303
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1304
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1305
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1306
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/FluidScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1307
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1309
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual/range {v20 .. v21}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1315
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v7    # "preview":Landroid/view/View;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :goto_2
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    const/16 v20, 0x1

    :goto_3
    return v20

    .line 1255
    .restart local v4    # "bounds":Landroid/graphics/Rect;
    .restart local v7    # "preview":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1256
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1299
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1312
    .end local v4    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v7    # "preview":Landroid/view/View;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    .line 1313
    const-string v20, "FluidScroller"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "transitionPreviewLayout() sectionIndex = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", mFastScrollEffectText = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1315
    :cond_6
    const/16 v20, 0x0

    goto :goto_3
.end method

.method private transitionToDragging()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1024
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "transitionToDragging()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 1026
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1030
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1034
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1035
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1036
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1037
    iget-object v1, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1038
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 1041
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    :cond_1
    return-void
.end method

.method private transitionToHidden()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 954
    const-string v2, "FluidScroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToHidden() mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/FluidScroller;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v2, v8, :cond_1

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 960
    :goto_0
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_2

    .line 961
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 962
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/FluidScroller;->mCurrentSection:I

    .line 963
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v8

    iget-object v4, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v10

    const/4 v4, 0x4

    iget-object v5, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v9, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 969
    .local v0, "fadeOut":Landroid/animation/Animator;
    :goto_1
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 970
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 982
    :goto_2
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 984
    .local v1, "offset":F
    :goto_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 985
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 986
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_0

    .line 987
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 989
    :cond_0
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 990
    return-void

    .line 957
    .end local v0    # "fadeOut":Landroid/animation/Animator;
    .end local v1    # "offset":F
    :cond_1
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v7}, Landroid/widget/AbsListView;->semAutoHide(I)V

    goto :goto_0

    .line 966
    :cond_2
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v9, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "fadeOut":Landroid/animation/Animator;
    goto :goto_1

    .line 973
    :cond_3
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_4

    .line 974
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v8

    iget-object v4, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v4, v3, v10

    const/4 v4, 0x4

    iget-object v5, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v9, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_2

    .line 977
    :cond_4
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v7

    invoke-static {v2, v9, v3}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    goto/16 :goto_2

    .line 982
    :cond_5
    iget-object v2, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_3
.end method

.method private transitionToVisible()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 996
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "transitionToVisible()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 998
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1001
    :cond_0
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v7}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 1003
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0xa7

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1005
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/widget/FluidScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    sget v3, Landroid/widget/FluidScroller;->DURATION_FADE_OUT:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1009
    .local v1, "fadeOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1010
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_1

    .line 1011
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1012
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1013
    iput-boolean v6, p0, Landroid/widget/FluidScroller;->mShowingPreview:Z

    .line 1017
    :goto_0
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1018
    return-void

    .line 1015
    :cond_1
    iget-object v2, p0, Landroid/widget/FluidScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private updateAppearance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 322
    const/4 v2, 0x0

    .line 325
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    :cond_0
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 333
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Landroid/widget/FluidScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 334
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    :cond_1
    iget v3, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mWidth:I

    .line 341
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 342
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010433

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    .line 344
    sget-boolean v3, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v3, :cond_5

    .line 345
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 346
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 348
    iget v3, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 349
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 350
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 353
    :cond_2
    iget-object v3, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 355
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 358
    :cond_3
    iget v3, p0, Landroid/widget/FluidScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 359
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 360
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 363
    :cond_4
    iget v3, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 364
    .local v1, "textMinSize":I
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 365
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 366
    iget-object v3, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 367
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 368
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 369
    iget-object v3, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 375
    .end local v1    # "textMinSize":I
    :goto_0
    iget-object v3, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Landroid/widget/FluidScroller;->mOrientation:I

    .line 377
    invoke-direct {p0}, Landroid/widget/FluidScroller;->refreshDrawablePressedState()V

    .line 378
    return-void

    .line 371
    :cond_5
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v4, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v4, v5}, Landroid/widget/FluidScroller;->getColorWithAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setColor(I)V

    .line 372
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106017f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextColor(I)V

    .line 373
    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setListTextSize(F)V

    goto :goto_0
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 824
    iget-object v1, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    .line 825
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 827
    iget-object v0, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 828
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 829
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 830
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 831
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 833
    iget v2, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 834
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 836
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 837
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 838
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 839
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 842
    if-ne v2, v6, :cond_1

    .line 843
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->getWidth()I

    move-result v3

    .line 844
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 845
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 851
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 847
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    if-lez p1, :cond_3

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 597
    .local v0, "longList":Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-eq v2, v0, :cond_2

    .line 598
    iput-boolean v0, p0, Landroid/widget/FluidScroller;->mLongList:Z

    .line 600
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-nez v2, :cond_1

    .line 601
    iget-object v2, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 602
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "updateLongList() clearEffect !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_1
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 606
    :cond_2
    return-void

    .end local v0    # "longList":Z
    :cond_3
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 899
    iget-object v4, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 900
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 903
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 905
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 906
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 912
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/FluidScroller;->mThumbOffset:F

    .line 913
    sub-float v5, v1, v2

    iput v5, p0, Landroid/widget/FluidScroller;->mThumbRange:F

    .line 914
    return-void

    .line 908
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 909
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method getEffectState()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Landroid/widget/FluidScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/widget/FluidScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroid/widget/FluidScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1597
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v3

    .line 1601
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1602
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/widget/FluidScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1606
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1532
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return v1

    .line 1536
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1538
    :pswitch_0
    const-string v3, "FluidScroller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mState=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/FluidScroller;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FluidScroller;->isPointInsideX(F)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FluidScroller;->isPointInsideY(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1540
    :cond_2
    iget v3, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v3, v2, :cond_3

    .line 1541
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1542
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    .line 1543
    const-string v2, "FluidScroller"

    const-string/jumbo v3, "reset mState to STATE_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 1556
    goto :goto_0

    .line 1559
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    .line 1560
    invoke-direct {p0}, Landroid/widget/FluidScroller;->startPendingDrag()V

    goto :goto_0

    .line 1564
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1565
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1566
    :cond_5
    iget-wide v2, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1567
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_6

    .line 1568
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1570
    :cond_6
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1572
    iget v1, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1573
    .local v0, "pos":F
    iput v0, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1574
    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1576
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_7

    .line 1577
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v2, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    iget-object v3, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1579
    :cond_7
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-virtual {p0, p1}, Landroid/widget/FluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 1589
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 580
    iget v2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 581
    :cond_0
    iput p2, p0, Landroid/widget/FluidScroller;->mOldItemCount:I

    .line 582
    iput p1, p0, Landroid/widget/FluidScroller;->mOldChildCount:I

    .line 584
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 585
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 586
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 587
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FluidScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 590
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/FluidScroller;->updateLongList(II)V

    .line 592
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 584
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 6
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 1049
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 1055
    .local v0, "hasMoreItems":Z
    :cond_2
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v2, v5, :cond_4

    .line 1056
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    .line 1057
    iget v2, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1058
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1064
    :cond_4
    :goto_1
    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    .line 1066
    iget v2, p0, Landroid/widget/FluidScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 1067
    iput p1, p0, Landroid/widget/FluidScroller;->mFirstVisibleItem:I

    .line 1070
    iget v2, p0, Landroid/widget/FluidScroller;->mState:I

    if-eq v2, v5, :cond_0

    .line 1071
    invoke-direct {p0, v1}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1072
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_0

    .line 1060
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FluidScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FluidScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1106
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 561
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 563
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 570
    .local v0, "orientation":I
    iget v1, p0, Landroid/widget/FluidScroller;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 571
    iput v0, p0, Landroid/widget/FluidScroller;->mOrientation:I

    .line 572
    iget v1, p0, Landroid/widget/FluidScroller;->mEffectState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 573
    iput v3, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 574
    iput v3, p0, Landroid/widget/FluidScroller;->mState:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1613
    iget-object v1, p0, Landroid/widget/FluidScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1614
    .local v1, "container":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1615
    .local v5, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1617
    .local v0, "bottom":I
    iget-object v6, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1618
    .local v6, "trackImage":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v3, v7

    .line 1619
    .local v3, "min":F
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v2, v7

    .line 1621
    .local v2, "max":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1623
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1624
    const/4 v7, 0x0

    .line 1758
    :goto_0
    return v7

    .line 1627
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1758
    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1629
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/widget/FluidScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1630
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1631
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_2

    .line 1632
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1634
    :cond_2
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1635
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_3

    .line 1636
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1638
    :cond_3
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1639
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    const/4 v7, 0x1

    goto :goto_0

    .line 1647
    :pswitch_1
    iget-wide v8, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_5

    .line 1649
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1652
    .local v4, "pos":F
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1653
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1654
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1655
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_4

    .line 1656
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1658
    :cond_4
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1659
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    .end local v4    # "pos":F
    :cond_5
    iget v7, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1668
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1669
    iget-object v7, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1672
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v7, :cond_6

    .line 1673
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1674
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 1680
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1681
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1683
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1676
    :cond_6
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1677
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 1678
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    goto :goto_2

    .line 1689
    :pswitch_2
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mInitialTouchY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-wide v8, p0, Landroid/widget/FluidScroller;->mPendingDrag:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Landroid/widget/FluidScroller;->mInitialTouchY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/widget/FluidScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 1691
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_7

    .line 1692
    invoke-direct {p0}, Landroid/widget/FluidScroller;->transitionToHidden()V

    .line 1694
    :cond_7
    invoke-direct {p0}, Landroid/widget/FluidScroller;->beginDrag()V

    .line 1695
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    .line 1696
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_f

    .line 1699
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1703
    :cond_8
    :goto_3
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_9

    .line 1704
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1706
    :cond_9
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1712
    :cond_a
    iget v7, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 1714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->getPosFromMotionEvent(F)F

    move-result v4

    .line 1715
    .restart local v4    # "pos":F
    iput v4, p0, Landroid/widget/FluidScroller;->mOldThumbPosition:F

    .line 1716
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->setThumbPos(F)V

    .line 1719
    iget-boolean v7, p0, Landroid/widget/FluidScroller;->mScrollCompleted:Z

    if-eqz v7, :cond_b

    .line 1720
    invoke-direct {p0, v4}, Landroid/widget/FluidScroller;->scrollTo(F)V

    .line 1723
    :cond_b
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    .line 1724
    const-string v7, "FluidScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/FluidScroller;->mScrollY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    int-to-float v8, v5

    add-float/2addr v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 1727
    int-to-float v7, v5

    add-float/2addr v7, v3

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    .line 1731
    :cond_c
    :goto_4
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_d

    .line 1732
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget v8, p0, Landroid/widget/FluidScroller;->mScrollY:F

    iget-object v9, p0, Landroid/widget/FluidScroller;->mFastScrollEffectText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->open(FLjava/lang/String;)V

    .line 1734
    :cond_d
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1737
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1700
    .end local v4    # "pos":F
    :cond_f
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_8

    .line 1701
    iput v2, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto/16 :goto_3

    .line 1728
    .restart local v4    # "pos":F
    :cond_10
    iget v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_c

    .line 1729
    iput v2, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto :goto_4

    .line 1743
    .end local v4    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FluidScroller;->cancelPendingDrag()V

    .line 1744
    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v7, :cond_12

    .line 1745
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1746
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    .line 1747
    iget-object v7, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->close()V

    .line 1752
    :cond_11
    :goto_5
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mEffectState:I

    .line 1753
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/FluidScroller;->mScrollY:F

    goto/16 :goto_1

    .line 1748
    :cond_12
    iget v7, p0, Landroid/widget/FluidScroller;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    .line 1749
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/widget/FluidScroller;->setState(I)V

    .line 1750
    invoke-direct {p0}, Landroid/widget/FluidScroller;->postAutoHide()V

    goto :goto_5

    .line 1627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 443
    sget-boolean v0, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 450
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/widget/FluidScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 475
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 476
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mAlwaysShow:Z

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 456
    const-string v0, "FluidScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean v0, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 458
    iput-boolean p1, p0, Landroid/widget/FluidScroller;->mEnabled:Z

    .line 460
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->onStateDependencyChanged(Z)V

    .line 462
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 513
    iget v0, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 514
    iput p1, p0, Landroid/widget/FluidScroller;->mScrollBarStyle:I

    .line 516
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 518
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 528
    if-nez p1, :cond_0

    .line 529
    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    move p1, v1

    .line 533
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    if-eq v2, p1, :cond_2

    .line 534
    iput p1, p0, Landroid/widget/FluidScroller;->mScrollbarPosition:I

    .line 535
    if-eq p1, v1, :cond_4

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    .line 537
    sget-boolean v2, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    iget-boolean v4, p0, Landroid/widget/FluidScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_5

    :goto_2
    aget v0, v2, v1

    .line 539
    .local v0, "previewResId":I
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 541
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Landroid/widget/FluidScroller;->mColorPrimary:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 544
    .end local v0    # "previewResId":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FluidScroller;->updateLayout()V

    .line 546
    :cond_2
    return-void

    .line 529
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 535
    goto :goto_1

    :cond_5
    move v1, v3

    .line 538
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 381
    iget-object v4, p0, Landroid/widget/FluidScroller;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 383
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 384
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 385
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 386
    .local v2, "index":I
    packed-switch v2, :pswitch_data_0

    .line 384
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :pswitch_0
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mOverlayPosition:I

    goto :goto_1

    .line 391
    :pswitch_1
    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v8

    goto :goto_1

    .line 394
    :pswitch_2
    iget-object v4, p0, Landroid/widget/FluidScroller;->mPreviewResId:[I

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1

    .line 397
    :pswitch_3
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 400
    :pswitch_4
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 403
    :pswitch_5
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mTextAppearance:I

    goto :goto_1

    .line 406
    :pswitch_6
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/FluidScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 409
    :pswitch_7
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/FluidScroller;->mTextSize:F

    goto :goto_1

    .line 412
    :pswitch_8
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 415
    :pswitch_9
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 418
    :pswitch_a
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 421
    :pswitch_b
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 424
    :pswitch_c
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mPreviewPadding:I

    goto :goto_1

    .line 427
    :pswitch_d
    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/FluidScroller;->mThumbPosition:I

    goto :goto_1

    .line 432
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 434
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateAppearance()V

    .line 435
    return-void

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FluidScroller;->setState(I)V

    .line 525
    return-void
.end method

.method public updateLayout()V
    .locals 6

    .prologue
    .line 633
    iget-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-nez v1, :cond_2

    .line 637
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->clearEffect()V

    .line 638
    const-string v1, "FluidScroller"

    const-string/jumbo v2, "updateLayout() clearEffect !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Landroid/widget/FluidScroller;->mFastScrollEffect:Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;

    iget-object v2, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/scroll/FastScrollEffect;->setLayout(IIII)V

    .line 640
    const-string v1, "FluidScroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLayout() l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/FluidScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    .line 644
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateContainerRect()V

    .line 646
    invoke-direct {p0}, Landroid/widget/FluidScroller;->layoutThumb()V

    .line 647
    invoke-direct {p0}, Landroid/widget/FluidScroller;->layoutTrack()V

    .line 649
    invoke-direct {p0}, Landroid/widget/FluidScroller;->updateOffsetAndRange()V

    .line 651
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FluidScroller;->mUpdatingLayout:Z

    .line 652
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016B:Z

    if-eqz v1, :cond_0

    .line 653
    iget-object v0, p0, Landroid/widget/FluidScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 654
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 655
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 656
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 657
    iget-object v1, p0, Landroid/widget/FluidScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 660
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 661
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 662
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 663
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 664
    iget-object v1, p0, Landroid/widget/FluidScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FluidScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
